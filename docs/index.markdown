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
    excerpt: "Learning New Techniques and Expanding my Perspective to master and apply Computer Vision"
---


{% include feature_row id="skills" type = "center" %}


<img src="https://ghchart.rshah.org/ivonr7"/>

# Welcome!
Hi, glad you could make it!  I'm a computer scientist based in Vancouver British Columbia with a deep interest in designing and implementing algorithm that can scale. I really enjoy working on images both to find new insights in medical image like my work at BC Cancer or working on applying methods to my own images.

Please look around and enjoy your time!

# Recent Posts
<ul>
  {% for post in site.posts limit:5 %}
    <li>
      <a href="{{ post.url | absolute_url }}">{{ post.title }}</a>
      <span>({{ post.date | date_to_string }})</span>
    </li>
  {% endfor %}
</ul>


# Publications 
### 2026
* **[Serval: A modular framework for decoding imaging based spatial transcriptomics data](https://www.biorxiv.org/content/10.1101/2025.10.09.681318v2)**
  *Authors:* Jenkin Tsui, Naila Adam, Woongcheol Choi, Luna Y. Liu, Cristina Flores, Shadi Ansari, Esther Kong, Yukta Thapliyal, Hakwoo Lee,Shahid Haider, Isaac Von Riedemann, Ciara O’Flanagan,IMAXT Cancer Grand Challenges Consortium, Samuel Aparicio, Andrew Roth
  *Journal:* [Biorxiv](https://www.biorxiv.org/), Pre-print

### 2024
* **[SCALM: Towards Semantic Caching for Automated Chat Services with Large Language Models](https://arxiv.org/abs/2406.00025v1)**
  *Authors:*  Jiaxing Li, Chi Xu, Feng Wang, Isaac M von Riedemann, Cong Zhang, Jiangchuan Liu
  *Conference:* [IWQoS 2024](https://dblp.org/db/conf/iwqos/iwqos2024.html#conf/iwqos/LiXWRZL24): 1-10
