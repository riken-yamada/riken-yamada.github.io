---
title: "High-dimensional Statistical Modelling - Publication"
layout: gridlay
excerpt: "High-dim ML: Publication"
sitemap: false
permalink: /publications/
---


# Publications (Since 2017)

{% for year in site.data.pubyear %}
## {{ year.year }}

{% for publi in site.data.publist %}

   {% if publi.year  == year.year %}
  <em>{{ publi.authors }}</em>  <br>
  <span style="color: #0000FF;">{{ publi.title }}</span><br>{{ publi.link.display }}


  {% if publi.iscode  == 1 %}
  {% if publi.ispdf  == 1 %}
  <button type="button"  class="btn-flat-border"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  <button type="button" class="btn-flat-border"><a href="{{ publi.link.codeurl }}" target="_blank" rel="noopener">CODE</a></button>
  {% endif %}
  {% endif %}

  {% if publi.ispdf  == 1 %}
  {% if publi.iscode  == 0 %}
  <button type="button" class="btn-flat-border"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  {% endif %}
  {% endif %}
  {% endif %}

{% endfor %}
{% endfor %}

## Preprint
{% for publi in site.data.publist_preprint %}

  <em>{{ publi.authors }}</em>  <br>
  <span style="color: #0000FF;">{{ publi.title }}</span><br>{{ publi.link.display }}

  {% if publi.iscode  == 1 %}
  {% if publi.ispdf  == 1 %}
  <button type="button"  class="btn-flat-border"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  <button type="button" class="btn-flat-border"><a href="{{ publi.link.codeurl }}" target="_blank" rel="noopener">CODE</a></button>
  {% endif %}
  {% endif %}

  {% if publi.ispdf  == 1 %}
  {% if publi.iscode  == 0 %}
  <button type="button" class="btn-flat-border"><a href="{{ publi.link.pdfurl }}" target="_blank" rel="noopener">PDF</a></button>
  {% endif %}
  {% endif %}

{% endfor %}

