
---
layout: single
title:  "HVI: A new Colour Space for Low Light Image Enhancement Explainer"
categories: CMPT461
tags: Computer-Vision LLIE Explainer
---


# What is this even?

In my last semester I took a really enjoyable Computational Photography course. One of the assignments was to design write and direct a short explainer video of a recent Computational Photography paper.
Something in the style of [3BlueOneBrown](https://www.3blue1brown.com/). I chose the paper [HVI: A New Color Space for LLIE]("https://arxiv.org/abs/2502.20272"). 

# TLDR   
If you don't want to read further heres the [video]("https://youtu.be/EVMyZUAh9qw?si=lomuJ62gs8VBrLv4")

# Why a new colour space?

So a new colour spaces are pretty exciting. There used to be a lot of development in colour spaces and there are important considerations that informs the use of different ones. However, when Deep Learning became popular most methods were trained on [sRGB]("https://en.wikipedia.org/wiki/SRGB") images since they're the most abundant. So it's really rare to see anyone inventing a new one. Since the paper is focused on Low Light Image Enhancement (LLIE), it's important to mention that when trying to increase the brightness of images it's very easy to add either noise of colour shifts.  

# What's the Issues?

So in this paper they focused on HSV. Which is a popular color space for editing. It's often conceptualized as a cylinder. With hue (H) being the angle on the cirucluar plane of the cylinder, saturation (S) being the distance from the center of the circular plane and Value/brightness (V) being how high up in the cylinder the plane is.
[!image]("../assets/images/hsv_space.jpeg")

HSV is generally a very useful colour space but when the value is very low there can often be noise introduced from the conversion from RGB. This is a big issue in LLIE since nearly the entre image would suffer from this. Further, the authors argue that the hue axis is discontinuous, which while true is part of the design of HSV not a fundamental flaw.  Since that discontinuity encodes the color as a angle which lets us use a very intuitive color wheel visualization of HSV.  


# What's the Key Improvement?
The most pertinent addition of the paper is a collapse function that lowers the maximum saturation as brightness decreases.  This is a really elegant addition since it matches how humans see colour. When you look outside at night you see less colours then you would in the day.  This is because less light is reflecting of object in the environment when it's dark as well as humans have adapted to use their cones (color receptors) less in dark scenes.  We use our rods more which see in grayscale and try to impute color information using our brain.  Researching about [Retinex Theory](https://www.cnbc.cmu.edu/~tai/cp_papers/E.Land_Retinex_Theory_ScientifcAmerican.pdf) will give a deeper explanation of the phenomenon.  [Santha Lakshmi Narayana](https://santhalakshminarayana.github.io/blog/retinex-theory-of-color-vision) has a comprehensive breakdown about Retinex Theory on her blog. In the paper the authors use a simple exponential collapse function parameterized by a variable k, corresponding to how fast the maximum saturation decreases.

# How to Set K 
How to set k was an interesting question, there's not necessarily some global optimal value since depending on the image content you ant to enhance or how little noise you want will inform what you set it as.  So the authors chose to deign a framework where you could learn k jointly with a LLIE model that they train. I thought this was a clever way to learn k in a self-supervised-ish fashion. I found that models trained on different datasets performed better or worse on my images 

# Conclusion
All in all I thought this was a compelling paper that showed us an interesting way to augment existing colour spaces with 1 axis for brightness for LLIE. Since it's intuitive that a colour collapse function would work with YUV or YCbCr... since the both use a single axis for intensity.  Restricting the colour axes would be more complicated but I'd be interested if color which are less noise sensitive would benefit from a collapse function or not.
