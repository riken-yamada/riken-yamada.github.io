---
title: "High-dimensional Statistical Modelling - Publication"
layout: gridlay
excerpt: "High-dim ML: Publication"
sitemap: false
permalink: /publications/
---

# Publications

{% for y in site.data.publist %}
  <h3  id="{{y}}" class="pubyear">{{y}}</h3>
  {% bibliography -f references -q @*[year={{y}}]* %}
{% endfor %}


