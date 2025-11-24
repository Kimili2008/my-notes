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



### Redundancy in data transmission

CRC Ethernets protocols have a CRC code
1. 本质上为多项式的取余运算$G(x) =x^3+x+1$，在二元伽罗华域上做操作
2. 对于数据$1011$，数据补零$101100=^{def}=x^5+0\times x^4+x^3+x^2+0\times x+0$（为后面加上余数做准备）
3. 对于数据进行约定生成多项式的取余运算，最后会余下一个余数，也叫CRC码，长度为生成多项式的长度减一
4. 将该CRC码替换到原多项式的尾部，那么加上了余数的数字应该能去被约定的$G(x)$整除了。


Hamming code
1. 假设用户的数据为$11010$，我们这样操作：加入偶校验码1：负责校验所有从左往右数二进制编号第一位为1的，001，011，101，111，偶校验码2：负责校验所有从左往右数二进制编号第二位为1的，010，011，110，111，以此类推
2. 直观地写出来是这样的：（P1，P2，D，P3，D，D，D，P4），我们可以观察到校验码占据的位置都是从左往右数二的幂，这样也是一种标记，便于解码
3. 这里传输的就是（101010100）
4. 此时这个校验码就承担了寻址的功能，一个校验码对应一个数位，如果只有一个digit有问题，接收方能直接通过错误的校验码位置查出来

思考：在数字通信中，CRC校验、汉明码是如何通过“冗余”来对抗”噪声”（不确定性）的？

CRC码根据多项式的取余运算创造了余数（CRCcode）的冗余，进而去对抗传输过程中的问题。
汉明码通过偶校验的再计算实现了对错误digit的寻址，进而可以解决微弱噪音，此处的冗余是偶校验的比特数。
