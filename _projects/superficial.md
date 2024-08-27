---
layout: page
title: superficial
description: Algorithms for surfaces in Scala, 2020.
img: assets/img/surface_quad.png
importance: 2
category: undergraduate
---

### Introduction
* In the mathematical field of topology, a _surface_ is an abstractly defined "two dimensional object," independent of how it "looks in 3D (or higher dimensional) space." This abstraction is used to study intrinsic properties of surfaces, independent of deformation, wiggling, stretching, etc.
* One can construct an abstract surface by gluing up triangles together. If you put these triangles in 3D space and glue them together, it will look like what one conventionally imagines a surface to be. This is a popular way to implement surfaces in computational geometry, computer vision, etc. It's called a triangulation.
* A lesser studied variant of this involves gluing together 4-sided polygons, which is called a quadrangulation. This is convenient for studying surfaces which cannot be "put in 3D space," but still arise naturally in pure mathematics.

### What did I do?
* Under the guidance of Prof. Siddhartha Gadgil at IISc, I implemented algorithms to deal with quadrangulations of surfaces in Scala, for the course on Computer-Assisted Topology and Geometry offered by Prof. Gadgil at IISc.
* I loved that I could concretely _do something_ with surfaces once they were implemented using their quadrangulations. My first experience reading and implementing ideas in papers, and actively engaging with fairly recent literature.
* I enjoyed programming in a functional language at the scale of a moderate-to-large project.
* [Link](https://github.com/siddhartha-gadgil/Superficial) to the code on Prof. Gadgil's repository. [Link](https://github.com/siddhartha-gadgil/Superficial/blob/master/contributions/ChinmayaKausik.md) to a file listing my contributions.
