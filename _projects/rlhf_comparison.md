---
layout: page
title: Empirical Comparison of RLHF Methods for Small Models
description: A project comparing various RLHF methods for GPT-2 small.
img: assets/img/chen-and-poor.png
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
* As a first step towards conducting a comprehensive study of RLHF for small LLMs
