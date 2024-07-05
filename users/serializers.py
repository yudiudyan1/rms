from django.contrib.auth import authenticate
# from django.contrib.auth.models import User
#from .models import employee
from users.models import *

from rest_framework import serializers

"""
class LoginSerializer(serializers.Serializer):
    
    # This serializer defines two fields used for authentication: username and password.
    # It will try to authenticate the user with username/password when validated.

    username = serializers.CharField(
        label="Username",
        write_only=True
    )
    password = serializers.CharField(
        label="Password",
        style={'input_type': 'password'},  # This will be used when the DRF browsable API is enabled
        trim_whitespace=False,
        write_only=True
    )

    def validate(self, attrs):
        # Take username and password from request
        username = attrs.get('username')
        password = attrs.get('password')

        if username and password:
            # Try to authenticate the user using Django auth framework.
            user = authenticate(request=self.context.get('request'), username=username, password=password)
            if not user:
                # If we don't have a regular user, raise a ValidationError
                msg = 'Access denied: wrong username or password.'
                raise serializers.ValidationError(msg, code='authorization')
        else:
            msg = 'Both "username" and "password" are required.'
            raise serializers.ValidationError(msg, code='authorization')
        # We have a valid user, put it in the serializer's validated_data.
        # It will be used in the view.
        attrs['user'] = user
        return attrs

class employee_serializer(serializers.ModelSerializer):
    class Meta:
        model = employee
        fields = ['username','password','email','fname','lname']
"""
        
class user_serializer(serializers.ModelSerializer):
    class Meta:
        model = users
        fields = "__all__"

class assigned_country_serializer(serializers.ModelSerializer):
    class Meta:
        model = assigned_country
        fields = "__all__"

class assigned_country_serializer_details(serializers.ModelSerializer):
    class Meta:
        model = assigned_country
        fields = ["id", "user_country", "user_region"]

class user_serializer_details(serializers.ModelSerializer):

    countries = serializers.SerializerMethodField('get_countries')
    
    class Meta:
        model = users
        fields = "__all__"
        extra_fiels = ['countries']

    def get_countries(self, obj):
        country_obj = assigned_country.objects.filter(user_email = obj.user_email)
        country_ser = assigned_country_serializer_details(country_obj, many=True)
        return country_ser.data