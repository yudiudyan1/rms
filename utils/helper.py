from django.utils import timezone
from master.models import(
    activity_history
)

''' save position all activity history data'''
def save_activity_history(old_objects, new_objects):
    update_dict = {}

    # Fields to exclude
    excluded_fields = ['is_vacant', 'is_active', 'is_delta', 'amount_based_approval',
                       'is_approved', 'pos_cxo_tasking', 'is_revenue_generating', 'emp_status']

    if old_objects is None:
        # Save all fields as new entries in activity_history if old_objects does not exist
        for field in new_objects._meta.fields:
            field_name = field.name
            if field_name not in excluded_fields:
                new_value = getattr(new_objects, field_name)
                update_dict[field_name] = {'old_value': None, 'new_value': new_value}
    else:
        # Compare and save only the changes if old_objects exists
        for field in old_objects._meta.fields:
            field_name = field.name
            if field_name not in excluded_fields:
                old_value = getattr(old_objects, field_name)
                new_value = getattr(new_objects, field_name)
                if old_value != new_value:
                    update_dict[field_name] = {'old_value': old_value, 'new_value': new_value}

    for field, values in update_dict.items():
        activity = activity_history(
            field_id=getattr(new_objects, 'id', ''),
            field_name=field,
            field_old_value=str(values['old_value']) if values['old_value'] is not None else '',
            field_new_value=str(values['new_value']) if values['new_value'] is not None else '',
            status=getattr(new_objects, 'status', ''),
            created_by=getattr(new_objects, 'updated_by', ''),
            effective_date=timezone.now(),
            created_at=timezone.now()
        )
        activity.save()

''' save position status activity history data'''
def save_poistion_approval_activity_history(object_data):
    activity = activity_history(
        field_id=getattr(object_data, 'id', ''),
        field_name='status',
        field_old_value=0,
        field_new_value=1,
        status=1,
        created_by=getattr(object_data, 'updated_by', ''),
        effective_date=timezone.now(),
        created_at=timezone.now()
    )
    activity.save()



