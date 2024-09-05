---
layout: page
title: RLHF for Very Small LLMs
description: A project comparing various RLHF methods for GPT-2 small.
img: assets/img/rlhf_project.jfif
importance: 1
category: graduate
---

### Introduction
* The training of large language models and the use of reinforcement learning to train all kinds of agents have a shared challenge - alignment. That is, how do we align outcomes to "human intentions" without accidentally creating unwanted behavior?
* Historically, large language models have been trained using supervised methods with hand-designed loss functions, while reinforcement learning has relied on the subtle art of reward shaping (hand-designed reward functions). This often creates a game of whack-a-mole where engineers and scientists chase out problems with existing loss or reward functions, only to discover a new problem with their solution.
* One solution to this is reinforcement learning from human feedback (RLHF) - taking reward information from humans interacting with the agents or large language models. However, there are many issues with getting numerical scores from humans (subjectivity, harder to elicit, etc). So, it is more common to ask humans for preferential or binary feedback when they interact with LLMs or interfaces for an RL agent.
* Due to the rise in interest in large language models, people have become increasingly interested in designing new RLHF methods capable of handling different kinds of preferential/binary feedback, and in different ways.
* However, the testing of these methods is not quite standardized and we lack a comprehensive large scale empirical comparison of these methods. Most papers are incentivized to make their method look good, and the testing frameworks 

### What I did
* **Designing the project, choosing an LLM task:** As a first step towards conducting a comprehensive study of RLHF for small LLMs, I designed a project for testing the performance of DPO, PPO and KTO on reddit post summarization using GPT-2 small. It is notable that the original KTO paper did not test on reddit post summarization when comparing to DPO and PPO.
* **Testing HuggingFace trainers:** I ran initial tests using HuggingFace's TRL (Transformer Reinforcement Learning) repository, but the trainers written were slow even with PEFT, had some memory leak issues, and weren't optimized for low memory resources (we could only get one A100 GPU from the university under a reasonable wait time).
* **Writing trainers from scratch in JAX:** We wrote our own code for trainers in JAX, building on top of [this respository](https://github.com/vwxyzjn/lm-human-preference-details) discussing implementation details of RLHF using PPO. I wrote and executed the trainers for DPO and KTO in JAX.
* **Designing a synthetic task:** I designed a synthetic task of learning family trees from a description of a family, and successfully trained GPT-2 small to accomplish the task. There was not much difference in quality here, since the task was somewhat simple.
* **Continuation:** I intend to resume work on this project in the future and scale up the comparison involved.

### Code
[Link to repository here.](https://github.com/kkanarios32/TaxonomyRLHF)
