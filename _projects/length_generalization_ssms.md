---
layout: page
title: Comparing Mamba, Attention and their Hybrids
description: Studying length generalization in Mamba, attention-based transformers, and hybrids of both for associative recall and related tasks.
img: assets/img/length_generalization_ssms.jpeg
importance: 1
category: graduate
---

Link to repository [here](https://github.com/Chinmaya-Kausik/mamba_attention_length_generalization).

### Introduction
1. Attention-based transformer models use a data-dependent averaging of features at every layer to decide which features to "pay more attention to." This is in contrast to most other popular deep learning architectures, where features are aggregated at each layer in a data-independent way, determined by the weights of the model.
2. However, the downside of this data dependent averaging is that one has to fix the maximum length or size of the input beforehand. This is undesirable for time-series data, where we want to be flexible about the length of the "context," i.e. the input time series.
3. An emerging alternative is state space models (SSMs), which model time series as dynamical systems with "internal state variables." Many successful architectures have been introduced in this regard, such as S4 and Mamba.
4. Since the main benefit is in flexibility of length of input, it is interesting to consider how these might generalize over lengths. That is, one would like to know the performance of the model at test inputs with different lengths than the training inputs.
5. Three natural tasks are considered:
    1. Induction head: For a specific token A, learn to find the previous occurence of A, find the token B that came after that occurence and return B. We are building a 2 layer transformer model for the induction task.
    2. Associative recall: Same task as the induction head task except that we need the model to learn to recall the next token for **multiple** query tokens A.
    3. Associative recall with delay: Same task as associative recall, but instead of the next token, we need to find the next token with gap or _delay_ tau.

### What I did
1. I explored length generalization across various attention and Mamba based architectures. Namely, I considered:
    1. No PE: Attention without positional embeddings and 2 layers
    2. Learned PE: Attention with positional embeddings and 2 layers
    3. Rotary PE: Attention with rotary positional embeddings and 2 layers
    4. Mamba: Mamba with 2 blocks
    5. Hybrid A: One Mamba block and one attention layer (without positional embeddings)
    6. Hybrid B: One Mamba block followed by one attention layer (without positional embeddings) followed by one Mamba block
2. I wrote code implementing Mamba, following existing popular implementations, as well as drew from libraries implementing both.
3. Drew the following conclusions from results, essentially saying that No PE < Learned PE < Rotary PE < Mamba < Hybrid A ~ Hybrid B:
    1. No PE: Using no positional embeddings shows almost no length generalization and even has imperfect performance for the train context length (32)
    2. Learned PE: Using learned absolute positional embeddings improves over this, since it is able to learned task and data-oriented positional embeddings and add them to the features. This however shows poor generalization since they are absolute positional embeddings.
    3. Rotary PE: Even better are rotary positional embeddings, which are relative position embeddings and thus only rely on the query, key and the distance between them. Such embeddings can continue to function at unseen lengths since they are relative, and thus show better length generalization.
    4. Mamba: Mamba performs better than any of the positional embeddings with a transformer, since state space models use dynamical systems to model sequences, and thus can inherently handle relative positions better. They are thus better at length generalization than transformers, which have to learn attention weights for fixed context lengths. However, Mamba is unable to perform perfectly at context lengths significantly far from the original.
    5. Hybrid-A: Mamba misses the "data-dependent averaging" ability of attention, which impedes the "selective focus" needed for memory and recall tasks, so adding an attention block allows it to improve upon this ability and Hybrid-A performs better than Mamba.
    6. Hybrid-B: We get a similar performance with Hybrid-B, which merely adds another Mamba layer after Hybrid-A.
4. The difference in performance between mamba/hybrids and purely attention-based architectures is even more stark when we introduce delay.
