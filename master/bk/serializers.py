from rest_framework import serializers
from .models import *

class drop_down_serializer(serializers.ModelSerializer):
    class Meta:
        model = drop_down
        #fields = ['ename',"econtact"]
        #exclude = ['id']
        depth=1
        fields = "__all__"

class static_drop_down_serializer(serializers.ModelSerializer):
    class Meta:
        model = static_drop_down
        #fields = ['ename',"econtact"]
        #exclude = ['id']
        depth=1
        fields = "__all__"

class country_serializer(serializers.ModelSerializer):
    class Meta:
        model = country
        fields = ["id","region_name","country_name","local_currency_code", "local_currency", "gbp_average","usd_average","euro_average", "symbol","is_active"]
        #exclude = ['id']
        depth=1
        #fields = "__all__"


class position_other_pay_serializer(serializers.ModelSerializer):
    class Meta:
        model = position_other_pay
        #fields = ['ename',"econtact"]
        #exclude = ['id']
        fields = "__all__"


class monthly_baseline_serializer(serializers.ModelSerializer):
    class Meta:
        model = monthly_baseline
        fields = "__all__"
        # exclude = ['key_pair']
        # depth=1
        
class yearly_baseline_serializer(serializers.ModelSerializer):
    class Meta:
        model = yearly_baseline
        fields = "__all__"
        # exclude = ['key_pair']
        # depth=1

class yearly_baseline_serializer_custom(serializers.ModelSerializer):
    pos_type = serializers.SerializerMethodField('get_pos_type')
    currency = serializers.SerializerMethodField('get_curr')
    updated_by = serializers.SerializerMethodField('get_user')
    new_annual_amount = serializers.SerializerMethodField('get_amount')
    class Meta:
        model = yearly_baseline
        fields = "__all__"
        extra_field = ['pos_type', 'currency', 'updated_by', 'new_annual_amount']


    def get_pos_type(self, obj):
        if obj.is_active == 0:
            return 'closed'
        elif obj.issync == 1:
            return 'new'
        else:
            return None  # Or a default value
    
    def get_curr(self, obj):
        if country.objects.filter(country_name=obj.country).exists():
            cur_data = country.objects.filter(country_name=obj.country).first()
            cur_ser = country_serializer(cur_data, many=False)     
            return [cur_ser.data]
        else:
            return []
          
    def get_user(self, obj):
        ms_obj = monthly_summary.objects.filter(record_country = obj.country).order_by('-id').first()
        if ms_obj:
            return ms_obj.uploaded_by
        return ''

    def get_amount(self, obj):
        pos_obj = position.objects.filter(position_id = obj.position_id).order_by('-id').first()
        if pos_obj:
            return pos_obj.new_annual_amount
        return obj.annual_base_pay


class position_serializer(serializers.ModelSerializer):
    class Meta:
        model = position
        fields = "__all__"
        # depth=1

class position_workflow_serializer(serializers.ModelSerializer):
    class Meta:
        model = position_workflow
        fields = "__all__"
        # depth=1

class annual_summary_serializer(serializers.ModelSerializer):
    class Meta:
        model = annual_summary
        fields = "__all__"
        # depth=1

class monthly_summary_serializer(serializers.ModelSerializer):
    class Meta:
        model = monthly_summary
        fields = "__all__"
        # depth=1

class position_other_pay_serializer(serializers.ModelSerializer):
    class Meta:
        model = position_other_pay
        fields = "__all__"

class position_workflow_serializer(serializers.ModelSerializer):
    class Meta:
        model = position_workflow
        fields = "__all__"

class delta_monthly_serializer(serializers.ModelSerializer):
    updated_by = serializers.SerializerMethodField("get_updated_by")
    new_annual_amount = serializers.SerializerMethodField("get_new_amt")
    class Meta:
        model = delta_monthly
        extra_fields = ['updated_by', 'new_annual_amount']
        fields = "__all__"

    def get_updated_by(self, obj):
        get_obj = monthly_summary.objects.filter(
            record_country = obj.country, 
            record_year = obj.year,
            record_month = obj.month
        ).first()
        if get_obj:
            return get_obj.uploaded_by
        else:
            return  ""
        
    def get_new_amt(self, obj):
        get_obj = position.objects.filter( position_id = obj.position_id ).first()
        if get_obj:
            return get_obj.new_annual_amount
        else:
            return  0

        
class file_serializer(serializers.ModelSerializer):
    class Meta:
        model = file
        fields = "__all__"

        
class position_action_approvel_request_serializer(serializers.ModelSerializer):
    class Meta:
        model = position_action_approvel_request
        fields = "__all__"

