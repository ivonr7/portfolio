---
layout: single
header:
  overlay_color: "#32a881"
  overlay_filter: "0.5"
  overlay_image: /assets/
  caption: ""
classes:
  - landing
  - dark-theme
title: Home
author_profile: true  


skills:
  - image_path: /assets/
    alt: "CV"
    title: "Computer Vision"
    excerpt: "Experience Scaling image processing pipelines from single images to terabytes with Dask, Numpy and Napari"
---


{% include feature_row id="skills" type = "center" %}


<img src="https://ghchart.rshah.org/ivonr7"/>

# Recent Posts
<ul>
  {% for post in site.posts limit:5 %}
    <li>
      <a href="{{ post.url | absolute_url }}">{{ post.title }}</a>
      <span>({{ post.date | date_to_string }})</span>
    </li>
  {% endfor %}
</ul>
