
# Datetime related imports
from datetime import datetime
from datetime import date
from datetime import time
from datetime import tzinfo

# Django imports
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from django.core.cache import cache
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.conf import settings
from django.core.urlresolvers import reverse

# Signals
from signals import user_session_complete

# Email imports
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
# smtp imports
import smtplib
from smtplib import SMTPRecipientsRefused
import registration_api
from registration_api import utils
import string
import codecs
import os
import re


@receiver(user_session_complete,sender=User)
def user_session_complete_handler(sender,instance,session,**kwargs):
    try:
        pass
    except Exeption, R:
        pass

