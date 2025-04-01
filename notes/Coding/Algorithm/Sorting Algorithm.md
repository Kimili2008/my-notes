There are many types of algorithm.
This passage will tell you the four most famous algorithms about sorting
```python
#sorting algorithums(all in ascending order)
#1. bubblesort
def bubblesort(array):
	for i in range(len(array)):
		for j in range(len(array)-1):
			if array[j]>array[j+1]:
				tem = array[j]
				array[j] = array[j+1]
				array[j+1] = tem
	return array
#time complexity O(n**2)
#if the former element is larger than the current element, it will switch sides.

#2. selection
def selectionsort(array):
	int min = 0
	for i in range(len(array)-1):
		for j in range(i,len(array)):
			if array[j] < array[min]:
				min = j
		tem = array[0]
		array[0] = array[min]
		array[min] = tem
		min += 1
	return array
#3. insertion





```





