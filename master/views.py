import base64
import uuid

from django.shortcuts import render, redirect  
from django.http import JsonResponse, HttpResponse
#from .forms import DropDownForm  
from .models import *
from users.models import *
from django.db.models import F


from django.db.models import Q
from global_fun import *

import requests, json
#### test
from django.contrib import messages
from django.shortcuts import get_object_or_404

from rest_framework.decorators import api_view    
from rest_framework import serializers
from rest_framework.response import Response
from .serializers import *
from rest_framework.parsers import JSONParser
# Create your views here.  
from django.conf import settings
from django.db.models import F, Sum

from django.utils import timezone
from datetime import date
import datetime

from django.utils.dateparse import parse_datetime
from utils.helper import(
    save_activity_history, save_poistion_approval_activity_history
) 
from rest_framework.pagination import PageNumberPagination
from rest_framework import status

#DropDown Create API
@api_view(['POST'])
def create(request):
    try:
        
        request.data['Data'] = json.dumps(request.data['Data'])
        
        DropDownName = request.data['DropDownName']
        Data   = request.data['Data']
        DropDownValue = request.data['DropDownValue']
        DropDownDescription = request.data['DropDownDescription']
        Parent = request.data['Parent']
        Field1 = request.data['Field1']
        Field2 = request.data['Field2']
        Field3 = request.data['Field3']
        Field4 = request.data['Field4']
        Field5 = request.data['Field5']
        CreatedBy  = request.data['CreatedBy']
        CreateDate = request.data['CreateDate']
        CreateTime = request.data['CreateTime']
        UpdateDate = request.data['UpdateDate']
        UpdateTime = request.data['UpdateTime']
        UpdatedBy  = request.data['UpdatedBy']

        model = DropDown(DropDownName=DropDownName, Data=Data, DropDownValue=DropDownValue, DropDownDescription=DropDownDescription, Parent=Parent, Field1=Field1, Field2=Field2, Field3=Field3, Field4=Field4, Field5=Field5, CreatedBy_id=CreatedBy, CreateDate=CreateDate, CreateTime=CreateTime, UpdateDate=UpdateDate, UpdateTime=UpdateTime, UpdatedBy_id=UpdatedBy)        
        model.save()
            
        return Response({"message":"successful", "status":200,"data":[]})
        
    except Exception as e:
        return Response({"message":str(e), "status":201, "data":[]})


#DropDown All API
@api_view(["GET"])
def all(request):
    try:
        if request.query_params:
            dds = drop_down.objects.filter(**request.query_params.dict()).values("id","DropDownName","DropDownValue","DropDownDescription").order_by('-id')
        else:
            dds = drop_down.objects.all().values("id","DropDownName","DropDownValue","DropDownDescription").order_by('-id')
       
        if dds:
            serializer = drop_down_serializer(dds, many=True)
            return Response({"message": "Success","status": 200,"data":serializer.data})
        else:
            return Response({"message": "Success","status": "200","data":[]})
    except Exception as e:
        return Response({"message": str(e),"status": "201","data":[]})


#country All API
@api_view(["GET"])
def country_all(request):
    try:
        if request.query_params:
            dds = country.objects.filter(**request.query_params.dict()).values("id","region_name","country_name","local_currency_code", "local_currency", "gbp_average","usd_average","euro_average").order_by('country_name')
        else:
            dds = country.objects.all().values("id","region_name","country_name","local_currency_code","local_currency","gbp_average","usd_average","euro_average").order_by('country_name')
       
        if dds:
            serializer = country_serializer(dds, many=True)
            return Response({"message": "Success","status": 200,"data":serializer.data})
        else:
            return Response({"message": "Success","status": "200","data":[]})
    except Exception as e:
        return Response({"message": str(e),"status": "201","data":[]})


#Region All By User
#{"user_email":"azad.singh@g4s.com"}
@api_view(["POST"])
def region_all_byuser(request):
    try:
        user_email = request.data['user_email']
        if users.objects.filter(user_email=user_email).exists():
            region = users.objects.filter(user_email=user_email)[0].user_region
            if region =="All":
                if static_drop_down.objects.filter(DropDownName="region").exists():
                    #{"user_email":"azad.singh@g4s.com"}
                    regs = static_drop_down.objects.filter(DropDownName="region").annotate(user_region=F('DropDownValue')).values('user_region')                    
                    #print(regs)
                    return Response({"message": "Success","status": 200,"data":regs})
                    
                else:
                    return Response({"message": "Region not Created","status": "201","data":[]})
            else:
                if assigned_country.objects.filter(user_email=user_email).exists():
                    regs = assigned_country.objects.filter(user_email=user_email).values("user_region").distinct()
                    #print(regs)
                    return Response({"message": "Success","status": 200,"data":regs})
                    
                else:
                    return Response({"message": "Region not Assigned","status": "201","data":[]})
        else:
            return Response({"message": "User not Exist","status": "201","data":[]})
        
    except Exception as e:
        return Response({"message": str(e),"status": "201","data":[]})


#country All By User
#{"user_email":"azad.singh@g4s.com", "user_region":"Asia Pacific"}
@api_view(["POST"])
def country_all_byuser(request):
    try:
        user_email = request.data['user_email']
        user_region = request.data['user_region']
        #print("request.data", request.data)
        if user_region =="":
            return Response({"message": "Please select Region","status": "201","data":[]})
        
        user_region_arr = user_region.split(",")
        #print("user_region_arr", user_region_arr)
        if users.objects.filter(user_email=user_email).exists():
            #region = users.objects.filter(user_email=user_email)[0].user_region
            ##print("region", region)
            cont_arr = []
            if assigned_country.objects.filter(user_email=user_email, user_region__in = user_region_arr).exists():
                conts = assigned_country.objects.filter(user_email=user_email, user_region__in = user_region_arr)
                #print("conts query", conts.query)
                # #print("conts", conts)
                for cont in conts:
                    try:
                        cont_arr.append(country.objects.filter(country_name=cont.user_country)[0])
                    except:
                        pass
                #print("cont_arr",cont_arr)
                serializer = country_serializer(cont_arr, many=True)
                return Response({"message": "Success","status": 200,"data":serializer.data})
                
            else:
                return Response({"message": "Country not Assigned","status": "201","data":[]})
        else:
            return Response({"message": "User not Exist","status": "201","data":[]})
        
    except Exception as e:
        #print(str(e))
        return Response({"message": str(e),"status": "201","data":[]})



#Static DropDown All API
@api_view(["GET"])
def static_all(request):
    try:
        if request.query_params:
            dds = static_drop_down.objects.filter(**request.query_params.dict()).order_by('id')
        else:
            dds = static_drop_down.objects.all().order_by('-id')
        
        if dds:
            serializer = static_drop_down_serializer(dds, many=True)
            return Response({"message": "Success","status": 200,"data":serializer.data})
        else:
            return Response({"message": "Success","status": "200","data":[]})
    except Exception as e:
        return Response({"message": str(e),"status": "201","data":[]})

#DropDown Update API
@api_view(['POST'])
def update(request):
    try:
        fetchid = request.data['id']
        request.data['Data'] = json.dumps(request.data['Data'])
        
        dd = DropDown.objects.get(pk=fetchid)
        data = DropDownSerializer(instance=dd, data=request.data)     
        if data.is_valid():
            data.save()
            return Response({"message":"successful","status":"200","data":[]})
        else:
            return Response({"message":"ID Wrong","status":"201","data":[]})
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})


#Currency Create and Update API
@api_view(['POST'])
def country_create_update(request):
    try:
        err = []
        i=0
        for cur in request.data:
            i=i+1
            inst = country.objects.filter(country_name=cur['country_name']).first()
            if inst:
                ser = country_serializer(instance=inst, data=cur)     
                if ser.is_valid():
                    ser.save()
                    #print("update",i, inst.id)
                else:
                    
                    for field, errors in ser.errors.items():
                        for error in errors:
                            dic = {}                            
                            dic.update({"row":i, "country":cur['country_name'], "field":field, "Error":error})
                            err.append(dic)
            else:
                #print("NA", cur['country_name'])
                
                ser = country_serializer(data=cur)     
                if ser.is_valid():
                    ser.save()
                    inst = country.objects.latest('id')
                    #print("save",i, inst.id)
                else:
    
                    for field, errors in ser.errors.items():
                        for error in errors:
                            dic = {}                            
                            dic.update({"row":i, "country":cur['country_name'], "field":field, "Error":error})
                            err.append(dic)
                    
        if len(err) > 0:
            #print("err", err)
            #print("err", ser.errors)
            return Response({"message":err,"status":"201","data":[]})
        else:        
            return Response({"message":"Success","status":"200","data":[]})
    except Exception as e:

        return Response({"message":f"Backend Issue: {str(e)}","status":"202","data":[]})


#DropDown delete
@api_view(['POST'])
def delete(request):
    fetchid=request.data['id']
    try:
        fetchdata=DropDown.objects.filter(pk=fetchid).delete()        
        return Response({"message":"successful","status":"200","data":[]})        
    except Exception as e:
         return Response({"message":str(e),"status":"201","data":[]})


#position save
@api_view(['POST'])
def create_position(request):
    try:
        co = str(request.data['country'][0:3]).upper()
        is_delta = request.data['is_delta']
        
        request.data['status'] = 0
        request.data['is_vacant'] = 1
        request.data['is_active'] = 1
        request.data['is_delta'] = 0
        request.data['is_approved'] = 0

        local_curr_type = request.data['pos_local_curr']
        local_country_obj = country.objects.filter(local_currency_code = local_curr_type).first()
        if not local_country_obj:
            return Response({"message": f"Invalid cuuntry?","status":"201","data":[]}) 
        
        annual_base_pay = request.data['baseline_total']
        request.data['gbp_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.gbp_average)
        request.data['usd_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.usd_average)
        request.data['euro_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.euro_average)
        
        
        pos_ser = position_serializer(data=request.data)
        if pos_ser.is_valid():
            pos_ser.save()
            pos = position.objects.latest('id')
            pos_id = co+"_"+str(pos.id)
            pos.position_id = pos_id
            pos.save()
            
            for line in request.data['other_pay']:
                print(line)
                line['position_id'] = pos_id
                line_ser = position_other_pay_serializer(data=line)
                if line_ser.is_valid():
                    line_ser.save()
            
            work_data = {"position_id":pos_id, "approval_rule":"rule-1"}
            work_ser = position_workflow_serializer(data=work_data)
            if work_ser.is_valid():
                work_ser.save()
                work = position_workflow.objects.latest('id')

            
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            # create position history
            action_type = "created"
            respon = create_position_history(pos, action_type)
            print("respon", respon)
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            save_activity_history(None, pos)

            return Response({"message":"successful","status":"200","data":[]})        
        else:        
            return Response({"message":pos_ser.errors,"status":"201","data":[]})        
    except Exception as e:
         return Response({"message":str(e),"status":"201","data":[]})


#position update
from datetime import datetime
@api_view(['POST'])
def update_position(request):
    try:
        request.data['status'] = 0
        previous_positions = position.objects.filter(pk=request.data['id'])[0]
        pos = position.objects.filter(pk=request.data['id'])[0]
        old_pos_end_date = pos.pos_end_date
        old_emp_end_date = pos.emp_end_date

        emp_start_date = request.data['emp_start_date']
        emp_end_date = request.data['emp_end_date']
        pos_end_date = request.data['pos_end_date']
        emp_ref_no = request.data['emp_ref_no']
        
        local_curr_type = request.data['pos_local_curr']
        local_country_obj = country.objects.filter(local_currency_code = local_curr_type).first()
        if not local_country_obj:
            return Response({"message": f"Invalid country?","status":"201","data":[]}) 
        
        annual_base_pay = request.data['baseline_total']
        request.data['gbp_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.gbp_average)
        request.data['usd_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.usd_average)
        request.data['euro_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.euro_average)
        
        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        # 
        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        current_date = datetime.now()
        emp_status = 'Vacant'
        print("emp_start_date", emp_start_date)
        if emp_start_date is not None and str(emp_start_date) != "":
            emp_start_date = datetime.strptime(emp_start_date, "%Y-%m-%d")
            
            print("emp_start_date", emp_start_date, "current_date", current_date)
            if emp_start_date <= current_date:
                if emp_ref_no is not None and emp_ref_no != '':
                    emp_status = 'Assigned'
                else:
                    emp_status = 'Action required'
            else:
                emp_status = 'Offered'
        else:
            if emp_ref_no is not None and emp_ref_no != '':
                emp_status = 'Assigned'
            else:
                emp_status = 'Vacant'


        request.data['emp_status'] = emp_status
        
        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        # 
        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        pos_ser = position_serializer(pos, data=request.data)
        if pos_ser.is_valid():
            pos_ser.save()

            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            # 
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            if emp_ref_no is not None and emp_ref_no != "":
                if pos.is_vacant == 1:
                    if yearly_baseline.objects.filter(emp_ref_no = emp_ref_no).exists():
                        return Response({"message":f"Entered Employee ID {emp_ref_no} already assign to other position or already exists in baseline!","status":"201","data":[]})
                    else:
                        print("assign employee")
                        # pos.is_vacant = 0 # No
                        # pos.is_active = 1 # Yes
                        # pos.is_delta = 1 # Vacant
                        # pos.save()

                        position.objects.filter(position_id = pos.position_id).update(is_vacant = 0, is_active = 1, is_delta = 1)
                        yearly_baseline.objects.filter(position_id = pos.position_id).update(emp_ref_no = emp_ref_no, position_end_date = request.data['pos_end_date'])

                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        # create position employee history
                        action_type = "assign"
                        respon = create_position_emp_history(pos, action_type)
                        print("assign create_position_emp_history", respon)
                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                else:
                    print("emp already assigned")
            else:
                if pos.is_vacant == 0:
                    print("un-assign employee")
                    # pos.status = 1 # Approve
                    # pos.is_active = 1 # Yes
                    # pos.is_vacant = 1 # YES
                    # pos.is_delta = 0 # Vacant
                    # pos.save()

                    position.objects.filter(position_id = pos.position_id).update(is_vacant = 1, is_active = 1, is_delta = 0)
                    # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    # create position history
                    action_type = "vacant"
                    respon = create_position_history(pos, action_type)
                    print("vacant create_position_history respon", respon)
                    # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                    # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    # create position employee history
                    action_type = "un-assign"
                    respon = create_position_emp_history(pos, action_type)
                    print("un-assign create_position_emp_history respon", respon)
                    # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            # 
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            # update position end date in yearly_baseline table
            print("old_pos_end_date", old_pos_end_date, "pos_end_date", pos_end_date)
            if str(old_pos_end_date) != str(pos_end_date):

                yearly_baseline.objects.filter(position_id = pos.position_id).update(position_end_date = pos_end_date)
                if pos_end_date is not None and pos_end_date != "":
                    pos_end_date = datetime.strptime(pos_end_date, "%Y-%m-%d")
                    current_date = datetime.now()
                    if pos_end_date < current_date:
                        
                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        # create position history
                        action_type = "closed"
                        respon = create_position_history(pos, action_type)
                        print("closed create_position_history respon", respon)
                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        # create position employee history
                        # action_type = "un-assign"
                        # respon = create_position_emp_history(pos, action_type)
                        # print("create_position_emp_history respon", respon)
                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                        # marked position as inactive and vacant
                        mark_position_inactive(position_id = pos.position_id, is_delta = 3)
                        pos.status = 1 # Approve
                        pos.is_vacant = 1 # YES
                        pos.is_active = 0 # NO
                        pos.is_delta = 3 # Close
                        # Add by Sunil
                        pos.emp_ref_no = ""
                        pos.emp_start_date = ""
                        pos.emp_end_date = ""
                        pos.postion_baseline_total = ""
                        pos.pos_gross_pay = ""
                        pos.pos_net_pay = ""
                        pos.position_pos_add_cash = ""
                        pos.position_pos_bonus = ""
                        pos.pos_car_allowance_type = ""
                        pos.pos_car_allowance = ""
                        pos.pos_commision_plan = ""
                        pos.total_cost = ""
                        pos.new_annual_amount = 0
                        pos.save()
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            # 
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            if emp_end_date is not None and emp_end_date != "":
                print("in if", emp_end_date)
                emp_end_date = datetime.strptime(emp_end_date, "%Y-%m-%d")
                print("old_emp_end_date", old_emp_end_date, "emp_end_date", emp_end_date)
                if str(old_emp_end_date) != str(emp_end_date):
                    if emp_end_date < current_date:
                        
                        print("emp_end_date < current_date")
                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        # create position employee history
                        action_type = "un-assign"
                        respon = create_position_emp_history(pos, action_type)
                        print("un-assign create_position_emp_history respon", respon)
                        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                        pos.status = 1 # Approve
                        pos.is_active = 1 # YES
                        pos.is_vacant = 1 # YES
                        pos.is_delta = 0
                        # Add by Sunil
                        pos.emp_ref_no = ""
                        pos.emp_start_date = ""
                        pos.emp_end_date = ""
                        pos.postion_baseline_total = ""
                        pos.pos_gross_pay = ""
                        pos.pos_net_pay = ""
                        pos.position_pos_add_cash = ""
                        pos.position_pos_bonus = ""
                        pos.pos_car_allowance_type = ""
                        pos.pos_car_allowance = ""
                        pos.pos_commision_plan = ""
                        pos.total_cost = ""
                        pos.new_annual_amount = 0
                        pos.save()
                        
                    else:
                        print("in else emp_end_date < current_date")


            # update position other_pay details 
            updated_arr = []
            for line in request.data['other_pay']:
                try:
                    if int(line['id']) > 0:
                        updated_arr.append(line['id'])
                        line_inst = position_other_pay.objects.filter(pk=line['id']).first()
                        if line_inst:
                            line_ser = position_other_pay_serializer(instance=line_inst, data=line)
                            if line_ser.is_valid():
                                line_ser.save()
                        else:
                            line['position_id'] = pos.position_id
                            line_ser = position_other_pay_serializer(data=line)
                            if line_ser.is_valid():
                                line_ser.save()
                                new = position_other_pay.objects.latest('id').id
                                updated_arr.append(new)
                except:
                    line['position_id'] = pos.position_id
                    line_ser = position_other_pay_serializer(data=line)
                    if line_ser.is_valid():
                        line_ser.save()
                        new = position_other_pay.objects.latest('id').id
                        updated_arr.append(new)
            
            # delete other_pay entries from table 
            position_other_pay.objects.filter(position_id=pos.position_id).exclude(id__in=updated_arr).delete()
            
            new_pos = position.objects.filter(pk=request.data['id'])[0]
            save_activity_history(previous_positions, new_pos)
            return Response({"message":"successful","status":"200","data":[]})        
        else:        
            return Response({"message":pos_ser.errors,"status":"201","data":[]})        
    except Exception as e:
         return Response({"message":str(e),"status":"201","data":[]})

#{"year":"2024", "month":"1"}
from django.conf import settings

@api_view(["POST"])
def baseline_delta_bk2(request):
    try:
        json_data = request.data

        # year = json_data['year']
        # month = json_data['month']

        # if monthly_summary.objects.filter(record_year = year, record_month = month).exists():

        mydb = settings.CONNECT()
        mycursor = mydb.cursor(dictionary=True, buffered=True)
        select_query = f"""
            SELECT * 
            FROM `master_monthly_summary` AS ems 
            INNER JOIN( 
                SELECT `record_country`, MAX(`record_year`) AS max_record_year, MAX(`record_month`) AS max_record_month 
                FROM `master_monthly_summary` 
                GROUP BY `record_country` 
            ) AS max_records ON 
            ems.`record_country` = max_records.`record_country` AND 
            ems.`record_year` = max_records.`max_record_year` AND 
            ems.`record_month` = max_records.`max_record_month`
            ORDER BY ems.`record_country` ASC
        """
        mycursor.execute(select_query)
        objs = mycursor.fetchall()
        counts = mycursor.rowcount
        # mycursor.close()
        if counts > 0:
            
            month_objs = []
            for month_obj in objs:
                
                exception_role_cost = delta_monthly.objects.filter(country = month_obj['record_country'],year = month_obj['record_year'], month = month_obj['record_month'], is_recon = 0).count()
                delta_data = delta_monthly.objects.filter(country = month_obj['record_country'],year = month_obj['record_year'], month = month_obj['record_month'], is_recon = 1)
                delta_role_count = delta_data.count()
                print("delta_count", delta_role_count)
                delta_amt = 0
                if delta_role_count > 0:
                    joinerSum = delta_data.filter(position_type = 'Joiners').aggregate(joiner_sum = Sum(F('base_pay_monthly')))
                    leaverSum = delta_data.filter(position_type = 'Leavers').aggregate(leaver_sum = Sum(F('base_pay_monthly')))
                    
                    if leaverSum['leaver_sum'] == None:
                        leaverSum['leaver_sum'] = 0
                    if joinerSum['joiner_sum'] == None:
                        joinerSum['joiner_sum'] = 0
                    
                    print(joinerSum, leaverSum)
                    delta_amt = round(float(joinerSum['joiner_sum']) - float(leaverSum['leaver_sum']), 2)
                    print("month_obj", month_obj)
                
                month_obj['delta_role_count'] = delta_role_count
                month_obj['delta_annual_cost'] = delta_amt
                month_obj['exception_role_cost'] = exception_role_cost

                print("month_obj", month_obj)
                
                ### get year data            
                if annual_summary.objects.filter(record_country = month_obj['record_country']).exists():
                    year_objs = annual_summary.objects.filter(record_country = month_obj['record_country'])
                    year_json = annual_summary_serializer(year_objs, many=True)
                    year_data = json.loads(json.dumps(year_json.data))                
                    month_obj['year_data'] = year_data
                else:
                    month_obj['year_data'] = []
                #################
                
                ### get currency code
                if country.objects.filter(country_name = month_obj['record_country']).exists():
                    #cur_data = country.objects.filter(country_name = month_obj['record_country'])[0].local_currency_code
                    cur_data = country.objects.filter(country_name = month_obj['record_country'])[0]
                    cur_ser = country_serializer(cur_data, many=False)
                    cur_data = json.loads(json.dumps(cur_ser.data))                
                    month_obj['currency'] = [cur_data]
                else:
                    month_obj['currency'] = []
                #################
                
                month_objs.append(month_obj)
            
            return Response({"message": "Success","status": 200,"data":month_objs})            
        else:
            return Response({"message": "Success","status": 200,"data":[]})   
    except Exception as e:
        return Response({"message": str(e),"status": 201,"data":[]})


from django.db.models import Count, Sum
@api_view(["POST"])
def baseline_delta(request):
    try:

        record_country = str(request.data['country']).replace(",", "','")

        mydb = settings.CONNECT()
        mycursor = mydb.cursor(dictionary=True, buffered=True)

        get_latest_yers_data_query =f"""
            SELECT *
            FROM master_annual_summary mas
            INNER JOIN (
                SELECT record_country, 
                    MAX(record_year) AS latest_year, 
                    MAX(record_month) AS latest_month
                FROM master_annual_summary
                GROUP BY record_country
            ) latest_records ON 
                mas.record_country = latest_records.record_country 
                AND mas.record_year = latest_records.latest_year 
                AND mas.record_month = latest_records.latest_month
            WHERE mas.record_country IN ('{record_country}')
            ORDER BY mas.record_country
        """
        mycursor.execute(get_latest_yers_data_query)
        year_objs = mycursor.fetchall()
        year_count = mycursor.rowcount
        # mycursor.close()
        year_final_objs = []
        vacancy_count = 0
        if year_count > 0:
            
            for year_obj in year_objs:
                                
                # select_query = f"""
                #     SELECT ems.* 
                #     FROM `master_monthly_summary` AS ems 
                #     INNER JOIN (
                #         SELECT MAX(`record_month`) AS max_record_month 
                #         FROM `master_monthly_summary` 
                #         WHERE `record_country` = '{year_obj['record_country']}' AND `record_year` = {year_obj['record_year']}
                #     ) AS max_record 
                #     ON ems.`record_month` = max_record.`max_record_month`
                #     WHERE ems.`record_country` = '{year_obj['record_country']}' AND ems.`record_year` = {year_obj['record_year']};

                # """
                # mycursor.execute(select_query)
                # objs = mycursor.fetchall()
                # year_obj['month_obj'] = objs

                master_month_obj = monthly_summary.objects.filter(record_country = year_obj['record_country']).order_by('-id').first()
                master_month_json = monthly_summary_serializer(master_month_obj)
                delta_role_count = 0
                delta_amt = 0
                exception_role_cost = 0
                
                year_obj['month_obj'] = []
                # if len(objs) > 0:
                # print("delta_count", delta_role_count)
                if master_month_obj:
                    year_obj['month_obj'] = [master_month_json.data]
                    exception_role_cost = delta_monthly.objects.filter(country = master_month_obj.record_country, year = master_month_obj.record_year, month = master_month_obj.record_month, is_recon = 0).count()

                    
                # Calculate delta for number of positions
                closed_count = yearly_baseline.objects.filter(country = year_obj['record_country'], is_active=0).count()
                print("closed_count", closed_count)
                new_count = yearly_baseline.objects.filter(country = year_obj['record_country'], issync=1).exclude(is_processed=1).count()
                print("new_count", new_count)

                # Calculate delta for cost
                year_obj['delta_role_count'] = new_count - closed_count

                base_closed_cost = yearly_baseline.objects.filter(country = year_obj['record_country'], is_active=0).aggregate(total_cost=Sum('new_annual_amount'))['total_cost'] or 0
                base_new_cost = yearly_baseline.objects.filter(country = year_obj['record_country'], issync=1).aggregate(total_cost=Sum('new_annual_amount'))['total_cost'] or 0

                # gbp
                gbp_cc = yearly_baseline.objects.filter(country = year_obj['record_country'], is_active=0).aggregate(total_cost=Sum('gbp_new_annual_base_pay'))['total_cost'] or 0
                gbp_nc = yearly_baseline.objects.filter(country = year_obj['record_country'], issync=1).aggregate(total_cost=Sum('gbp_new_annual_base_pay'))['total_cost'] or 0
                # usd
                usd_cc = yearly_baseline.objects.filter(country = year_obj['record_country'], is_active=0).aggregate(total_cost=Sum('usd_new_annual_base_pay'))['total_cost'] or 0
                usd_nc = yearly_baseline.objects.filter(country = year_obj['record_country'], issync=1).aggregate(total_cost=Sum('usd_new_annual_base_pay'))['total_cost'] or 0
                # euro
                euro_cc = yearly_baseline.objects.filter(country = year_obj['record_country'], is_active=0).aggregate(total_cost=Sum('euro_new_annual_base_pay'))['total_cost'] or 0
                euro_nc = yearly_baseline.objects.filter(country = year_obj['record_country'], issync=1).aggregate(total_cost=Sum('euro_new_annual_base_pay'))['total_cost'] or 0


                year_obj['delta_annual_cost'] = round(base_closed_cost - base_new_cost, 2)
                year_obj['gbp_delta_annual_cost'] = round(gbp_cc - gbp_nc, 2)
                year_obj['usd_delta_annual_cost'] = round(usd_cc - usd_nc, 2)
                year_obj['euro_delta_annual_cost'] = round(euro_cc - euro_nc, 2)

                year_obj['exception_role_cost'] = exception_role_cost
                vacancy_count = position.objects.filter(country = year_obj['record_country'], is_active=1, is_vacant=1).count()
                year_obj['vacancy'] = vacancy_count
                
                #################
                
                ### get currency code
                if country.objects.filter(country_name = year_obj['record_country']).exists():
                    #cur_data = country.objects.filter(country_name = month_obj['record_country'])[0].local_currency_code
                    cur_data = country.objects.filter(country_name = year_obj['record_country'])[0]
                    cur_ser = country_serializer(cur_data, many=False)
                    cur_data = json.loads(json.dumps(cur_ser.data))                
                    year_obj['currency'] = [cur_data]
                else:
                    year_obj['currency'] = []
                #################

                year_final_objs.append(year_obj)
        return Response({"message": "Success","status": 200,"data":year_final_objs})   
    except Exception as e:
        return Response({"message": str(e),"status": 201,"data":[]})


#{"year":"2024", "month":"1"}
@api_view(["POST"])
def baseline_delta_bkp(request):
    try:
        json_data = request.data
        
        year = json_data['year']
        month = json_data['month']
        
        if monthly_summary.objects.filter(record_year = year, record_month = month).exists():
            
            month_objs = monthly_summary.objects.filter(record_year = year, record_month = month)
            month_json = monthly_summary_serializer(month_objs, many=True)
            month_data = json.loads(json.dumps(month_json.data))
            
            month_objs = []
            for month_obj in month_data:
                
                ### get year data            
                if annual_summary.objects.filter(record_year = year, record_country = month_obj['record_country']).exists():
                    year_objs = annual_summary.objects.filter(record_year = year, record_country = month_obj['record_country'])
                    year_json = annual_summary_serializer(year_objs, many=True)
                    year_data = json.loads(json.dumps(year_json.data))                
                    month_obj['year_data'] = year_data
                else:
                    month_obj['year_data'] = []
                #################
                
                ### get currency code
                if country.objects.filter(country_name = month_obj['record_country']).exists():
                    cur_data = country.objects.filter(country_name = month_obj['record_country'])[0].local_currency_code
                    month_obj['currency'] = cur_data
                else:
                    month_obj['currency'] = ""
                #################
                
                month_objs.append(month_obj)
            
            return Response({"message": "Success","status": 200,"data":month_objs})            
        else:
            return Response({"message": "Not exist Year or month?","status": 201,"data":[]})
    except Exception as e:
        #print("no")
        print(str(e))
        return Response({"message": str(e),"status": 201,"data":[]})


#approve_position
@api_view(['POST'])
def approve_position(request):
    try:
        fetchid=request.data['id']
        pos_obj = position.objects.filter(pk=fetchid).first()
        if pos_obj:
            position.objects.filter(pk=fetchid).update(status=1, is_active=1, is_approved=1)
                
            # call create baseline method
            base_obj = create_emp_in_baseline(pos_obj)
            if base_obj:

                # pos_id = str(pos_obj.country[0:3])+"_"+str(base_obj.id)
                pos_id = f"{str(pos_obj.country)[0:3]}_{pos_obj.id}"

                key_pair = f"{str(base_obj.country)[0:3]}_{base_obj.emp_ref_no}_{base_obj.emp_bu}"
                key_pair_str = key_pair.upper()

                yearly_baseline.objects.filter(pk=base_obj.id).update(position_id=pos_id, key_pair=key_pair_str)

                # ≥≥≥≥≥≥≥≥≥≥≥≥≥
                local_curr_type = base_obj.local_currency
                local_country_obj = country.objects.filter(local_currency_code = local_curr_type).first()
                gbp_annual_base_pay = float(base_obj.annual_base_pay) / float(local_country_obj.gbp_average)
                usd_annual_base_pay = float(base_obj.annual_base_pay) / float(local_country_obj.usd_average)
                euro_annual_base_pay = float(base_obj.annual_base_pay) / float(local_country_obj.euro_average)


                # update year baseline count
                yer_obj = annual_summary.objects.filter(record_country = pos_obj.country).order_by('-id').first()
                if not yer_obj:
                    print("annual_summary not found")
                    summry_data = {
                        "record_region": pos_obj.region,
                        "record_country":pos_obj.country,
                        "record_year": pos_obj.baseline_year,
                        "emp_total_count": 1,
                        "emp_new_count":0,
                        "emp_left_count":0,
                        "monthly_gross_payout": base_obj.annual_base_pay,
                        "left_gross_payout":0,
                        "status":0,
                        "created_date": str(date.today()),
                        "uploaded_by": "", # user email id 
                        "security_code":"NA",
                        "is_security_code_used":0,
                        "sheet_key":"",
                        "ymd_date": str(date.today()),
                        "sheet_url": "",
                        "issync":0,
                        "gbp_gross_payout": gbp_annual_base_pay,
                        "usd_gross_payout": usd_annual_base_pay,
                        "euro_gross_payout":euro_annual_base_pay
                    }

                    # print("summry_data", summry_data)
                    summery_serializer = annual_summary_serializer(data = summry_data)
                    if summery_serializer.is_valid(raise_exception=True):
                        summery_serializer.save()
                        yer_obj = annual_summary.objects.latest('id')
                else:
                    print("annual_summary found")

                    # calculate new base count by adding no of new position in privious base_count
                    new_base_count = int(yer_obj.emp_total_count) + 1
                    new_monthly_gross_payout = float(yer_obj.monthly_gross_payout) + float(pos_obj.baseline_total)
                    new_gbp_gross_payout = float(yer_obj.gbp_gross_payout) + float(gbp_annual_base_pay)
                    new_usd_gross_payout = float(yer_obj.usd_gross_payout) + float(usd_annual_base_pay)
                    new_euro_gross_payout = float(yer_obj.euro_gross_payout) + float(euro_annual_base_pay)

                    # update new count and fields in datbaases
                    yer_obj.emp_total_count = new_base_count
                    yer_obj.monthly_gross_payout = round(new_monthly_gross_payout, 2)
                    yer_obj.gbp_gross_payout = round(new_gbp_gross_payout, 2)
                    yer_obj.usd_gross_payout = round(new_usd_gross_payout, 2)
                    yer_obj.euro_gross_payout = round(new_euro_gross_payout, 2)
                    yer_obj.save()
                    
        ''' Updae status activity history'''
        new_pos = position.objects.filter(pk=fetchid)[0]
        save_poistion_approval_activity_history(new_pos)     
        return Response({"message":"successful","status":"200","data":[]})        
    except Exception as e:
         return Response({"message":str(e),"status":"201","data":[]})

# create baseline employee using approved position
def create_emp_in_baseline(pos_obj):

    if yearly_baseline.objects.filter(position_id = pos_obj.position_id).exists():
        return None
        
    base_data = {
        "emp_ref_no": pos_obj.emp_ref_no,
        "region": pos_obj.region,
        "record_region": pos_obj.region,
        "country": pos_obj.country,
        "annual_base_pay": pos_obj.baseline_total,
        "new_annual_amount": pos_obj.baseline_total,
        "t_year": pos_obj.baseline_year,
        "is_active": 1,
        "issync": 0,
        "emp_grade": pos_obj.pos_grade,
        "emp_function": pos_obj.pos_function,
        "emp_bu": pos_obj.pos_bu,
        "fte": pos_obj.pos_fte,
        "sup_name": pos_obj.pos_manager,
        "sup_job_title": pos_obj.pos_manager_job_title,
        "bonus": pos_obj.pos_bonus,
        "local_currency": pos_obj.pos_local_curr,
        "car_allowance": pos_obj.pos_car_allowance,
        "is_approved": 1,
        "position_id": pos_obj.position_id,
        "position_end_date": pos_obj.pos_end_date,
        "current_job": pos_obj.position_name,
        "total_cost": pos_obj.total_cost,
        "payroll_burden": pos_obj.payroll_burden,
        "pos_gross_pay": pos_obj.pos_gross_pay,
        "pos_net_pay": pos_obj.pos_net_pay,
        "postion_baseline_total": pos_obj.postion_baseline_total,
        "gbp_annual_base_pay": pos_obj.gbp_annual_base_pay,
        "usd_annual_base_pay": pos_obj.usd_annual_base_pay,
        "euro_annual_base_pay": pos_obj.euro_annual_base_pay,
        "gbp_new_annual_base_pay": pos_obj.gbp_annual_base_pay, 
        "usd_new_annual_base_pay": pos_obj.usd_annual_base_pay, 
        "euro_new_annual_base_pay": pos_obj.euro_annual_base_pay
    }
    
    base_ser = yearly_baseline_serializer(data=base_data)
    if base_ser.is_valid(raise_exception=True):
        base_ser.save()
        base_obj = yearly_baseline.objects.latest('id')
        return base_obj
    else:
        return None
    

# 1-New Role, 2-Retained Position - Keep Employee
# 3-Vacant
#joiner reason
@api_view(['POST'])
def joiners_reason(request):
    try:
        country = request.data['country']
        data = [{"value":"1","desc":"New Role", "baseline_total":0}, {"value":"2", "desc":"Retained Position - Keep Employee", "baseline_total":0}]
        pos = position.objects.filter(is_vacant=1, country=country, is_approved=1, is_active = 1)
        for po in pos:
            yr = yearly_baseline.objects.filter(position_id=po.position_id, emp_ref_no="").first()
            if yr:
                po_id = f'N-{po.position_id}-{po.position_name}'
            else:
                po_id = f'V-{po.position_id}-{po.position_name}'
            data.append({"value":po.position_id, "desc":po_id, "baseline_total":po.baseline_total})
        return Response({"message":"successful","status":"200","data":data})
    except Exception as e:
         return Response({"message":str(e),"status":"201","data":[]})


#leavers action
@api_view(['POST'])
def leavers_action(request):
    try:
        fetchid       = request.data['id']
        position_id   = request.data['position_id']
        reason        = request.data['reason']
        action_status = request.data['action_status']

        if reason == "1": #Vacant
            position.objects.filter(position_id=position_id).update(is_vacant = 1, is_delta = 0)

        elif reason in ["2","3","4"]: #Redundant (close)

            # marked position as inactive and vacant
            mark_position_inactive(position_id = position_id, is_delta = 2)
        pass
        
        delta_monthly.objects.filter(pk = fetchid).update(status = action_status, update_date=timezone.now(), is_recon=1)
        
        return Response({"message":"successful","status":"200","data":[]})
    except Exception as e:
         return Response({"message":str(e),"status":"201","data":[]})

def mark_position_inactive(position_id, is_delta):
    print("position_id" ,position_id ,"is_delta", is_delta)
    position.objects.filter(position_id=position_id).update(emp_ref_no="", is_active=0, is_vacant=1, is_delta = is_delta)
    yearly_baseline.objects.filter(position_id=position_id).update(emp_ref_no="", is_active=0)

    pos_obj = position.objects.filter(position_id=position_id).first()
    # update month baseline count if leaver marked as Redundant means need to decrees monthly headcount
    month_obj = monthly_summary.objects.filter(record_country = pos_obj.country).order_by('-id').first()
    
    if month_obj:
        # calculate new monthly head_count by decrease redeundant position from mothly headcount
        new_base_count = int(month_obj.emp_total_count) - 1
        new_base_amount = round(float(month_obj.monthly_gross_payout) - float(pos_obj.new_annual_amount), 2)
        
        new_gbp_annual_base_pay = round(float(month_obj.gbp_gross_payout) - float(pos_obj.gbp_annual_base_pay), 2)
        new_usd_annual_base_pay = round(float(month_obj.usd_gross_payout) - float(pos_obj.usd_annual_base_pay), 2)
        new_euro_annual_base_pay = round(float(month_obj.euro_gross_payout) - float(pos_obj.euro_annual_base_pay), 2)
        
        month_obj.emp_total_count = new_base_count
        month_obj.monthly_gross_payout = new_base_amount
        month_obj.gbp_gross_payout = new_gbp_annual_base_pay
        month_obj.usd_gross_payout = new_usd_annual_base_pay
        month_obj.euro_gross_payout = new_euro_annual_base_pay
        month_obj.save()
    else:
        year_obj = annual_summary.objects.filter(record_country = pos_obj.country).order_by('-id').first()

        new_base_amount = round(float(year_obj.monthly_gross_payout) - float(pos_obj.new_annual_amount), 2)
        new_gbp_annual_base_pay = round(float(year_obj.gbp_gross_payout) - float(pos_obj.gbp_annual_base_pay), 2)
        new_usd_annual_base_pay = round(float(year_obj.usd_gross_payout) - float(pos_obj.usd_annual_base_pay), 2)
        new_euro_annual_base_pay = round(float(year_obj.euro_gross_payout) - float(pos_obj.euro_annual_base_pay), 2)

        summry_data = {
            "record_region": year_obj.record_region,
            "record_country": year_obj.record_country,
            "record_year": year_obj.record_year,
            "record_month": str(date.today().month),
            "emp_total_count": int(year_obj.emp_total_count) - 1,
            "emp_new_count":0,
            "emp_left_count":0,
            "monthly_gross_payout": new_base_amount,
            "gbp_gross_payout": new_gbp_annual_base_pay,
            "usd_gross_payout": new_usd_annual_base_pay,
            "euro_gross_payout": new_euro_annual_base_pay,
            "left_gross_payout":0,
            "status":0,
            "created_date": str(date.today()),
            "uploaded_by": "", # user email id 
            "security_code":"NA",
            "is_security_code_used":0,
            "sheet_key":"",
            "ymd_date": str(date.today()),
            "sheet_url": "",
            "issync":0
        }

        # print("summry_data", summry_data)
        summery_serializer = monthly_summary_serializer(data = summry_data)
        if summery_serializer.is_valid(raise_exception=True):
            summery_serializer.save()


#{"id":"1", "reason":"2", "position_id":"IND_1"} 
#joiner action
@api_view(['POST'])
def joiners_action(request):
    try:
        fetchid = request.data['id']
        position_id = request.data['position_id']
        reason = request.data['reason']
        
        action_status = request.data['action_status']
        
        if reason=="1": # New#
            return Response({"message":"Please Create New Position","status":"201","data":[]})
        
        elif reason=="2": #Retained Position
            if position_id =="" or position_id ==None:
                return Response({"message":"It is New Position. You have to Create New Position or Assigned to Vacant","status":"201","data":[]})
            position.objects.filter(position_id=position_id).update(pos_end_date=None)
            yearly_baseline.objects.filter(position_id=position_id).update(position_end_date=None)
            delta_monthly.objects.filter(pk = fetchid).update(status = action_status, update_date=timezone.now(), is_recon=1)
            
            return Response({"message":"Position Retained","status":"200","data":[]})
        else: #Assigned with Vacant
            
            new_annual_amount = request.data['new_annual_amount']
            
            if new_annual_amount > position.objects.filter(position_id=reason)[0].baseline_total:
                return Response({"message":"Over Budget. Please Change Budget and Try Again","status":"201","data":[]})
            
            position.objects.filter(position_id=reason).update(is_vacant=0, new_annual_amount=new_annual_amount)
            delta_monthly.objects.filter(pk = fetchid).update(status = action_status, update_date=timezone.now(), is_recon=1)
            del_obj = delta_monthly.objects.filter(pk=fetchid).first()
            
            tmp_obj = yearly_baseline.objects.filter(position_id=reason).first()
            if tmp_obj.emp_ref_no =="" or tmp_obj.emp_ref_no ==None: 
                pos_obj = position.objects.filter(position_id=reason).first()
                
                # update month baseline count if leaver marked as Redundant means need to decrees monthly headcount
                month_obj = monthly_summary.objects.filter(record_country = pos_obj.country).order_by('-id').first()
            

                pos_currency_annual_base_pay = new_annual_amount

                if pos_obj.pos_currency != pos_obj.pos_local_curr:
                    pos_country_obj = country.objects.filter(country_name = pos_obj.country).first()
                    local_country_obj = country.objects.filter(local_currency_code = pos_obj.pos_local_curr).first()
                    
                    temp_usd_val = float(new_annual_amount) / float(local_country_obj.usd_average)
                    pos_currency_annual_base_pay = temp_usd_val * float(pos_country_obj.usd_average)
                
                gbp_new_annual_base_pay = float(new_annual_amount) / float(local_country_obj.gbp_average)
                usd_new_annual_base_pay = float(new_annual_amount) / float(local_country_obj.usd_average)
                euro_new_annual_base_pay = float(new_annual_amount) / float(local_country_obj.euro_average)

                yearly_baseline.objects.filter(position_id=reason).update(
                    emp_ref_no = del_obj.emp_ref_no, 
                    new_annual_amount = new_annual_amount,
                    gbp_new_annual_base_pay = gbp_new_annual_base_pay,
                    usd_new_annual_base_pay = usd_new_annual_base_pay,
                    euro_new_annual_base_pay = euro_new_annual_base_pay,
                    issync=1
                )
                    
                # calculate new monthly head_count by subtract redeundant position from mothly headcount
                new_base_amount = round(float(month_obj.monthly_gross_payout) + float(pos_currency_annual_base_pay), 2)
                new_gbp_annual_base_pay = round(float(month_obj.gbp_gross_payout) + (gbp_new_annual_base_pay), 2)
                new_usd_annual_base_pay = round(float(month_obj.usd_gross_payout) + (usd_new_annual_base_pay), 2)
                new_euro_annual_base_pay = round(float(month_obj.euro_gross_payout) + (euro_new_annual_base_pay), 2)

                month_obj.emp_total_count = int(month_obj.emp_total_count) + 1
                month_obj.monthly_gross_payout = new_base_amount
                month_obj.gbp_gross_payout = new_gbp_annual_base_pay
                month_obj.usd_gross_payout = new_usd_annual_base_pay
                month_obj.euro_gross_payout = new_euro_annual_base_pay
                month_obj.save()
            else:            
                yearly_baseline.objects.filter(position_id=reason).update(new_annual_amount=new_annual_amount, issync=1, is_processed=1)
                
            return Response({"message":"Position Assigned","status":"200","data":[]})
        
    except Exception as e:
         return Response({"message":str(e),"status":"201","data":[]})
        

#country All By User
#{"user_email":"azad.singh@g4s.com"}
#{"user_email":"adminworkflow@in.g4s.com"}

@api_view(["POST"])
def country_check_byuser(request):
    try:
        user_email = request.data['user_email']
        cont_av = []
        print("request.data", request.data)
        if users.objects.filter(user_email=user_email).exists():
            #region = users.objects.filter(user_email=user_email)[0].user_region
            #print("region", region)
            cont_arr = []
            if assigned_country.objects.filter(user_email=user_email).exists():
                conts = assigned_country.objects.filter(user_email=user_email).values_list("user_country", flat=True)
                print("conts", conts)
                for cont in conts:
                    try:
                        print("cont", cont)
                        if monthly_summary.objects.filter(record_country=cont).exists():
                            mn = monthly_summary.objects.filter(record_country=cont)[0]
                            return Response({"message": "Success","status": 200,"data":[{"record_country":mn.record_country, "record_region":mn.record_region}]})
                            
                    except:
                        pass
                return Response({"message": "Success","status": 200,"data":[]})
                
            else:
                return Response({"message": "Country not Assigned","status": "201","data":[]})
        else:
            return Response({"message": "User not Exist","status": "201","data":[]})
        
    except Exception as e:
        print(str(e))
        return Response({"message": str(e),"status": "201","data":[]})

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(["POST"])
def pending_pos_action(request):
    try:
        json_data       = request.data
        SearchText      = json_data['SearchText']
        page            = PAGE(json_data)
        order_by_field  = json_data['order_by_field']
        order_by_value  = json_data['order_by_value']
        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        orderby = "-id"
        if str(order_by_field).strip() != "":
            orderby = f"{order_by_field}"
            if str(order_by_value).lower() == 'desc':
                orderby = f"-{order_by_field}"
            # endif
        # endif
        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        objs = position_action_approvel_request.objects.filter(**json_data['field']).order_by(orderby)
        if str(SearchText) != "":
            objs = objs.filter(
                Q(action_type__icontains = SearchText) |
                Q(record_region__icontains = SearchText) |
                Q(record_country__icontains = SearchText) |
                Q(position_id__icontains = SearchText) |
                Q(emp_ref_no__icontains = SearchText) |
                Q(reason__icontains = SearchText) |
                Q(reason_details__icontains = SearchText) |
                Q(requsted_by_remarks__icontains = SearchText) |
                Q(approved_by_remarks__icontains = SearchText) |
                Q(approved_by__icontains = SearchText) |
                Q(requsted_by__icontains = SearchText)
            ).order_by(orderby)
        # endif
        count = objs.count()
        objs = objs[page['startWith']:page['endWith']]  
        all_users = position_action_approvel_request_serializer(objs, many=True)
            
        return Response({"message": "Success","status": 200,"data":all_users.data, "counts":{"count":count}})
    except Exception as e:
        return Response({"message": str(e), "status": 201, "data":[]})
    
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(["POST"])
def assign_emp_on_position(request):
    try:
        request_data = request.data
        position_id = request.data['position_id']
        emp_ref_no = request.data['emp_ref_no']
        # pos_end_date = request.data['pos_end_date']
        # reason = request.data['reason']

        if yearly_baseline.objects.filter(emp_ref_no = emp_ref_no).exists():
            return Response({"message":f"Entered Employee ID {emp_ref_no} already assign to other position or already exists in baseline!","status":"201","data":[]})
        else:
            # position_end_date = request.data['pos_end_date']
            yearly_baseline.objects.filter(position_id = position_id).update(emp_ref_no = emp_ref_no, is_processed=1)
            position.objects.filter(position_id = position_id).update(is_vacant = 0, is_active = 1, is_delta = 1, emp_ref_no = emp_ref_no)
            
        pos_obj = position.objects.filter(position_id = position_id).first()
        if pos_obj:
            request_data['action_type'] = 'assign'
            request_data['record_region'] = pos_obj.region
            request_data['record_country'] = pos_obj.country
            action_ser = position_action_approvel_request_serializer(data = request_data)
            if action_ser.is_valid(raise_exception=True):
                action_ser.save()
            
            pos_obj.status = 0
            pos_obj.save()

            return Response({"message": "Success","status": 200,"data":[]})
        else:
            return Response({"message": "Invalid position_id?","status": 201,"data":[]})
    except Exception as e:
        print(str(e))
        return Response({"message": str(e),"status": "201","data":[]})


# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
@api_view(["POST"])
def unassign_emp_on_position(request):
    try:
        request_data = request.data
        position_id = request_data['position_id']
        reason = request_data['reason']
        pos_end_date = request_data['pos_end_date']
        emp_end_date = request_data['emp_end_date']

        is_delta = 3
        if reason == "3":
            is_delta = 3

        if pos_end_date is not None and pos_end_date != "":
            print("in if", pos_end_date)
            pos_end_date = datetime.strptime(pos_end_date, "%Y-%m-%d")
            current_date = datetime.now()
            if pos_end_date < current_date:
                # mark_position_inactive(position_id = pos.position_id, is_delta = 3)
                # marked position as inactive and vacant
                position.objects.filter(position_id = position_id).update(pos_end_date = pos_end_date)
                mark_position_inactive(position_id = position_id, is_delta = 3)
                # added by Sunil
                pos = position.objects.filter(position_id = position_id).first()
                yearly_baseline.objects.filter(position_id = pos.position_id).update(emp_ref_no = "", position_end_date = request.data['pos_end_date'])
                if pos:
                    pos.status = 1 # Approve
                    pos.is_vacant = 1 # YES
                    pos.is_active = 0 # NO
                    pos.is_delta = 3 # Close
                    # Add by Sunil
                    pos.emp_ref_no = ""
                    pos.emp_start_date = ""
                    pos.emp_end_date = ""
                    pos.postion_baseline_total = ""
                    pos.pos_gross_pay = ""
                    pos.pos_net_pay = ""
                    pos.position_pos_add_cash = ""
                    pos.position_pos_bonus = ""
                    pos.pos_car_allowance_type = ""
                    pos.pos_car_allowance = ""
                    pos.pos_commision_plan = ""
                    pos.total_cost = ""
                    pos.new_annual_amount = 0
                    pos.save()
                
            else:    
                #position.objects.filter(position_id = position_id).update(pos_end_date = pos_end_date, emp_end_date=emp_end_date)
                #mark_position_inactive(position_id = position_id, is_delta = 3) # 3 from 2

                # added by sunil
                if emp_end_date is not None and emp_end_date != "":
                    print("in if", emp_end_date)
                    emp_end_date = datetime.strptime(emp_end_date, "%Y-%m-%d")
                    current_date = datetime.now()
                    if emp_end_date < current_date:
                        position.objects.filter(position_id = position_id).update(emp_end_date = emp_end_date)
                        mark_position_inactive(position_id = position_id, is_delta = 0)
                        # added by Sunil
                        pos = position.objects.filter(position_id = position_id).first()
                        if pos:
                            pos.status = 1 # Approve
                            pos.is_vacant = 1 # YES
                            pos.is_active = 1 # YES
                            pos.is_delta = 0 # Vacant
                            # Add by Sunil
                            pos.emp_ref_no = ""
                            pos.emp_start_date = ""
                            pos.emp_end_date = ""
                            pos.postion_baseline_total = ""
                            pos.pos_gross_pay = ""
                            pos.pos_net_pay = ""
                            pos.position_pos_add_cash = ""
                            pos.position_pos_bonus = ""
                            pos.pos_car_allowance_type = ""
                            pos.pos_car_allowance = ""
                            pos.pos_commision_plan = ""
                            pos.total_cost = ""
                            pos.new_annual_amount = 0
                            pos.save()
                        yearly_baseline.objects.filter(position_id = pos.position_id).update(emp_ref_no = "", position_end_date = request.data['pos_end_date'])
                
        else:
            position.objects.filter(position_id = position_id).update(pos_end_date = pos_end_date, emp_end_date=emp_end_date)
            mark_position_inactive(position_id = position_id, is_delta = 3) # 3 from 2

        # print("reason ", reason)
        # if reason == "1": #Vacant
        #     print("in if ", reason)
            
        #     position.objects.filter(position_id = position_id).update(emp_ref_no = None, is_vacant = 1, is_delta = 0, pos_end_date = pos_end_date)
        #     yearly_baseline.objects.filter(position_id = position_id).update(is_active = 0)

        # elif reason in ["2","3","4"]: #Redundant (close)
        #     print("in else if ", reason)

        #     # marked position as inactive and vacant
        #     position.objects.filter(position_id = position_id).update(pos_end_date = pos_end_date)
        #     mark_position_inactive(position_id = position_id, is_delta = 2)
        # else:
        #     print("in else", reason)
            
        pos_obj = position.objects.filter(position_id = position_id).first()
        if pos_obj:
            request_data['action_type'] = 'unassign'
            request_data['record_region'] = pos_obj.region
            request_data['record_country'] = pos_obj.country
            request_data['emp_ref_no'] = pos_obj.emp_ref_no
            action_ser = position_action_approvel_request_serializer(data = request_data)
            if action_ser.is_valid(raise_exception=True):
                action_ser.save()
            
            pos_obj.status = 0
            pos_obj.save()
            
            return Response({"message": "Success","status": 200,"data":[]})
        else:
            return Response({"message": "Invalid position_id?","status": 201,"data":[]})
    except Exception as e:
        print(str(e))
        return Response({"message": str(e),"status": "201","data":[]})

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(["POST"])
def pay_increase_in_position(request):
    try:
        position_id = request.data['position_id']
        emp_ref_no = request.data['emp_ref_no']
        
        return Response({"message": "Success","status": 200,"data":[]})
    except Exception as e:
        print(str(e))
        return Response({"message": str(e),"status": "201","data":[]})
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(["POST"])
def approve_pos_action(request):
    try:
        fatchid     = request.data['id']
        status      = request.data['status'] # 0-pending, 1-accept, 2-reject
        position_id = request.data['position_id']
        approved_by = request.data['approved_by']
        approved_by_remarks = request.data['approved_by_remarks']

        approvel_request_obj = position_action_approvel_request.objects.filter(pk = fatchid).first()
        if approvel_request_obj:

            emp_ref_no  = approvel_request_obj.emp_ref_no
            pos_end_date  = approvel_request_obj.pos_end_date
            print("position found")
            
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            #                   Assign
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            if approvel_request_obj.action_type == 'assign':
                print("in assign")
                if status == 1:
                    if yearly_baseline.objects.filter(emp_ref_no = emp_ref_no).exists():
                        return Response({"message":f"Entered Employee ID {emp_ref_no} already assign to other position or already exists in baseline!","status":"201","data":[]})
                    else:
                        # position_end_date = request.data['pos_end_date']
                        yearly_baseline.objects.filter(position_id = position_id).update(emp_ref_no = emp_ref_no, is_processed=1)
                        position.objects.filter(position_id = position_id).update(status = 1, is_vacant = 0, is_active = 1, is_delta = 1, emp_ref_no = emp_ref_no, pos_end_date = pos_end_date)

            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            #                   unassign
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            elif approvel_request_obj.action_type == 'unassign':
                
                print("in unassign")
                if status == 1:
                    reason = approvel_request_obj.reason
                    print("reason ", reason)
                    if reason == "1": #Vacant
                        print("in if ", reason)
                        
                        position.objects.filter(position_id = approvel_request_obj.position_id).update(status = 1, emp_ref_no = None, is_vacant = 1, is_delta = 0, pos_end_date = pos_end_date)
                        yearly_baseline.objects.filter(position_id = approvel_request_obj.position_id).update(is_active = 0)

                    elif reason in ["2","3","4"]: #Redundant (close)
                        print("in else if ", reason)
                        position.objects.filter(position_id = approvel_request_obj.position_id).update(pos_end_date = pos_end_date)
                        # marked position as inactive and vacant
                        # mark_position_inactive(approvel_request_obj.position_id, 2)
                        mark_position_inactive(position_id = position_id, is_delta = 2)
                    else:
                        print("in else", reason)
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            #                   'pay-increase
            # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            elif approvel_request_obj.action_type == 'pay-increase':
                pass

            else:
                return Response({"message": "Invalid action_type?","status": 201,"data":[]})
                
            # update request status 
            approvel_request_obj.status = status
            approvel_request_obj.approved_by = approved_by
            approvel_request_obj.approved_by_remarks = approved_by_remarks
            approvel_request_obj.save()
            
            return Response({"message": "Success","status": 200,"data":[]})
        else:
            return Response({"message": "Invalid id?","status": 201,"data":[]})
    except Exception as e:
        print(str(e))
        return Response({"message": str(e),"status": "201","data":[]})
    


# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#       create_position_history
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
def create_position_history(pos, action_type):
    try:
        pos_history_data = {
            "action_type": str(action_type),
            "position_id": str(pos.position_id),
            "emp_ref_no": str(pos.emp_ref_no),
            "emp_reason": str(pos.emp_reason),
            "remarks": str(pos.pos_remarks),
            "updated_by": str(pos.updated_by),
            "eff_from": str(pos.eff_from),
            "pos_end_date": str(pos.pos_end_date)
        }
        pos_his_ser = position_history_serializer(data=pos_history_data)
        if pos_his_ser.is_valid(raise_exception=True):
            pos_his_ser.save()
            return "success"
    except Exception as e:
        print(str(e))
        return str(e)

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#       create_position_emp_history
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
def create_position_emp_history(pos, action_type):
    try:
        pos_emp_history_data = {
            "action_type": str(action_type),
            "position_id": str(pos.position_id),
            "emp_ref_no": str(str(pos.emp_ref_no)),
            "emp_start_date": str(pos.emp_start_date),
            "emp_end_date": str(pos.emp_end_date),
            "postion_baseline_total": str(pos.postion_baseline_total),
            "pos_gross_pay": str(pos.pos_gross_pay),
            "pos_net_pay": str(pos.pos_net_pay),
            "position_pos_add_cash": str(pos.position_pos_add_cash),
            "position_pos_bonus": str(pos.position_pos_bonus),
            "pos_car_allowance_type": str(pos.pos_car_allowance_type),
            "pos_car_allowance": str(pos.pos_car_allowance),
            "pos_commision_plan": str(pos.pos_commision_plan),
            "total_cost": str(pos.total_cost),
            "new_annual_amount": str(pos.new_annual_amount),
            "emp_reason": str(pos.emp_reason),
            "remarks": str(pos.emp_remarks),
            "updated_by": str(pos.updated_by)
        }
        pos_emp_his_ser = employee_history_serializer(data=pos_emp_history_data)
        if pos_emp_his_ser.is_valid(raise_exception=True):
            pos_emp_his_ser.save()
            return "success"
    except Exception as e:
        print(str(e))
        return str(e)
    


@api_view(['POST'])
def position_history_list(request):
    try:
        position_id = request.data.get('position_id')

        pos_list = position_history.objects.filter(position_id = position_id).order_by('-id')
        pos_json = position_history_serializer(pos_list, many=True)
        
        return Response({"message":"successful","status":"200","data":pos_json.data})  
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})


@api_view(['POST'])
def employee_history_list(request):
    try:
        position_id = request.data.get('position_id')

        pos_list = employee_history.objects.filter(position_id = position_id).order_by('-id')
        pos_json = employee_history_serializer(pos_list, many=True)
        
        return Response({"message":"successful","status":"200","data":pos_json.data})  
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})

@api_view(['POST'])
def activity_history_list(request):
    try:
        # Get query parameters for filtering
        filter_date = request.query_params.get('filter_date')
        
        # Filter queryset based on date
        queryset = activity_history.objects.all().order_by('-id')
        
        if filter_date:
            filter_date = parse_datetime(filter_date)
            if filter_date:
                queryset = queryset.filter(created_at__date=filter_date.date())
        
        # Pagination
        paginator = PageNumberPagination()
        paginator.page_size = 10  # You can adjust the page size as needed
        paginated_queryset = paginator.paginate_queryset(queryset, request)
        
        # Serialize the data
        serializer = ActivityHistorySerializer(paginated_queryset, many=True)
        
        return paginator.get_paginated_response(serializer.data)
    
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})



@api_view(['POST'])
def save_position_file(request):
    if request.method == 'POST' and request.FILES.get('file'):
        file_obj = request.FILES['file']
        file_content = base64.b64encode(file_obj.read()).decode('utf-8')
        file_name = file_obj.name
        mime_type = file_obj.content_type
        position_id = request.POST.get('position_id')

        if not position_id:
            return HttpResponse('Position ID is required.')

        try:
            position_instance = position.objects.get(id=position_id)
        except position.DoesNotExist:
            return render({'message':'Position with the specified ID does not exist.',
                           'status':'404'})
        data = {
            'files': file_content,
            'fileName': file_name,
            'mimeType': mime_type
        }

        # URL for Google Apps Script endpoint
        url = 'https://script.google.com/macros/s/AKfycbyKiTaemJxaOo8YQwaVuSaiSoOFsnRaQB-cnjincnHvXIh6TVnI8s14pn2lLxcPATJm/exec'
        try:
            # Send the JSON data to the Google Apps Script endpoint
            response = requests.post(url, json=data)

            if response.status_code == 200:
                try:
                    response_data = response.json()
                    file_url = response_data.get('fileUrl')
                    file_title_temp = response_data.get('fileTitle')
                    createdAt = datetime.strptime(response_data.get('createdAt'), '%Y-%m-%dT%H:%M:%S.%fZ')
                    file_title = file_title_temp.split(".")
                    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")  
                    file_title = file_title[0]+"_"+str(timestamp)+"."+file_title[-1]
                    pos_file_data = {
                        'position': position_instance,
                        'file_name': file_title,
                        'file_url': file_url,
                        'created_at': createdAt
                    }

                    try:
                        new_file = position_files.objects.create(**pos_file_data)
                        new_file.save()
                        return Response({
                            "message": "File uploaded successfully to Google Drive.",
                            "status": "200"
                        })
                    except Exception as e:
                        return Response({'message': f'Error saving file: {str(e)}', 'status': '500'})
                except ValueError:
                    return Response( {'message': 'Invalid JSON response from Google Apps Script.', 'status': '502'})
            else:
                return Response({'message': 'Failed to upload file to Google Drive.', 'status': '502'})

        except requests.RequestException as e:
            return Response({'message': f'Error uploading file: {str(e)}', 'status': '502'})

    return Response({'message': 'No file provided or method not allowed.', 'status': '400'})