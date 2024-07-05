from django.contrib import admin
from django.urls import path, include
from drf_yasg.views import get_schema_view
from drf_yasg import openapi

schema_view = get_schema_view(
    openapi.Info(
        title="RMS API DOC",
        default_version='v1',
    ),
    public=True
)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('employee/', include('employee.urls')),
    path('master/', include('master.urls')),
    path('', include('smtp.urls')),
    path('', include('users.urls')),

    path('docs/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
     path('', include('checkuser_fordev.urls'))

]
