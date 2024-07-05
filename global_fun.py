import calendar
import os
import requests, json
import time
import math
import mysql.connector
from datetime import datetime, date

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
from email.mime.base import MIMEBase
from posixpath import basename
import smtplib

#from employee import views as EmpView
currentDate = date.today()
currentDay = calendar.day_name[currentDate.weekday()]  # this will return the day of a week
currentTime = datetime.today().strftime("%I:%M %p")


# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#
#                           ###################################
#                           ####### Send Email Function #######
#                           ###################################
#
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#
#
def sendMail(toEmail, subject, message, attachments, ccEmail=None):
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    try:
        
        ServerHost = "smtp.office365.com"
        ServerPort = 587 #465  # For starttls
        Sender = "bridge.support@cinntra.com"
        Password = "Dna@2024#"
        # Create message
        msg = MIMEMultipart()
        msg['Subject'] = subject
        msg['From'] = Sender
        msg['To'] = toEmail
        
        rcpt = [toEmail]
        if ccEmail !=None:
            msg['Cc'] = ccEmail
            ems = ccEmail.split(",")
            for em in ems:
                rcpt.append(em)
        
        msg.attach(MIMEText(message, "HTML"))
        if attachments != "":
            filename = os.path.basename(attachments)
            filename = filename.replace("%20", " ")
            attachUrl = '/home/www/b2b/ang_pre/bridge/bridge'+attachments
            attachUrl = attachUrl.replace("%20", " ")
            with open(attachUrl, "rb") as fil:
                part = MIMEApplication(
                        fil.read(),
                        Name=basename(attachUrl)
                )
            part['Content-Disposition'] = 'attachment; filename="%s"' % filename
            msg.attach(part)
        # Create server object with SSL option
        server = smtplib.SMTP(ServerHost, ServerPort)
        # Perform operations via server
        server.ehlo()
        server.starttls()
        server.login(Sender, Password)
        print("toEmail",rcpt)
        server.sendmail(Sender, rcpt, msg.as_string())
        server.quit()
        print('sent : ')
    except Exception as e:
        print(str(e))
        return str(e)
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#
#
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
def days_between(d1, d2):
    d1 = datetime.strptime(d1, "%Y-%m-%d")
    d2 = datetime.strptime(d2, "%Y-%m-%d")
    print("diff", abs((d2 - d1).days))
    return abs((d2 - d1).days)
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#
#
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
def get_fq(inp):
    if inp.lower() =="yearly":
        fq = 1
    elif inp.lower() =="half yearly":
        fq = 2
    elif inp.lower() =="quarterly":
        fq=4
    elif inp.lower() =="monthly":
        fq=12
    else:
        fq=1
    return fq
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#
#
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


def PAGE(json_data):
    arr={}
    try:
        if str(json_data['maxItem']).lower()=="all":
            endWith=None
            startWith=0
            arr['startWith'] = startWith
            arr['endWith'] = endWith
            return arr
        else:
            PageNo = json_data['PageNo']
            try:
                MaxItem = int(json_data['maxItem'])
            except:
                MaxItem = 10
            endWith = (PageNo * MaxItem)
            startWith = (endWith - MaxItem)

            arr['startWith'] = startWith
            arr['endWith'] = endWith
            return arr
    except Exception as e:
        print(str(e))
        return str(e)