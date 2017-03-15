from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User
from django.utils.encoding import python_2_unicode_compatible


@python_2_unicode_compatible
class State(models.Model):
    # We need the state's name
    state = models.CharField(max_length=200, blank=True, null=True)

    # We need the state's abbreviation
    code = models.CharField(max_length=200, blank=True, null=True)

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
    user = models.OneToOneField(User, blank=True, null=True)
    # we want to know the time when the profile was created
    time_created = models.DateTimeField('Time Created',
                                        blank=True,
                                        null=True,
                                        auto_now_add=True)

    is_seller = models.NullBooleanField(default=False, blank=True, null=True)

    is_advertiser = models.NullBooleanField(default=False, blank=True,
                                            null=True)
    is_consumer = models.NullBooleanField(default=False, blank=True, null=True)

    is_cleared = models.NullBooleanField(default=False, blank=True, null=True)

    is_blocked = models.NullBooleanField(default=False, blank=True, null=True)

    is_plain_srategy_used = models.NullBooleanField(default=False, blank=True,
                                                    null=True)

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
    following = models.ManyToManyField(User, related_name='following',
                                       symmetrical=False)

    # the user cn add followers
    followers = models.ManyToManyField(User, related_name='followers',
                                       symmetrical=False)

    # we want to know the user's bio
    bio = models.TextField(max_length=500,
                           blank=True,
                           null=True)

    time_cleared = models.DateTimeField("Time Cleared", blank=True, null=True)

    activation_key = models.CharField(max_length=140, blank=True, null=True)

    address1 = models.CharField(max_length=200, blank=True, null=True)

    address2 = models.CharField(max_length=200, blank=True, null=True)

    city = models.CharField(max_length=200, blank=True, null=True)

    state = models.ForeignKey(State, blank=True, null=True)

    ipaddress = models.CharField(max_length=50, blank=True, null=True)

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

    def __getitem__(self, items):
        return self.user.username


# User Session Model
class UserSession(models.Model):
    username = models.CharField(max_length=200, blank=True, null=True)
    # We need the remote ip of the user in session
    remote_ip = models.CharField(max_length=20,
                                 blank=True,
                                 null=True)

    # We need the session key of the user in session
    session_key = models.CharField(max_length=200,
                                   blank=True,
                                   null=True)

    user = models.ForeignKey(User, blank=False, null=False)

    # We want to know the time when the user signed in
    time_in = models.DateTimeField(auto_now_add=True)

    # We want to know the time when the user signed out
    time_out = models.DateTimeField('Time Logged Out',
                                    blank=True, null=True)

    # We want to know the time the user spent online in hours
    time_online_hours = models.IntegerField(default=0,
                                            blank=True,
                                            null=True)

    time_online_minutes = models.IntegerField(default=0,
                                              blank=True,
                                              null=True)

    time_online_seconds = models.IntegerField(default=0,
                                              blank=True,
                                              null=True)

    time_online_total = models.CharField(max_length=200,
                                         blank=True,
                                         null=True)

    time_online_delta = models.FloatField(default=0,
                                          blank=True,
                                          null=True)

    date_visited = models.DateField(blank=True, null=True)

    class Meta:
        verbose_name = 'Session'
        verbose_name_plural = 'Sessions'
