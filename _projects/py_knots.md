---
layout: page
title: py_knots
description: Knot algorithms in Python, 2022.
img: assets/img/py_knots.png
importance: 1
category: undergraduate
---

In the mathematical field of topology, knots are "knotted loops" that can be put in 3D space. They often arise in surprising contexts, including fields like  algebra and analysis. We consider two knots to be the same if they can be deformed into each other without cutting the "thread" of the loop or passing it through itself. This is relevant to studying the inherent shape of the knot, so to speak. It is natural to then ask - how do we describe a knot? Is a description of a knot unique? If not, then how can we ascertain when two knots are equal? Typically, we describe a knot using an algebraic description of its "shadow" under arbitrary lighting, while preserving information on which strands cross over in an intersection. Such "shadows" (called knot projectsions) have invariant quantities that stay the same for two shadows of the same knot. Many such quantities can be computed using a matrix associated to each knot, called its generalkized Seifert matrix. I designed an implemented an algorithm to compute the generalized Seifert matrix for my summer research, in Python.

[Link](https://github.com/Chinmaya-Kausik/py_knots) to the Github Repository.
