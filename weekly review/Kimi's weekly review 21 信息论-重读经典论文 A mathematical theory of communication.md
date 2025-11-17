---
Date: 2025-11-14T01:24:00
---
Shannon香农: 提出了信息的新定义: 信息是不确定性, 一条信息的不确定性越大, 它承载的信息量越多.

## Information def
Information: the evaluation of uncertainty
Define uncertainty:

$a^I=\frac{1}{p_{i}}$
$I=\log_{a}\left( \frac{1}{p_{i}} \right)$
We can observe that for a 2-1 bernoulli experiment (like tossing a coin),
then it's easy to find out that the expected value of I is one bit (head/tail)?

Information entropy: the expected value of information
信息熵: 信息不确定性的量度

Information Capacity: 
对于一个channel，拥有给定noise，你传过去一段信息，对方最多能接收到多少信息
$$C = Max(H(x)-H(x|y))$$
通过Langrange multiplier method和functional analysis (the variational method)可知，对于连续信号x，使其信息熵最大化的probability distribution是Gaussian distribution.

$$C_{max} = W\log_{2}\left( 1+\frac{P}{N} \right)$$
Where W is bandwidth(in HZ)
P is the average signal power
N is noise, which is AWGN 
additive-white-gaussian-noise
additive means the noise is super-positioned onto the signal
white means that the noise is evenly distributed regardless of the frequency
gaussian means that the magnitude of the noise follows the gaussian distribution

#### Reflections on H(x|y)

Y is a random variable which represents the information received.
E.g.
toss a fair coin, sent through information channel, 0.1 chances of crossover
$$H(x|y)=\sum_{i}H(x|y=i)$$
Then $H(x|y=1)=\log_{2}\left( \frac{1}{0.9} \right)0.9+\log_{2}\left( \frac{1}{0.1} \right)0.1=0.46bits$
Then $H(x|y)=0.46bits$
$$Cmax = 1-0.46=0.54 \text{   in this case}$$

#### The sampling theorem
The theorem which brings the continuous problem to discrete problem.
For a signal at bandwidth W, if the sampling rate is more than 2W, the signal can be precisely known.
In mathematical form:
$$f(x,t)=A(2\pi ft+x)$$
Two unknowns in one cycle, hence the wave can be determined by two samples.
In time t

> According to fourier analysis, for a signal which lasts T, its frequency resolution is 1/T, which means waves with frequency diference smaller than 1/T needn't be distinguished.
> Hence within T, B waves is needed, and for each wave we need two points.

### Appendix Natural language processing

0-order appro: each letter appears at the same probability
1-order appro: each letter appears at the probability with accordance to the natural language (like E appears to be the most frequent).
2-order appro: each letter appears at natural language frequency and a digram is introduced (is determined by the preceding 1st letter)
3-order appro:  each letter appears at natural language frequency and a trigram is introduced (is determined by the preceding 2 letters)


### 论文结构

1. discrete information source
- Huffman coding (for natural language)
- stochastic process (sector timeline is introduced in here, the probability of preceding event can be calculated by a probability digram ）
- Markoff process (the transision of states can be represented by a graph)

2. To quantify the act of an information source
- information is defined as the uncertainty of the information source.
- Hence, entropy is introduced to measure the baud rate, amount of information.



## Reflections
### Encoding and decoding
#### Shannon - Feno Encoding
Top-down perspective
choose the most frequent ones
spilt into groups, form a tree (not optimal compared to Huffman)
#### Huffman encoding
Bottom-down perspective
choose the least frequent ones
Build a huffman tree - a tree which stores the probability and the bits are distributed according to its depth.




### Modulation and Demodulation
To load our information onto the waves with higher base frequency (so that the signal can be transmitted through longer distances).
Demodulation is the reverse function of modulation (to extract the original message from the received message)

