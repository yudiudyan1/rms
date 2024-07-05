from django.shortcuts import render, redirect  
from django.http import JsonResponse, HttpResponse
#from .forms import DropDownForm  
from .models import *
import requests, json
from django.db.models import Q, Value

from django.contrib import messages

from rest_framework.decorators import api_view    
from rest_framework import serializers
from rest_framework.response import Response
from .serializers import *
from rest_framework.parsers import JSONParser
# Create your views here.  
from django.conf import settings

from django.db import transaction
from datetime import date
import calendar

# from datetime import datetime
import datetime

from django.db import connection

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#upload_yearly_baseline_data
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(['POST'])
@transaction.atomic()
def upload_yearly_baseline(request):
    # try:
        request_data = request.data
        sheet_data = request_data['sheet_data'] 
        
        record_country = request.data['country']
        record_year = request.data['year']
        record_region = request.data['region']
        
        # if annual_summary.objects.filter(record_region = record_region, record_country = record_country, record_year = record_year).exists():
            # return Response({"message": f"The record of {record_country} for {record_year} already exists","status":"201","data":[]}) 
        
        if annual_summary.objects.filter(record_region = record_region, record_country = record_country).exists():
            return Response({"message": f"The record of {record_country} is already exists","status":"201","data":[]}) 
        
        curr_obj = country.objects.filter(country_name = record_country).first()
        if not curr_obj:
            return Response({"message": f"Invalid cuuntry?","status":"201","data":[]}) 
        pos_currency = curr_obj.local_currency_code

        emp_total_count = 0
        monthly_gross_payout = 0
        gbp_gross_payout = 0
        usd_gross_payout = 0
        euro_gross_payout = 0

        for rdata in sheet_data:
            annual_base_pay = rdata['annual_base_pay']

            key_pair = f"{str(rdata['country'])[0:3]}_{rdata['emp_ref_no']}_{rdata['emp_bu']}"
            rdata['key_pair'] = key_pair.upper()
            rdata['position_start_date'] = datetime.datetime.now()
            rdata['new_annual_amount'] = annual_base_pay

            local_curr_type = rdata['local_currency']
            local_country_obj = country.objects.filter(local_currency_code = local_curr_type).first()
            if not local_country_obj:
                return Response({"message": f"Invalid cuuntry?","status":"201","data":[]}) 
            
            pos_currency_annual_base_pay = annual_base_pay
            if pos_currency != local_curr_type:
                temp_usd_val = float(annual_base_pay) / float(local_country_obj.usd_average)
                pos_currency_annual_base_pay = temp_usd_val * curr_obj.usd_average
                

            rdata['gbp_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.gbp_average)
            rdata['usd_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.usd_average)
            rdata['euro_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.euro_average)
            

            baseLine_serializer = yearly_baseline_serializer(data = rdata)
            if baseLine_serializer.is_valid(raise_exception=True):
                baseLine_serializer.save()
                baseline_obj = yearly_baseline.objects.latest('id')

                print("baseline id:", baseline_obj.id)
                pos_data = {
                    "emp_ref_no": rdata['emp_ref_no'],
                    "region": baseline_obj.region,
                    "country": baseline_obj.country,
                    "position_id": "null",
                    "position_name": baseline_obj.current_job,
                    "baseline_total": baseline_obj.annual_base_pay,
                    "baseline_year": baseline_obj.t_year,
                    "new_annual_amount": baseline_obj.annual_base_pay,
                    "is_vacant": 0,
                    "is_active": 1,
                    "is_delta": 1,
                    "status": 1,
                    "pos_grade": baseline_obj.emp_grade,
                    "pos_function": baseline_obj.emp_function,
                    "pos_bu": baseline_obj.emp_bu,
                    "pos_fte": baseline_obj.fte,
                    "pos_manager": baseline_obj.sup_name,
                    "pos_manager_job_title": baseline_obj.sup_job_title,
                    "pos_bonus": baseline_obj.bonus,
                    "pos_local_curr": baseline_obj.local_currency,
                    "pos_car_allowance": baseline_obj.car_allowance,
                    "pos_currency": baseline_obj.local_currency,
                    "is_approved": 1,
                    "pos_end_date": baseline_obj.position_end_date,
                    "total_cost": baseline_obj.total_cost, # added new key
                    "payroll_burden": baseline_obj.payroll_burden, # added new key
                    "pos_gross_pay": baseline_obj.pos_gross_pay,
                    "pos_net_pay": baseline_obj.pos_net_pay,
                    "postion_baseline_total": baseline_obj.postion_baseline_total,
                    "gbp_annual_base_pay": baseline_obj.gbp_annual_base_pay,
                    "usd_annual_base_pay": baseline_obj.usd_annual_base_pay,
                    "euro_annual_base_pay": baseline_obj.euro_annual_base_pay
                }

                pos_serializer = position_serializer(data = pos_data)
                if pos_serializer.is_valid(raise_exception=True):
                    pos_serializer.save()
                    pos_obj = position.objects.latest("id")
                    # pos_n = str(pos_obj.country)[0:2]
                    position_id = f"{str(pos_obj.country)[0:3]}_{pos_obj.id}"
                    pos_obj.position_id = position_id.upper()
                    pos_obj.save()

                    # update pos_id in yearly baseline table
                    baseline_obj.position_id = position_id.upper()
                    # key_pair = f"{str(baseline_obj.country)[0:3]}_{baseline_obj.emp_ref_no}_{baseline_obj.emp_bu}"
                    # print("key_pair", key_pair)
                    # baseline_obj.key_pair = key_pair.upper()
                    baseline_obj.save()

                    emp_total_count += 1
                    # monthly_gross_payout += float(baseline_obj.annual_base_pay)
                    monthly_gross_payout += float(pos_currency_annual_base_pay)

                    gbp_gross_payout += float(baseline_obj.gbp_annual_base_pay)
                    usd_gross_payout += float(baseline_obj.usd_annual_base_pay)
                    euro_gross_payout += float(baseline_obj.euro_annual_base_pay)
                

        monthly_gross_payout = round(monthly_gross_payout, 2)
        print("emp_total_count", emp_total_count)
        print("monthly_gross_payout", monthly_gross_payout)

        # first_row_obj = sheet_data[0]
        # >> create monthley summery for baseline
        summry_data = {
            "record_region": request_data['region'],
            "record_country":request_data['country'],
            "record_year": request_data['year'],
            "emp_total_count": emp_total_count,
            "emp_new_count":0,
            "emp_left_count":0,
            "monthly_gross_payout": monthly_gross_payout,
            "gbp_gross_payout": gbp_gross_payout,
            "usd_gross_payout": usd_gross_payout,
            "euro_gross_payout": euro_gross_payout,
            "left_gross_payout":0,
            "status":0,
            "created_date": str(datetime.date.today()),
            "uploaded_by": request_data['uploaded_by'], # user email id 
            "security_code":"NA",
            "is_security_code_used":0,
            "sheet_key":"",
            "ymd_date": str(datetime.date.today()),
            "sheet_url": request_data['sheet_url'],
            "issync":0
        }

        # print("summry_data", summry_data)
        summery_serializer = annual_summary_serializer(data = summry_data)
        if summery_serializer.is_valid(raise_exception=True):
            summery_serializer.save()

        # fetchdata=DropDown.objects.filter(pk=fetchid).delete()
        return Response({"message":"successful","status":"200","data":[]})        
    # except Exception as e:
    #     transaction.set_rollback(True)
    #     return Response({"message":str(e),"status":"201","data":[]})

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# upload_monthly_baseline_data
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
@api_view(['POST'])
@transaction.atomic()
def upload_monthly_baseline(request):
    try:
        request_data   = request.data
        sheet_data     = request_data['sheet_data']
        record_country = request.data['country']
        record_year    = request.data['year']
        record_month   = request.data['month']
        record_region  = request.data['region']

        # befoure uploading mothly baseline for the select month check yearly base also exists or not
        if not annual_summary.objects.filter(record_region = record_region, record_country = record_country, record_year__lte = record_year).exists():
            return Response({"message": f"The baseline record for the {record_country} for the year {record_year} was not found","status":"201","data":[]}) 

        # befoure uploading mothly baseline for the select month check given moth data already exists or not
        if monthly_summary.objects.filter(record_region = record_region, record_country = record_country, record_year__gte = record_year, record_month__gte = record_month).exists():
           return Response({"message": f"A record for the {record_country} for a period of {record_month} month or less in {record_year} already exists in the database.","status":"201","data":[]}) 
        
        # check privious delta fully reconcile or not
        if delta_monthly.objects.filter(country = record_country, is_recon = 0).exists():
            return Response({"message": f"To upload the baseline data for the selected month in {record_country}, please first reconcile the previous delta changes","status":"201","data":[]}) 
        
        emp_total_count = 0
        monthly_gross_payout = 0
        gbp_gross_payout = 0
        usd_gross_payout = 0
        euro_gross_payout = 0

        left_gross_payout = 0
        new_joinner = 0

        emp_ref_no_arr = []
        for rdata in sheet_data:
            
            # # >> calculate no of postions and there gross payout
            annual_base_pay = rdata['annual_base_pay'] if (rdata['annual_base_pay'] != None or rdata['annual_base_pay'] != "") else 0
            
            emp_ref_no_arr.append(rdata['emp_ref_no'])

            key_pair = f"{str(rdata['country'])[0:3]}_{rdata['emp_ref_no']}_{rdata['emp_bu']}"
            rdata['key_pair'] = key_pair.upper()
            # rdata['position_id'] = ""
            emp_ref_no = rdata['emp_ref_no']

            # >> check emp_ref_no is already exists on given month or not
            monthly_baseline_emp_data = monthly_baseline.objects.filter(country = record_country, t_year = record_year, t_month = record_month, emp_ref_no = emp_ref_no).first()
            if monthly_baseline_emp_data:
                continue

            rdata['new_annual_amount'] = rdata['annual_base_pay']

            local_curr_type = rdata['local_currency']
            local_country_obj = country.objects.filter(local_currency_code = local_curr_type).first()
            if not local_country_obj:
                return Response({"message": f"Invalid cuuntry?","status":"201","data":[]}) 
            
            rdata['gbp_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.gbp_average)
            rdata['usd_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.usd_average)
            rdata['euro_annual_base_pay'] = float(annual_base_pay) / float(local_country_obj.euro_average)
            

            
            # >> check emp_ref_no is already exists on given month or not
            baseLine_serializer = monthly_baseline_serializer(data = rdata)
            if baseLine_serializer.is_valid(raise_exception=True):
                baseLine_serializer.save()
                baseline_obj = monthly_baseline.objects.latest('id')
                # print("monthly baseline id:", baseline_obj.id)

                # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                yearly_baseline_data = yearly_baseline.objects.filter(country = record_country, emp_ref_no = emp_ref_no).first()
                # yearly_baseline_data = yearly_baseline.objects.filter(country = record_country, t_year = record_year, emp_ref_no = emp_ref_no).first()
                if yearly_baseline_data:

                    # >> calculate no of postions and there gross payout
                    emp_total_count += 1

                    # >> calculate no of postions and there gross payout
                    monthly_gross_payout += float(annual_base_pay)
                    
                    gbp_gross_payout += float(baseline_obj.gbp_annual_base_pay)
                    usd_gross_payout += float(baseline_obj.usd_annual_base_pay)
                    euro_gross_payout += float(baseline_obj.euro_annual_base_pay)

                    
                    #yearly_baseline_data = yearly_baseline.objects.filter(country = record_country, t_year = record_year, emp_ref_no = emp_ref_no).update(position_end_date=baseline_obj.position_end_date)
                
                    yearly_baseline_data.position_end_date = baseline_obj.position_end_date
                    yearly_baseline_data.save()
                    
                    pos_end_date = yearly_baseline_data.position_end_date
                    baseline_obj.position_id = yearly_baseline_data.position_id
                    baseline_obj.save()
                    
                    # check pos_end_date is not equal to None or blank
                    if str(pos_end_date) != 'None':
                        if str(pos_end_date) != '':
                        
                            # compair pos_end_date expire or not
                            if int(pos_end_date.month) < int(record_month):
                                print("if postion expire then") 
                                new_joinner += 1
                                pos_type = "Joiners"
                                create_delta_monthly(pos_type, yearly_baseline_data, record_month)
                            else:
                                pass
                        else:
                            pass
                    else:
                        pass
                else:
                    new_joinner += 1
                    pos_type = "Joiners"
                    create_delta_monthly(pos_type, baseline_obj, record_month)
                    
                # endif
            # endif
        # endfor

        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        # >> find leavers
        leaver_list =  yearly_baseline.objects.filter(
            region = record_region, 
            country = record_country, 
            t_year = record_year,
            is_active = 1
        ).exclude(emp_ref_no__in = emp_ref_no_arr).values_list("position_id", flat=True)
        
        leaver_list = list(leaver_list)
        # leaver_count = len(leaver_list)
        leaver_count = 0

        # >> update_leaver_in_pos
        leaver_in_pos = yearly_baseline.objects.filter(position_id__in = leaver_list, is_active = 1)
        for leaver_pos in leaver_in_pos:
            pos_type = "Leavers"
            
            emp_total_count +=1 
            monthly_gross_payout += float(leaver_pos.annual_base_pay)
            gbp_gross_payout += float(baseline_obj.gbp_annual_base_pay)
            usd_gross_payout += float(baseline_obj.usd_annual_base_pay)
            euro_gross_payout += float(baseline_obj.euro_annual_base_pay)
            
            pos_obj = position.objects.filter(position_id = leaver_pos.position_id).first()
            if pos_obj.is_vacant == 1:
                continue    

            # left_gross_payout += float(leaver_pos.annual_base_pay)

            # create delta entry for leaver postions 
            create_delta_monthly(pos_type, leaver_pos, record_month)

        monthly_gross_payout = round(monthly_gross_payout, 2)
        left_gross_payout = round(left_gross_payout, 2)

        # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        # >> create monthley summery for baseline
        summry_data = {
            "record_region": request_data['region'],
            "record_country":request_data['country'],
            "record_year": request_data['year'],
            "record_month": request_data['month'],
            "emp_total_count": emp_total_count,
            "emp_new_count": new_joinner,
            "emp_left_count": leaver_count,
            "monthly_gross_payout": monthly_gross_payout,
            "gbp_gross_payout": gbp_gross_payout,
            "usd_gross_payout": usd_gross_payout,
            "euro_gross_payout": euro_gross_payout,
            "left_gross_payout": left_gross_payout,
            "status":1,
            "created_date": str(datetime.date.today()),
            "uploaded_by": request_data['uploaded_by'], # user email id 
            "security_code":"NA",
            "is_security_code_used":0,
            "sheet_key":"",
            "ymd_date": str(datetime.date.today()),
            "sheet_url": request_data['sheet_url'],
            "issync":0
        }

        # print("summry_data", summry_data)
        summery_serializer = monthly_summary_serializer(data = summry_data)
        if summery_serializer.is_valid(raise_exception=True):
            summery_serializer.save()

        # fetchdata=DropDown.objects.filter(pk=fetchid).delete()
        return Response({"message":"successful","status":"200","data":[]})        
    except Exception as e:
        transaction.set_rollback(True)
        return Response({"message":str(e),"status":"201","data":[]})
    


# TRUNCATE `master_annual_summary`; TRUNCATE `master_delta_monthly`; TRUNCATE `master_monthly_baseline`; TRUNCATE `master_monthly_summary`; TRUNCATE `master_position`; TRUNCATE `master_yearly_baseline`;
# >>>>>>>>>>>>>>>>>>>>>>>

# >>>>>>>>>>>>>>>>>>>>>>>
def create_delta_monthly(pos_type, pos_data, month):
    delta_data={
        "position_id": pos_data.position_id,
        "record_region": pos_data.record_region,
        "country": pos_data.country,
        "base_pay_monthly": pos_data.annual_base_pay,
        "month": month,
        "year": pos_data.t_year,
        # "closed_date": "",
        "emp_ref_no": pos_data.emp_ref_no,
        "emp_BU": pos_data.emp_bu,
        "curr_summery_key": pos_data.summery_key,
        "current_job": pos_data.current_job,
        "position_type": pos_type,
        "sga_direct": pos_data.sga_indirect,
        "gbp_annual_base_pay": pos_data.gbp_annual_base_pay,
        "usd_annual_base_pay": pos_data.usd_annual_base_pay,
        "euro_annual_base_pay": pos_data.euro_annual_base_pay
    }

    delta_serializer = delta_monthly_serializer(data=delta_data)
    if delta_serializer.is_valid(raise_exception=True):
        delta_serializer.save()


#DropDown delete
@api_view(['GET'])
def get_yearly_baseline(request):
    try:
        request_data = request.data
        objs = yearly_baseline.objects.all()
        baseLine_serializer = yearly_baseline_serializer(objs, many=True)
        return Response({"message":"successful","status":"200","data":baseLine_serializer.data})
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
from django.db import connection

@api_view(['POST'])
def monthly_employee_chart(request):
    try:
        request_data = request.data
        # record_year = request_data.get('year')
        # record_country = request_data.get('country')
        record_country = str(request_data['country']).replace(",", "','")
        latest_year = monthly_summary.objects.filter(record_country=record_country).aggregate(Max('record_year'))['record_year__max']

        monthly_employee_chart_query = f"""
            SELECT 
                SUM(COALESCE(mms.emp_total_count, 0)) AS pos_count,
                m.month AS month,
                max(mms.id) as id
            FROM 
                (SELECT 1 AS month UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12) m
            LEFT JOIN 
                master_monthly_summary mms
            ON 
                m.month = mms.record_month AND mms.record_country IN ('{record_country}')
            GROUP BY m.month
            ORDER BY m.month
        """

        with connection.cursor() as cursor:
            cursor.execute(monthly_employee_chart_query)
            columns = [col[0] for col in cursor.description]
            results = [
                dict(zip(columns, row))
                for row in cursor.fetchall()
            ]

        return Response({"message": "successful", "status": "200", "data": results})
    except Exception as e:
        return Response({"message": str(e), "status": "500", "data": []})

# {"country": "Nepal,India"}
@api_view(['POST'])
def yearly_employee_chart(request):
    try:
        request_data = request.data
        record_country = str(request_data['country']).replace(",", "','")

        current_year = datetime.datetime.now().year

        # COALESCE(mas.record_country, '{record_country}') AS record_country,
        yearly_employee_chart_query = f"""
            SELECT
                COALESCE(SUM(mas.emp_total_count), 0) AS pos_count,
                y.year AS record_year
            FROM
                (SELECT {current_year} AS year
                UNION ALL SELECT {current_year - 1}
                UNION ALL SELECT {current_year - 2}
                UNION ALL SELECT {current_year - 3}
                UNION ALL SELECT {current_year - 4}) y
            LEFT JOIN
                master_annual_summary mas
            ON
                y.year = mas.record_year AND mas.record_country in('{record_country}')
            GROUP BY 
                y.year
            ORDER BY
                y.year DESC
        """
        print(yearly_employee_chart_query)

        with connection.cursor() as cursor:
            cursor.execute(yearly_employee_chart_query)
            columns = [col[0] for col in cursor.description]
            results = [
                dict(zip(columns, row))
                for row in cursor.fetchall()
            ]

        return Response({"message": "successful", "status": "200", "data": results})
    except Exception as e:
        return Response({"message": str(e), "status": "500", "data": []})

from django.db.models import Max
@api_view(['POST'])
def dashboard_count(request):
    try:
        record_country = request.data.get('country')

        country_arr = record_country.split(",")

        asd = annual_summary.objects.filter(record_country__in = country_arr).first()
        # Get the latest month object for the specified country in the latest year
        # latest_year = monthly_summary.objects.filter(record_country=record_country).aggregate(Max('record_year'))['record_year__max']
        msd = monthly_summary.objects.filter(record_country__in = country_arr).order_by('-id').first()

        json_data = []
        if asd and msd:
            role_vs_baseline = int(msd.emp_total_count) - int(asd.emp_total_count)

            exception_count = delta_monthly.objects.filter(country__in = country_arr, is_recon = 0).count()

            cost_vs_baseline = int(msd.monthly_gross_payout) - int(asd.monthly_gross_payout)

            #Roles versus Basline	Roles v Plan	Cost versus Baseline  
            json_data = [{ "role_vs_baseline": role_vs_baseline, "exception": exception_count, "cost_vs_baseline": cost_vs_baseline }]
        else:
            json_data = [{ "role_vs_baseline": 0, "exception": 0, "cost_vs_baseline": 0 }]

        return Response({"message":"successful","status":"200","data":json_data})
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})

@api_view(['POST'])
def monthly_delta_list_bkp(request):
    try:
        request_data = request.data
        record_year = request_data.get('year')
        record_month = request_data.get('month')
        record_country = request_data.get('country')

        delta_monthly_data = delta_monthly.objects.filter( country = record_country, year = record_year, month = record_month, is_recon = 1)
        delta_monthly_json = delta_monthly_serializer(delta_monthly_data, many=True)
        data_arr =[]
        for data in delta_monthly_json.data:
            print(data['country'])
            if country.objects.filter(country_name=data['country']).exists():
                cur_data = country.objects.filter(country_name=data['country'])[0]
                cur_ser = country_serializer(cur_data, many=False)
                cur_data = json.loads(json.dumps(cur_ser.data))                
                data['currency'] = [cur_data]
            else:
                data['currency'] = []
            data_arr.append(data)

        return Response({"message":"successful","status":"200","data":data_arr})  
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})
    
# {
#     "year": "2024",
#     "record_country": "Botswana"
# }


# {
#     "country": "India",
#     "year": "2024",
#     "month": "6"
# }


@api_view(['POST'])
def monthly_delta_list(request):
    try:
        country = request.data.get('country')

        close_list = yearly_baseline.objects.filter(country = country, is_active = 0)
        join_list = yearly_baseline.objects.filter(country = country, issync = 1)

        close_json = yearly_baseline_serializer_custom(close_list, many=True)
        join_json = yearly_baseline_serializer_custom(join_list, many=True)
        
        both_json = close_json.data + join_json.data
        
        return Response({"message":"successful","status":"200","data":both_json})  
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})
    
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# get exceptions list
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
import pandas as pd

@api_view(['POST'])
def exception_list(request):
    try:
        country = request.data.get('country')
        year    = request.data.get('year')
        country_arr = country.split(",")

        delta_objs = delta_monthly.objects.filter(year = year, country__in = country_arr)
        delta_json = delta_monthly_serializer(delta_objs, many=True)

        grouped_data = []
        if delta_objs:
            # Convert the serialized JSON data to a list of dictionaries
            data_list = json.loads(json.dumps(delta_json.data))

            # Create DataFrame from the list of dictionaries
            df = pd.DataFrame(data_list)

            # Ensure 'month' column is numeric if needed
            df['month'] = pd.to_numeric(df['month'], errors='coerce')

            # Group the data by month
            grouped_df = df.groupby('month')

            # Convert grouped data to a dictionary for the response
            grouped_data = [
                {"month": month, "list": group.to_dict(orient='records')} for month, group in grouped_df
            ]

        return Response({"message": "successful", "status": "200", "data": grouped_data})
    
    except Exception as e:
        return Response({"message":str(e),"status":"201","data":[]})
    


