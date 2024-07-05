from django.urls import path,include
from .views import *
from master import views, baseline_view

urlpatterns = [
    path('create', create),
    path('create_position', create_position),
    path('update_position', update_position),
    path('all', all),
    path('update', update),
    path('delete', delete),
    path('static/all', static_all),
    
    path('country_all', country_all),
    path('country_all_byuser', country_all_byuser),
    path('country_create_update', country_create_update),
    path('country_check_byuser', country_check_byuser),
    path('region_all_byuser', region_all_byuser),
    path('baseline_delta', baseline_delta),
    path('approve_position', approve_position),
    
    path('joiners_reason', joiners_reason),
    
    path('leavers_action', leavers_action),
    path('joiners_action', joiners_action),
    
    # >>>>>>>>>>>>>>>>>
    # baseline api urls
    path('upload_yearly_baseline', baseline_view.upload_yearly_baseline),
    path('upload_monthly_baseline', baseline_view.upload_monthly_baseline),
    path('get_yearly_baseline', baseline_view.get_yearly_baseline),

    path('monthly_employee_chart', baseline_view.monthly_employee_chart),
    path('yearly_employee_chart', baseline_view.yearly_employee_chart),

    path('dashboard_count', baseline_view.dashboard_count),

    path('monthly_delta_list', baseline_view.monthly_delta_list),

    path('exception_list', baseline_view.exception_list),

    # position_actions apis
    path('pending_pos_action', pending_pos_action),
    path('assign_emp_on_position', assign_emp_on_position),
    path('unassign_emp_on_position', unassign_emp_on_position),
    path('pay_increase_in_position', pay_increase_in_position),
    path('approve_pos_action', approve_pos_action),

]

### test 2

