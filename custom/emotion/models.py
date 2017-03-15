from __future__ import unicode_literals

from django.db import models
from taggit.managers import TaggableManager
from django.utils.encoding import python_2_unicode_compatible


@python_2_unicode_compatible
class Emotion(models.Model):
    date_measured = models.DateTimeField('Time measured', blank=True,
                                         null=True, auto_now_add=True)
    text = models.CharField(max_length=100)
    temperature = models.FloatField(default=0)
    index = models.FloatField(default=0)
    whisker_low = models.FloatField(default=0)
    whisker_high = models.FloatField(default=0)
    tags = TaggableManager()

    class Meta:
        verbose_name = 'Emotion'
        verbose_name_plural = 'Emotions'

    def __str__(self):
        return self.text

    def __unicode__(self):
        return unicode(self.text)

    def __getitem__(self, items):
        return self.text
