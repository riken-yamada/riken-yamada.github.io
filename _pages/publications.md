---
title: "High-dimensional Statistical Modelling - Publication"
layout: gridlay
excerpt: "High-dim ML: Publication"
sitemap: false
permalink: /publications/
---


# Publications (Since 2017)

## Machine Learning

{% for publi in site.data.publist %}

   {% if publi.isml  == 1 %}
  <em>{{ publi.authors }}</em>  <br>
  <span style="color: #0000FF;">{{ publi.title }}</span><br>{{ publi.link.display }}



  {% if publi.iscode  == 1 %}
  {% if publi.ispdf  == 1 %}
  <button type="button"  class="btn btn-outline-primary my-1 mr-1 btn-sm"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  <button type="button" class="btn btn-outline-primary my-1 mr-1 btn-sm"><a href="{{ publi.link.codeurl }}" target="_blank" rel="noopener">Code</a></button>
  {% endif %}
  {% endif %}

  {% if publi.ispdf  == 1 %}
  {% if publi.iscode  == 0 %}
  <button type="button" class="btn btn-outline-primary btn-sm"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  {% endif %}
  {% endif %}
  {% endif %}

{% endfor %}

## Applications

{% for publi in site.data.publist %}

  {% if publi.isml  == 0 %}
  <em>{{ publi.authors }}</em>  <br>
  <span style="color: #0000FF;">{{ publi.title }}</span><br>{{ publi.link.display }}
 

 {% if publi.ispdf  == 1 %}
  {% if publi.iscode  == 1 %}
  <button type="button"  class="btn btn-outline-primary my-1 mr-1 btn-sm"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  <button type="button" class="btn btn-outline-primary my-1 mr-1 btn-sm"><a href="{{ publi.link.codeurl }}" target="_blank" rel="noopener">Code</a></button>
  {% endif %}
  {% endif %}

  {% if publi.ispdf  == 1 %}
  {% if publi.iscode  == 0 %}
  <button type="button" class="btn btn-outline-primary btn-sm"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  {% endif %}
  {% endif %}
  {% endif %}
{% endfor %}
