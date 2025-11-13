---
layout: page
title: Intuiting Randomness - Bayesian Calibration Game
description: Interactive demo that tests how well people can intuit randomness and mimic probability distributions. Uses Bayesian inference to score calibration.
img: assets/img/intuiting_randomness.png
importance: 2
category: demos
technologies: [React, TypeScript, Vite, Recharts]
duration: "2023"
collaborators: []
status: completed
---

**Links:**
- [GitHub Repository](https://github.com/Chinmaya-Kausik/intuiting-randomness)
- [Live Demo](/demos/intuiting-randomness/)

### Introduction
* This demo tests how well users can intuit randomness and mimic probability distributions. Users are shown a probability p and must generate binary predictions that collectively match that distribution.
* The key challenge: when shown p=0.7, can you generate a sequence where approximately 70% are 1s, while maintaining appropriate randomness? Most people are poorly calibrated - they might guess 1s too often when p is high or show predictable patterns.
* The system uses Bayesian inference to learn and score your calibration function q(p), which maps the shown probability p to your actual guessing probability.

### What I Implemented
* **Bayesian posterior computation for q(p):** After each guess, the system updates a posterior distribution over your calibration parameters using Bayesian logistic regression. This captures how your implicit probability q(p) relates to the true probability p.
* **Integration over posterior for scoring:** Rather than using MAP estimates, the scoring integrates over the full posterior distribution when computing calibration error. This provides robust scoring even with limited data.
* **Proper uncertainty quantification:** Error bars are computed as credible intervals by sampling from the posterior distribution, reflecting genuine uncertainty rather than simple standard errors.
* **Real-time calibration visualization:** The interface shows your calibration curve q(p) against perfect calibration (the identity line), with shaded regions indicating posterior uncertainty.
* **Efficient incremental updates:** Implemented conjugate prior approximations and incremental update rules to avoid recomputing from scratch after each guess.