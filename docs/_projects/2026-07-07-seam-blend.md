---
layout: single 
title:  "Seam Blending: A Numba Re-implentation of my CMPT461 Assignment"
excerpt: "Using Numba to Optimize Bottlenecks for Image Quilting"
categories: projects sfu cmpt461 
tags: Computer-Vision Seam-Carving Image-Blending
---
# The Background

For my CMPT461 course we had a super cool assignment wher we had to perform [image quilting](https://people.eecs.berkeley.edu/~efros/research/quilting/quilting.pdf) which is a method to arrange a set of texture images to look similar to a target image. This project meant I got to generate a lot of really fun images, for example Marylin Monroe made out of a toast texture. 

# The Problem

The project was very fun but my implementation using numpy was painfully slow and absolutely devoured my RAM. It would take roughly 10 minutes and use of 12GB of memory for 1 image. This was simply because for 1 step in the method I had to compute the SSD pairwise for every patch in my target image and texture image. The intermediate array I had to generate with numpy were massive and a massive bottleneck in my code. I could have tried to optimize the numpy solution further but instead I decided on a new approach.

# Numba 
[numba](https://numba.pydata.org/) is a really cool just in time (JIT) compiler for python code. If your functions are mostly performing calculations numba can massively speed them up using the [LLVM](https://llvm.org/) compiler. In my case it had the added benefit that I could change my approach.  Generally when writing performant python you want to spend as little of you computation time in python as possible, since it's slow.  That means that when using high performance libraries like numpy using python primitives like for loops or custom functions are a sin.  However, thats not true for numba which actually performs better if you drop to python loops as the speedup that compiled code gets is significant in that case.  In my situation it had the added benefit that I didn't need to compute the pairwise SSD all at once which is where I incurred my memory bottleneck.  Instead I could write my first year python for loop to compute the best match on the fly. Since I only stored my results this massively shrunk the memory cost.


# The Implementation
But I've talked enough about the theory.  You can find my implementation below hosted on [molab](https://molab.marimo.io). Feel free to check it out and explore the different patch sizes you can use. [![Open in molab](https://molab.marimo.io/molab-shield.svg)](https://molab.marimo.io/notebooks/nb_sEuh575x3Lbn6qBaCRy3D3)
