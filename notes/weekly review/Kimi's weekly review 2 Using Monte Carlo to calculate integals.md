---
Date: 2024-12-30T22:06:00
---
## Things about the Monte Carlo algorithm

### Some basic things about the algorithm
The Monte Carlo simulation is a computational skill, relied on robust computing resourses, to take samples of the possible outcomes of a specific event.
Named after *Monte Carlo Casino*, a city famous for gambling in Mexico, the algorithm represents high reliability in randomness.
### The Mathematics of the algorithm
The Monte Carlo simulation is based on an important theorem in Maths called the *Law of large numbers*, which says that for an event with finite outcomes, the larger number of samples you take, the more accurate it will be when calcuating the possibility.

### The usages of the algorithm
The Monte Carlo simulation (or algorithm) is widely used in various subjects. For some complicated experiments, the algorithum can give you a general view of the event even without knowing the mechanics in it.
- Testing robustness of an established model
A model, especially in physics and maths, usually has several variables, which represents the corresponding conditions in the real world. 
After the model is finished, the Monte Carlo algorithm can be implemented to test the *robustness*
of the model, namely the model's reliability when inputing extreme values and the model's dependency on a specific variable.
- Building phylogenetic tree
The phylogenetic tree, widely used in Biology, is used to show the possibilities for evolutions to occur. By simulating the possible DNA combinations (the number of amino acid in a protein molecule e.g.), the scientists can find the phylogenetic with the highest possibility.

## Estimating integals in python
The following contents are python implementations of the Monte Carlo simulation.
```python
import matplotlib.pyplot as plt

import random

import math

#set the boundary of your integal at here

#note that the function inputted must be CONTINUOUS and has no break point

#note that the data should have at least 3 decimals to reassure accuracy

LOWBOUND = -1.000

UPBOUND = 1.000

  

#set the number of samples here

SAMPLENUMBER = 1000

  

#set your function here

#note that the function inputted must be CONTINUOUS and has no break point within the interval

def FUNCTION(x):

    return math.e**x

  
  
  
  
  
  

#calulation

  

gap = (UPBOUND-LOWBOUND)/SAMPLENUMBER

x_value = []

y_value = []

x_value.append(UPBOUND)

x_value.append(LOWBOUND)

y_value.append(FUNCTION(UPBOUND))

y_value.append(FUNCTION(LOWBOUND))

max = -1000000

min = 1000000

for i in range(SAMPLENUMBER):

    x_value.append(gap*(i+1) + LOWBOUND)

    y__value = FUNCTION(gap*(i+1) + LOWBOUND)

    y_value.append(y__value)

    if y__value >= max:

        max = y__value

    if y__value <= min:

        min = y__value

  
  

#determination of maximum and minimum og the function within the interval

  

MAXIMUM = max

MINIMUM = min

samplesinarea = 0

area = (MAXIMUM-MINIMUM)*(UPBOUND-LOWBOUND)

  
  
  

for i in range(SAMPLENUMBER):

    #randomness

    x = random.uniform(LOWBOUND,UPBOUND)

    y = random.uniform(MINIMUM,MAXIMUM)

    if y >= FUNCTION(x):

        plt.scatter(x,y,s=2,c="green")

    else:

        plt.scatter(x,y,s=2,c="red")

        samplesinarea += 1

  

#ploting

  

plt.scatter(x_value,y_value,s=6)

plt.xlabel("x", fontdict={'size': 16})

plt.ylabel("y", fontdict={'size': 16})

plt.title("Monte Carlo", fontdict={'size': 20})

  
  

plt.savefig("test.png")

  
  

#output

print("There are %d samples. %d of them are within the function"%(SAMPLENUMBER,samplesinarea))

print("The estimated area is %f"%(area*samplesinarea/SAMPLENUMBER))
```
