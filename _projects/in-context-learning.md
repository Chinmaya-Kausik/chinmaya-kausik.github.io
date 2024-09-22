---
layout: page
title: In-Context Learning in LLMs for Simple Functions
description: Conducted a deeper examination of in-context learning for simple functions using small LLMs. Builds off of experiments by Garg et al.
img: assets/img/in_context_learning_project.png
importance: 1
category: graduate
---

### Introduction
* Large language models show the surprising ability to learn in-context - that is, given a few examples of a task in their "context" or prompt, they can perform the task on new examples **without fresh training** on the task.
* This is a priori an almost miraculous phenomenon and has been extensively studied ever since its discovery. In particular, [Garg et al](https://arxiv.org/pdf/2208.01066) studied the ability of small transformer models to learn simple functions in context.
* Their most prominent experiments involve training a transformer to use past input-output pairs $$(x_1,y_1, \dots x_n, y_n)$$ to predict the output for a new input $$x_{n+1}$$.
* In the simplest of their experiments, they sample linear functions $$f(x) = w^\top x$$ for training by sampling the weights $$w \sim N(0,I_d)$$ and sample inputs $$x \sim N(0,I_d)$$. They train the transformer on training data generated this way and then test it on data generated independently in the same way.
* It was found that the transformer replicated the performance of ordinary least squares (OLS) regression.

### What I did
* **Replicating Garg et al:** Motivated by my LLM course, I investigated possible explanations for this by conducting experiments beyond the ones in Garg et al. To begin with, I replicated their experiments on choosing the weights and inputs isotropically (i.e. with covariance matrix $$I_d$$), as well as the experiments where the test data has non-isotropically generated weights or inputs.
* **Changing distribution of training tasks:** To see what happens when the training distribution is changed, I used a non-isotropic covariance matrix for the training weights as well as the test weights. This time, the transformer had a _lower_ error than OLS in general. Some thought revealed that its performance replicated that of weighted least squares regression, where the inverse of the covariance matrix gives the weights.
* **Developing a hypothesis for in-context learning:** This signals that the transformer was behaving as if it had _learnt the prior over tasks_, and was perhaps merely performing Bayesian inference over tasks when learning in context.
* **Supporting hypothesis by training over a small discrete task distribution:** I also performed this experiment using weights sampled from a discrete distribution with small finite support. In this case, the transformer learned the weights with even fewer samples in general, further supporting this hypothesis.
* **Continuation:** I intend to resume work on this project in the future and design more conclusive tests supporting the hypothesis that in context learning can be viewed as Bayesian inference over priors learnt during training.

### Code and Notes
[Link to repository here.](https://github.com/Chinmaya-Kausik/in-context-learning-small/) You can find some quick notes I took on the outcomes of this project [here](https://drive.google.com/file/d/159J-xDrdsVdrDzcy4Nr_MDOWoMCuvUUu/view?usp=sharing).
