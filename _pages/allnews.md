---
title: "News"
layout: textlay
excerpt: "High-dimensional Statistical Modelling Team @ RIKEN AIP."
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<p>{{ article.date }} <br>
<em>{{ article.headline }}</em></p>
{% endfor %}
