+++
title = "Shallow Learning Theory"
published = "27 March 2026"
authors = "Ronald Albert"
rss = "Shallow Learning Theory"
rss_pubdate = Date(2025, 2, 19)
tags = ["blog"]
+++
# Shallow Learning Theory

{{ published }}

The last few years, I (and the rest of the ML community) have been swallowed by the current wave of Deep Learning models, which exhibit unusual generalization behaviors **[1]** . 

While these models may work formidably well, I have been missing an environment where theory would actually make sense again. Therefore, I decided to write a blog post on traditional statistical learning theory and its generalization bounds. As machine learning nowadays is more strongly associated with deep learning models rather than traditional statistical models, we might, as well call it shallow learning theory.

# Empirical Risk Minimization

Starting from the beginning, back in the day (thank god I did not live those days) when generalization was a real concern among ML practitioners, people were often attempting to minimize the **empirical risk** the average loss over a training set. Formally, given a dataset $\mathcal{D} = \{(x_i, y_i)\}_{i=1}^{n}$ drawn i.i.d. from some unknown distribution $\mathcal{P}$, and a hypothesis class $\mathcal{H}$, the empirical risk of a hypothesis $h \in \mathcal{H}$ is defined as

$$\hat{R}(h) = \frac{1}{n} \sum_{i=1}^{n} \ell(h(x_i), y_i)$$

where $\ell$ is a loss function measuring the discrepancy between the prediction $h(x_i)$ and the true label $y_i$. The **Empirical Risk Minimizer (ERM)** is then the hypothesis that minimizes this quantity:

$$\hat{h} = \underset{h \in \mathcal{H}}{\arg\min} \; \hat{R}(h)$$

The hope, of course, is that minimizing $\hat{R}(h)$ also minimizes the **expected risk**:

$$R(h) = \mathbb{E}_{(x,y) \sim \mathcal{P}}\left[\ell(h(x), y)\right]$$

But $\mathcal{P}$ is unknown — we only have access to the $n$ training samples. So the central question of learning theory becomes: *how well does $\hat{R}(h)$ approximate $R(h)$, and under what conditions does minimizing the former guarantee small values of the latter?*

Fortunately, we have generalization bounds (**concentration inequalities**) which give us guarantees that, for a given hypothesis $h \in \mathcal{H}$, the empirical risk and the expected risk will be close with high probability.

## Hoeffding's Inequality

One of the most important inequality in deriving the generalization bounds in ML is **Hoeffding's inequality** **[2]**. In its general form, it states that if $Z_1, \ldots, Z_n$ are independent random variables with $Z_i \in [a_i, b_i]$ almost surely, then for any $\epsilon > 0$:

$$\mathbb{P}\!\left(\left|\frac{1}{n}\sum_{i=1}^n Z_i - \mathbb{E}\!\left[\frac{1}{n}\sum_{i=1}^n Z_i\right]\right| \geq \epsilon\right) \leq 2\exp\!\left(\frac{-2n^2\epsilon^2}{\sum_{i=1}^{n}(b_i - a_i)^2}\right)$$

## Application to binary classification risk

Now let's specialize to the case most relevant to classification: the **0-1 loss**, defined as $\ell(h(x), y) = \mathbf{1}[h(x) \neq y]$. Each individual loss term takes values in $\{0, 1\}$, so $Z_i = \ell(h(x_i), y_i) \in [0, 1]$, which means $b_i - a_i = 1$ for all $i$. Noting that

$$\hat{R}(h) = \frac{1}{n}\sum_{i=1}^n Z_i, \qquad R(h) = \mathbb{E}[Z_i]$$

the denominator simplifies to $\sum_{i=1}^n (1-0)^2 = n$, and Hoeffding's inequality becomes:

$$\mathbb{P}\!\left(\left|\hat{R}(h) - R(h)\right| \geq \epsilon\right) \leq 2e^{-2n\epsilon^2}$$

This is a remarkably clean result. Setting the right-hand side equal to $\delta$ and solving for $\epsilon$, we get that with probability at least $1 - \delta$:

$$\left|\hat{R}(h) - R(h)\right| \leq \sqrt{\frac{\log(2/\delta)}{2n}}$$

or equivalently, the true risk is bounded by:

$$R(h) \leq \hat{R}(h) + \sqrt{\frac{\log(2/\delta)}{2n}}$$

The term $\sqrt{\frac{\log(2/\delta)}{2n}}$ is the **generalization gap** — it shrinks as $n$ grows and is only mildly sensitive to the confidence parameter $\delta$. The catch, however, is that this bound holds for a **fixed** hypothesis $h$. In practice, $\hat{h}$ is chosen *after* seeing the data, so we need to account for the fact that we are searching over an entire class $\mathcal{H}$ — but that is a story for the next section.



~~~
<small>[1] <strong>Nakkiran, P., Kaplun, G., Bansal, Y., Yang, T., Barak, B., &amp; Sutskever, I. (2019). Deep double descent: where bigger models and more data hurt. Journal of Statistical Mechanics: Theory and Experiment, 2021.</strong></small>
<br>
<small>[2] <strong>Hoeffding, W. (1963). Probability inequalities for sums of bounded random variables. Journal of the American Statistical Association, 58(301), 13–30.</strong></small>
~~~
