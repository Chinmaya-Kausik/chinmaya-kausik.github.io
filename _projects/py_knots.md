---
layout: page
title: py_knots
description: Knot algorithms in Python, 2022.
img: assets/img/py_knots.png
importance: 1
category: undergraduate
---

### Introduction
* In the mathematical field of topology, knots are "knotted loops" that can be put in 3D space. They often arise in surprising contexts, including fields like  algebra and analysis. We consider two knots to be the same if they can be deformed into each other without cutting the "thread" of the loop or passing it through itself. This is relevant to studying the inherent shape of the knot, so to speak.
* It is natural to then ask - how do we describe a knot? Is a description of a knot unique? If not, then how can we ascertain when two knots are equal? Typically, we describe a knot using an algebraic description of its "shadow" under arbitrary lighting, while preserving information on which strands cross over in an intersection. Such "shadows" are called knot projections and such descriptions are called braid descriptions.
* Typically, a given knot can have many "shadows" from different angles and each "shadow" can give rise to a few different braid descriptions. In particular, many braid descriptions might point to the same knot. Since such braid descriptions arise in non-topological contexts, it is valuable to determine which two braids are "essentially the same," i.e., they describe the same knot.
* There are mathematical quantities (typically numbers or polynomials, but secretly rings and modules) that are the same for two braid descriptions of the same knot. Many such quantities can be computed using a matrix associated to each knot, called its generalized Seifert matrix. The word "generalized" refers to working with added complexity beyond a single knot and working with multiple linked knots, which we call links. 

### What did I do?

Before our work, there was an algorithm and program to compute the usual Seifert matrix (a simpler object), but neither for the more sophisticated generalized Seifert matrix. I first designed an algorithm to compute the generalized Seifert matrix for my summer research. Then I implemented it in both Scala and Python, finally choosing the Python version to implement the GUI. I packaged it into a downloadable and installable app (called Clasper) which can:
1. Compute the generalized Seifert matrix and export it in three commonly used formats.
2. Compute various knot and link invariants arising from the generalized Seifert matrix, like the Conway potential function, the multivariate Alexander polynomilal, the signature, the nullity, and Casson-Gordon invariants.
3. Visualize and display the colored braid given by any braid description
4. Conduct a random search for a minimal homology basis of the braid's Seifert surface, which helps understand how "minimally complex" a Seifert surface associated to the knot/link has to be.

### Code
I was quite proud of the code quality back when I wrote it, since it was my first large-scale solo project. You can find the Python code and the downloadable .exe file in [this](https://github.com/Chinmaya-Kausik/py_knots) Github Repository. The less well done and non-production ready Scala code is [here](https://github.com/Chinmaya-Kausik/scala_knots).
