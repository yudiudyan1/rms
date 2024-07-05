import os
import socket
import pymysql
from pytz import timezone
from datetime import datetime
from pathlib import Path

pymysql.install_as_MySQLdb()


# Default to port 8000 if DJANGO_PORT is not set
DJANGO_PORT = int(os.environ.get('DJANGO_PORT', 8000))

# Update ALLOWED_HOSTS to include Docker container IP or hostname
# ALLOWED_HOSTS = ['localhost', '127.0.0.1', '0.0.0.0']
ALLOWED_HOSTS = ["*"]


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start vision_test settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-mn1(um@%7zpkq2vi#yh^3&yx*q(asx9!dshy@=3qxkj!@@392_'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True


"""
#CORS_ALLOW_ALL_ORIGINS = True # If this is used then `CORS_ALLOWED_ORIGINS` will not have any effect
#CORS_ALLOW_CREDENTIALS = True

CORS_ORIGIN_ALLOW_ALL = True

CORS_ORIGIN_WHITELIST = (
    'http://192.168.29.51:4234', 'http://localhost:4234'
)
"""

# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'rest_framework',
    'rest_framework.authtoken',
    'bridge',
    'employee',
    'master',
    'corsheaders',
    'smtp',
    'users',
    'drf_yasg',
    'checkuser_fordev'
]

"""
#add for root session
REST_FRAMEWORK = {
    
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework.authentication.SessionAuthentication',
    ],
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',
    ],
    'DEFAULT_AUTHENTICATION_CLASSES': [
    'rest_framework.authentication.TokenAuthentication',
    ],
    'DEFAULT_AUTHENTICATION_CLASSES': [
    'bridge.custom_token_authentication.CustomTokenAuthentication',
    ],

}
"""


MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'corsheaders.middleware.CorsMiddleware'
]

ROOT_URLCONF = 'bridge.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')], 
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'bridge.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases


HOSTNAME = socket.gethostname()
IP = socket.gethostbyname(HOSTNAME)

if IP=="10.10.42.92":
    pwd = "R$TB?GFe#d34"
else:
    pwd = "root"

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.mysql',
#         'NAME': 'rms',
#         'USER': 'root',
#         'PASSWORD': 'user',
#         'HOST': 'localhost',
#         'PORT': '3306',
#     }
# }


# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'Asia/Kolkata'

USE_I18N = True

USE_L10N = True

#USE_TZ = True
USE_TZ = False

CORS_ORIGIN_ALLOW_ALL = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/


# STATIC_URL = '/static/'
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# URL to use when referring to static files (where they will be served from)
STATIC_URL = '/static/'


# The absolute path to the directory where collectstatic will collect static files for deployment.
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')


# Additional locations the staticfiles app will traverse if the FileSystemFinder finder is enabled.
# STATICFILES_DIRS = [
#     os.path.join(BASE_DIR, 'static'),
# ]


# Define the location for user-uploaded files
MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')


# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


SAPURL = 'http://000.000.0.00:50001/b1s/v1'


# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


def NONE(inp):
	if type(inp)!=int:
		return 0;
	else:
		return inp


def SALESTEAM(SalesPersonID):
	Admins = ["Admin", "Managing Director", "General Manager"]
	Managers = ['Sales Manager', 'Branch Manager']
		
	emp_obj =  employee.objects.get(SalesEmployeeCode=SalesPersonID)
				
	if emp_obj.role.Name in Managers:
		emps = employee.objects.filter(reportingTo=SalesPersonID)#.values('id', 'SalesEmployeeCode')
		SalesPersonID=[SalesPersonID]
		for emp in emps:
			SalesPersonID.append(emp.SalesEmployeeCode)
		
	elif emp_obj.role.Name in Admins:
		emps = employee.objects.filter(SalesEmployeeCode__gt=0)
		SalesPersonID = []
		for emp in emps:
			SalesPersonID.append(emp.SalesEmployeeCode)
	else:
		SalesPersonID = [json_data['SalesPerson']]
	return SalesPersonID


def PAGE(json_data):
    arr = {}
    try:
        if str(json_data['maxItem']).lower() == "all":
            endWith = None
            startWith = 0
            arr['startWith'] = startWith
            arr['endWith'] = endWith
            return arr
        else:
            PageNo = json_data['PageNo']
            try:
                MaxItem = int(json_data['maxItem'])
            except ValueError:
                MaxItem = 10
            except KeyError:
                MaxItem = 10  # Handle KeyError if 'maxItem' is missing in json_data
            except Exception as e:
                print(f"An unexpected error occurred: {e}")
                MaxItem = 10  # Handle any other unexpected exceptions
            endWith = (PageNo * MaxItem)
            startWith = (endWith - MaxItem)

            arr['startWith'] = startWith
            arr['endWith'] = endWith
            return arr
    except Exception as e:
        print(str(e))
        return str(e)


"""select region,country,position_id,position_name,baseline_total from position_master WHERE 1=1 and
country='japan' order by baseline_total desc limit 20,30,"""


def LIMIT(json_data):
    try:
        if str(json_data['max']).lower() == "all":
            return ""
        else:
            PageNo = int(json_data['page'])
            try:
                MaxItem = int(json_data['max'])
            except ValueError:
                MaxItem = 10
            except KeyError:
                MaxItem = 10  # Handle KeyError if 'maxItem' is missing in json_data
            except Exception as e:
                print(f"An unexpected error occurred: {e}")
                MaxItem = 10  # Handle any other unexpected exceptions
            endWith = (PageNo * MaxItem)
            startWith = (endWith - MaxItem)

            return "limit "+str(MaxItem)+" OFFSET "+str(startWith)
    except Exception as e:
        print(str(e))
        return str(e)


def GET_DATE():
    todayDate = datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d')
    print("get date", todayDate)
    return todayDate


def GET_NOW():
    now = datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d %H:%M:%S')
    print("get now", now)
    return now


def GET_NOWTIME():
    nowtime = datetime.now(timezone("Asia/Kolkata")).strftime('%H:%M:%S')
    print("get now time", nowtime)
    return
