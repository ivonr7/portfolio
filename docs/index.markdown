---
layout: single 
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/needle.png
  caption: "BC Cancer Research"
classes:
  - landing
  - dark-theme
title: Home
author_profile: true  
---



<ul>
  {% for post in site.posts limit:5 %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <span>({{ post.date | date_to_string }})</span>
    </li>
  {% endfor %}
</ul>
