from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User
from django.utils.encoding import python_2_unicode_compatible



@python_2_unicode_compatible
class State(models.Model):
   # We need the state's name
   state = models.CharField(max_length=200,blank=True,null=True)
   # We need the state's abbreviation
   code = models.CharField(max_length=200,blank=True,null=True)

   class Meta:
       verbose_name = 'State'
       verbose_name_plural = 'States'

   def __str__(self):
       return self.code

   def __unicode__(self):
       return unicode(self.code)


# Create your models here
@python_2_unicode_compatible
class Profile(models.Model):

   # we crete profile for the user that lives same life
   user = models.OneToOneField(User,blank=True,null=True)
   # we want to know the time when the profile was created
   time_created = models.DateTimeField('Time Created',
                                       blank=True,
                                       null=True,
                                       auto_now_add=True)
   # we want to know if it's a seller or not     
   is_seller = models.NullBooleanField(default=False,blank=True,null=True)

   # we want to know if it's an advertiser or not  
   is_advertiser = models.NullBooleanField(default=False,blank=True,null=True)

   # we want to know if it's a consumer or not 
   is_consumer = models.NullBooleanField(default=False,blank=True,null=True)

   # we want to know if the profile has been cleared or not
   is_cleared = models.NullBooleanField(default=False,blank=True,null=True)

   # we want to know if the profile has been blocked or not 
   is_blocked = models.NullBooleanField(default=False,blank=True,null=True)

   # we want to know if the plain registration was used or not
   is_plain_srategy_used = models.NullBooleanField(default=False,blank=True,
                                                   null=True)

   # we want to know if facebook strategy was used or not     
   is_facebook_strategy_used = models.NullBooleanField(default=False,
                                                       blank=True,
                                                       null=True)

   # we want to know if twitter strategy was used or not
   is_twitter_strategy_used = models.NullBooleanField(default=False,
                                                      blank=True,
                                                      null=True)

   # we want to know if google plus strategy was used or not
   is_googleplus_strategy_used = models.NullBooleanField(default=False,
                                                         blank=True,
                                                         null=True)

   # we want to know if linkedin strategy was used or not
   is_linkedin_strategy_used = models.NullBooleanField(default=False,
                                                       blank=True,
                                                       null=True)

   # we want to be able to check if the user is online
   is_online = models.NullBooleanField(default=False,
                                       blank=True,
                                       null=True)

   # the user can start following
   following = models.ManyToManyField(User,
                                      related_name='following', 
                                      symmetrical=False)

   # the user cn add followers
   followers = models.ManyToManyField(User,
                                      related_name='followers',
                                      symmetrical=False)

   # we want to know the user's bio
   bio = models.TextField(max_length=500,blank=True,null=True)

   # we want to know the time the profile was created  
   time_cleared = models.DateTimeField("Time Cleared",blank=True, null=True)

   # we want to know the user's activation key  
   activation_key = models.CharField(max_length=140, blank=True) 

   # we want to know the user's address1
   address1 = models.CharField(max_length=200,blank=True,null=True)

   # we want to know the user's address2
   address2 = models.CharField(max_length=200,blank=True,null=True)

   # we want to know the user's city
   city = models.CharField(max_length=200,blank=True,null=True)

   # we want to know the user's state of origin 
   state = models.ForeignKey(State,blank=True,null=True)

   # we want to know the user's IP address
   ipaddress = models.CharField(max_length=50,blank=True,null=True)
  

   @property
   def username(self):
       return self.user.username


   @property
   def first_name(self):
       return self.user.first_name


   @property
   def last_name(self):
       return self.user.last_name


   class Meta:
       verbose_name = 'Profile'
       verbose_name_plural = 'Profiles'

   def __str__(self):
       return self.user.username

   def __unicode__(self):
       return unicode(self.user.username)

   def __getitem__(self,items):
       return self.user.username

