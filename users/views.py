from django.contrib.auth import authenticate
from django.views.decorators.csrf import csrf_exempt
from rest_framework.authtoken.models import Token
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny

from users.models import *
from users.serializers import *

from datetime import *
from django.utils import timezone

from django.db.models import Q
from global_fun import *

from rest_framework.status import (
    HTTP_400_BAD_REQUEST,
    HTTP_404_NOT_FOUND,
    HTTP_200_OK
)
from rest_framework.response import Response

@csrf_exempt
@api_view(["POST"])
@permission_classes((AllowAny,))
def db_login(request):
    username = request.data.get("username")
    password = request.data.get("password")
    if username is None or password is None:
        return Response({'status':"201", 'details': 'Please provide both username and password'})
    user = authenticate(username=username, password=password)
    #print(user)
    #return Response({'token': "token.key"}, status=HTTP_200_OK)
    
    if not user:
        return Response({'status':"201", 'details': 'Invalid Credentials'})
    
    #token = Token.objects.get(user=user)
    token, created_ = Token.objects.get_or_create(user=user)
    
    if token.created < timezone.now() - timezone.timedelta(minutes=720):
            #raise AuthenticationFailed('Token has expired')
            Token.objects.filter(user=user).delete()
            token = Token.objects.create(user=user)
    
    return Response({'status':"200", 'token': token.key})


from django.db import transaction
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# create user
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(['POST'])
@transaction.atomic()
def create_user(request):
    try:
        request_data =  request.data
        # request.data['status'] = 0

        if users.objects.filter(user_email = request_data['user_email']).exists():
            return Response({"message":"User email already exists","status":"201","data":[]})

        user_ser = user_serializer(data=request_data)
        if user_ser.is_valid(raise_exception=True):
            user_ser.save()

            user_obj = users.objects.latest('id')
            for country in request_data['countries']:
                country_data = {
                    "user_email": user_obj.user_email,
                    "user_country": country['user_country'],
                    "user_region": country['user_region']
                }
                country_ser = assigned_country_serializer(data=country_data)
                if country_ser.is_valid(raise_exception=True):
                    country_ser.save()

            return Response({"message":"successful","status":"200","data":[]})      
    except Exception as e:
        transaction.set_rollback(True)
        return Response({"message":str(e),"status":"201","data":[]})

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#  user details
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(['POST'])
def user_details(request):
    try:
        user_email = request.data['user_email']
        user_obj = users.objects.filter(user_email = user_email).first()
        if user_obj:
            user_ser = user_serializer_details(user_obj)
            return Response({"message":"successful","status":"200","data":[user_ser.data]})      
        else:
            return Response({"message":"successful","status":"200","data":[]})

    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#  user list
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(['POST'])
def user_list(request):
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
        objs = users.objects.filter(**json_data['field']).order_by(orderby)
        if str(SearchText) != "":
            objs = objs.filter(
                Q(user_name__icontains = SearchText) |
                Q(user_email__icontains = SearchText) |
                Q(user_region__icontains = SearchText) |
                Q(user_cadre__icontains = SearchText) |
                Q(access_permission__icontains = SearchText)
            ).order_by(orderby)
        # endif
        count = objs.count()
        objs = objs[page['startWith']:page['endWith']]  
        all_users = user_serializer_details(objs, many=True)
            
        return Response({"message": "Success","status": 200,"data":all_users.data, "counts":{"count":count}})
    except Exception as e:
        return Response({"message": str(e), "status": 201, "data":[]})
    

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Update user
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(['POST'])
@transaction.atomic()
def user_update(request):
    try:
        request_data = request.data
        fatchid = request_data['id']

        if users.objects.filter(user_email = request_data['user_email']).exclude(pk = fatchid).exists():
            return Response({"message":"User email already exists","status":"201","data":[]})
        
        user_obj = users.objects.filter(pk = fatchid).first()
        
        user_ser = user_serializer(instance=user_obj, data=request_data)
        if user_ser.is_valid(raise_exception=True):
            user_ser.save()

            if 'countries' in request_data:
                countries = request_data['countries']
                if len(countries) > 0:
                    country_id_array = []
                    for country in countries:
                        if country['id'] != "":
                            country_id_array.append(country['id'])
                        else:
                            country_data = {
                                "user_email": user_obj.user_email,
                                "user_country": country['user_country'],
                                "user_region": country['user_region']
                            }
                            country_ser = assigned_country_serializer(data = country_data)
                            if country_ser.is_valid(raise_exception=True):
                                saved_country = country_ser.save()

                                # Assuming the saved object is an instance of your model
                                country_id_array.append(saved_country.id)

                    # delete if countries not exists in response
                    assigned_country.objects.filter(user_email = request_data['user_email']).exclude(pk__in = country_id_array).delete()
                    # endfor
                # endif
            # endif
        return Response({"message":"successful","status":"200","data":[]})      
    except Exception as e:
        transaction.set_rollback(True)
        return Response({"message":str(e),"status":"201","data":[]})
    

