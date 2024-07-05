from rest_framework import serializers
from .models import *

class smtp_serializer(serializers.ModelSerializer):
    class Meta:
        model = smtp
        #fields = ['ename',"econtact"]
        fields = "__all__"