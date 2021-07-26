---
title: "High-dimensional Statistical Modelling - Publication"
layout: gridlay
excerpt: "High-dim ML: Publication"
sitemap: false
permalink: /seminar/
---


# High-dimensional Statistical Modeling Team Seminars

**JST: Japan Standard time.**

## Upcoming seminars

{% for seminar in site.data.seminar %}

  {% if seminar.isold  == 0 %}
  {{ seminar.date }} <br>
  Speaker: <em>{{ seminar.authors }}</em>  <br>
  Title: <span style="color: #0000FF;">{{ seminar.title }}</span><br>
  URL: <a href="{{seminar.url}}">Registration</a>  
  {% endif %}
{% endfor %}

## Past seminars

{% for seminar in site.data.seminar %}

  {% if seminar.isold  == 1 %}
  {{ seminar.date }} <br>
  Speaker: <em>{{ seminar.authors }}</em>  <br>
  Title: <span style="color: #0000FF;">{{ seminar.title }}</span><br>
  {% if seminar.isvideo == 1 %} <a href="{{seminar.url}}">Video</a>
  {% endif %}
  {% endif %}

{% endfor %}

