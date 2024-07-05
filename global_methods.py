from employee.models import *
from Order.models import Order, DocumentLines as OrderDocumentLines

from datetime import date, datetime, timedelta

import sys, os
import pytz
# get the standard UTC time
UTC = pytz.utc

#@api_view(["POST"])
def tree(SalesEmployeeCode):
        emp_obj =  employee.objects.filter(SalesEmployeeCode=SalesEmployeeCode)
        print(emp_obj[0].role)
        i=1
        while int(emp_obj[0].reportingTo) !=0:
            emp_obj = employee.objects.filter(SalesEmployeeCode=emp_obj[0].reportingTo)
            if emp_obj[0].role == 'admin':
                i=i+0
            else:
                i=i+1
        print(str(i))
        return str(i)
    #return Response({"message":"Success", "status":200, "data":[{"Level":str(i)}]})

def employeeViewAccess(SalesEmployeeCode):
    allSalesEmployeeCode=[]
    emp_obj =  employee.objects.get(SalesEmployeeCode=SalesEmployeeCode)
    EmployeeRole = str(emp_obj.role).lower()
    unitt = emp_obj.unit
    print("Employee Role: ", EmployeeRole)
    if EmployeeRole == 'admin':
        print('in 1st condition', EmployeeRole)
        emps = employee.objects.filter(SalesEmployeeCode__gt=0, Active = "tYES").exclude(role = 'Commission Agent')
        for emp in emps:
            allSalesEmployeeCode.append(emp.SalesEmployeeCode)

    elif EmployeeRole == 'director' or EmployeeRole == 'cro':
        print('in 2ed condition', EmployeeRole)
        emps = employee.objects.filter(SalesEmployeeCode__gt=0, Active = "tYES").exclude(role = 'Commission Agent')
        allSalesEmployeeCode=[SalesEmployeeCode]
        for emp in emps:
            allSalesEmployeeCode.append(emp.SalesEmployeeCode)

    elif EmployeeRole == 'unit head':
        print('in 3rd condition', EmployeeRole)
        allSalesEmployeeCode = getAllReportingToIds(SalesEmployeeCode)
        # emps = employee.objects.filter(reportingTo=SalesEmployeeCode, Active = "tYES", unit = unit).exclude(role = 'Commission Agent')
        # allSalesEmployeeCode=[SalesEmployeeCode]
        # for emp in emps:
        #     allSalesEmployeeCode.append(emp.SalesEmployeeCode)

    elif EmployeeRole == 'area sales manager':
        print('in 4th condition', EmployeeRole)
        allSalesEmployeeCode = getAllReportingToIds(SalesEmployeeCode)
        # emps = employee.objects.filter(reportingTo=SalesEmployeeCode, Active = "tYES").exclude(role = 'Commission Agent')
        # for emp in emps:
        #     allSalesEmployeeCode.append(emp.SalesEmployeeCode)
    elif EmployeeRole == 'logistics executive':
        print('in 5th condition', EmployeeRole)
        allSalesEmployeeCodee = employee.objects.filter(unit=unitt)
        for i in allSalesEmployeeCodee:
            allSalesEmployeeCode.append(i.SalesEmployeeCode)
    else:
        print('in else condition', EmployeeRole)
        allSalesEmployeeCode=[SalesEmployeeCode]
    return allSalesEmployeeCode

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>> list salesperson code tree wise >>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# function to get all reporting reporting person SalesEmployeeCode
def getAllReportingToIds(EmpCode):
    data = []
    def recrusiveMethod(id):
        print('recursive call', id)
        print("paas",id)
        data.append(id)
        print('exit',id)
        emp_obj =  employee.objects.filter(reportingTo=id)
        for obj in emp_obj:
            recrusiveMethod(int(obj.SalesEmployeeCode))
        # endfor
    #endfun
    recrusiveMethod(int(EmpCode))
    return data

# function to get all reporting reporting person id
def getAllReportingToUserId(id):
    data = []
    empObj = employee.objects.get(pk = id)
    def recrusiveMethod(obj):
        print('recursive call', obj.id)
        data.append(obj.id)
        emp_obj =  employee.objects.filter(reportingTo=obj.SalesEmployeeCode)
        for obj in emp_obj:
            recrusiveMethod(obj)
        # endfor
    #endfun
    recrusiveMethod(empObj)
    return data

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>> find Todays total quntity of item sales by unit >>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# by unit
def findTodaysUnitSales(Unit):
    Unit = str(Unit).lower()
    totalSalesInKG = 0
    currentDate = date.today()
    if Order.objects.filter(Unit__icontains = Unit, CreateDate = str(currentDate), ApprovalStatus = 'Approved').exists():

        # get all order ites belongs to given unit
        orderIds = list(Order.objects.filter(Unit__icontains = Unit, CreateDate = str(currentDate), ApprovalStatus = 'Approved').values_list('id', flat=True))
        
        # get all UnitWeight by order id
        orderItems = OrderDocumentLines.objects.filter(OrderID__in = orderIds).values('UnitWeight','Quantity')
        
        # sum of all UnitWeight
        for i in orderItems:
            if (str(i['UnitWeight']).strip()) != '':
                # print("Weight: ", i['UnitWeight'], "Qty: ", i['Quantity'])
                totalSalesInKG = (totalSalesInKG + (float(i['UnitWeight']) * int(i['Quantity'])))
            # endif
        # endfor
    # endif
    return totalSalesInKG

# by BusinessPartner
def findTodaysUnitSalesByBP(Unit, CardCode):
    Unit = str(Unit).lower()
    totalSalesInKG = 0
    currentDate = date.today()
    if Order.objects.filter(Unit__icontains = Unit, CreateDate = str(currentDate), ApprovalStatus = 'Approved', CardCode = CardCode).exists():

        # get all order ites belongs to given unit
        orderIds = list(Order.objects.filter(Unit__icontains = Unit, CreateDate = str(currentDate), ApprovalStatus = 'Approved', CardCode = CardCode).values_list('id', flat=True))
        
        # get all UnitWeight by order id
        orderItems = OrderDocumentLines.objects.filter(OrderID__in = orderIds).values('UnitWeight','Quantity')
        
        # sum of all UnitWeight
        for i in orderItems:
            if (str(i['UnitWeight']).strip()) != '':
                # print("Weight: ", i['UnitWeight'], "Qty: ", i['Quantity'])
                totalSalesInKG = (totalSalesInKG + (float(i['UnitWeight']) * int(i['Quantity'])))
            # endif
        # endfor
    # endif
    return totalSalesInKG


def orderrequestapprovalusers(eid):
    user_list = []
    eobj = employee.objects.filter(SalesEmployeeCode=eid).first()
    if eobj.role == "Unit Head":
        eobj = employee.objects.filter(SalesEmployeeCode=eid)
    return user_list


def order_support_view(eid):
    user_list = []
    eobj = employee.objects.filter(SalesEmployeeCode=eid).first()
    if eobj.role == "Unit Head":
        eobj = employee.objects.filter(SalesEmployeeCode=eid)
        for i in eobj:
            user_list.append(i.SalesEmployeeCode)
    elif eobj.role == "CRO" or eobj.role == "admin" or eobj.role == "Director":
        eobj = employee.objects.all()
        for i in eobj:
            user_list.append(i.SalesEmployeeCode)
    else:
        user_list = [eid]
    return user_list

