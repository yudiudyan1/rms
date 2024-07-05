import requests, json
import time
import math
import mysql.connector

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
from email.mime.base import MIMEBase
from posixpath import basename
import smtplib

from pyfcm import FCMNotification
import os
import urllib

def sendNotification(DeviceId, Title, Message):
    try:
        push_service = FCMNotification(api_key="AAAAbatpOys:APA91bHANX5P9VlXkIP7Apzx8oi0khQSXjTXmwRdFsyg3HZEvHs3lh8iDYTdCWpHNhC-uXHnkivYRqZ4r8XnknRu12Xg7lF5H2QM9IW-A0RlJi9Z7JeAO2mKVElquBzrRXulGp0_ORO8") # vision 

        registration_id = "c_EbPZTSRlOWdlmNz6Ntcu:APA91bGEL9tQHNlAY0TztlnKOLSsFELQUKJ6dyujRt3SP8HRTeQAnMo5kr-7VZLhD_nU3FMyA8nm03wlR8i56YB2CPNh1G7dWcc2qKMt8PY0sVjLg2-CVDaEubYohmHxBJFGps6J8zaZ"
        # message_title = "Test Notification"
        # message_body = "Hi Abhishek, your customized news for today is ready"
        message_title = Title
        message_body = Message
        result = push_service.notify_single_device(registration_id=registration_id, message_title=message_title, message_body=message_body, content_available=True)
        
        # To support rich notifications on iOS 10, set
        extra_kwargs = {
            'mutable_content': True
        }

        print(result)
        return "sent"
    except Exception as e:
        return str(e)

#getAllReportingToIds(131)
#getAllReportingToIdsSubdep(131, "Sales")

def saplogin():
##    mydb = mysql.connector.connect(
##      host="localhost",
##      user="root",
##      password="$Bridge@2022#",
##      database="massead_pre"
##    )
##    mycursor = mydb.cursor()
    print("test comment")

##    with open("bridge/db.json") as f:
##        db = f.read()
##        print(db)
##    data = json.loads(db)
##
##    r = requests.post('http://157.241.48.182:50001/b1s/v1/Login', data=json.dumps(data), verify=False)
##    token = json.loads(r.text)['SessionId']
##    print(token)

saplogin()

def sendWhatsAppMsg(number, msg, Attachments):
    # insetanceId = "621f17f4cd00c56ad254fd4f"
    #insetanceId = "62f0dedb0857b14e2d3775c9"
    insetanceId = "64bf6eaaf010b5f71161ee53"
    
    
    url = ""
    if msg != "" and Attachments != "":
        url = f"https://wasmsapi.com/api/sendFileWithCaption?token={insetanceId}&phone=+91{number}&message={msg}"
        attachUrl = 'http://103.234.187.197:8098'+Attachments
        url = url+"&link="+urllib.parse.unquote(attachUrl)        
        loginResponse = requests.post(url, verify=False, timeout=10)
        return json.loads(loginResponse.text)

    elif msg == "" and Attachments != "":
        url = f"https://wasmsapi.com/api/sendFiles?token={insetanceId}&phone=+91{number}"
        attachUrl = 'http://103.234.187.197:8098'+Attachments
        url = url+"&link="+urllib.parse.unquote(attachUrl)        
        loginResponse = requests.post(url, verify=False, timeout=10)
        return json.loads(loginResponse.text)

    elif msg != "" and Attachments == "":
        url = f"https://wasmsapi.com/api/sendText?token={insetanceId}&phone=+91{number}&message={msg}"        
        loginResponse = requests.post(url, verify=False, timeout=10)
        return json.loads(loginResponse.text)
    
    else:
        msg = 'all field are empty! messages will not be sent'
        print(msg)

        return msg
    

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#
#                           ###################################
#                           ####### Send Email Function #######
#                           ###################################
#
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

def sendMail(toEmail, subject, message, attachments):
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
        server.sendmail(Sender, [toEmail], msg.as_string())
        server.quit()
        print('sent : ')
    except Exception as e:
        print(str(e))
        return str(e)
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
