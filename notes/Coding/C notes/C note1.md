---
Date: 2024-12-14T22:14:00
---
[C 语言入门手册：几小时内就能学会的 C 语言基础](https://www.freecodecamp.org/chinese/news/the-c-beginners-handbook/)
website1
Two types:



1.编译型语言
2.解释类型语言
c为编译型语言
生成可直接执行和分发的二进制语言
没有GC *Garbage collection
GC: The computer is suddenly out of memory. OutOfMememory problem occurs
So the collector checks the unused storage and reuse it**



运行：
用ming64
g++ -o nameofexe code → generate code
nameofexe.exe → execution instruction

### data type and boundary
1. unsigned:
 - char:
		0-255
 - int
		0-65535
 - short
		0-65535
  long
		0-4294967295

2. floats:
 - float(32bits)10^-37 -10^+37
 - double(more than 32)
 - longdouble(even much more)


## output
cout <<
cin >>

### Comparsion
equal =
not equal !=
\>=
\<=

Not !
And &&
Or ||



### Selection
- If else


### Pointer
Integer:hexadecimal
consists the address of a piece of storage




## Class/Structure

Class: private inheritance/variable
Structure: public inheritance / variable



## Reference /value
```C++
// by reference pass the variable into the function (extend the function domain of the variable)

void swap(int&a,int&b){

    int temp;

    temp = a;

    a= b;

    b = temp;

}

void swap(const int& a, const int& b){

    // the a and b cannot be changed inside the function

}


int main(){

    int a =1;

    int b =2;

    swap(a,b);

    cout << a << b << endl;

}
```


##  Sieve of Eratosthenes

An efficient way to find primes

Naive way : for each i , find numbers from 2 to int(sqrt(x)).
Time complexity $O(n\sqrt{ n })$
Space complexity $O(1)$


Smart way: hold a list from 1 to n, find the multiples of 2, find the multiples of 3.....
Time complexity $O\left( n*\left( \frac{1}{2}+\frac{1}{3}+\frac{1}{5} +\frac{1}{7}+\dots.\right) \right) = O(n\log \log n)$

Space complexity $O(n)$

```C++
int SieveofEratosthenes(int N){
	//find all primes within N
	int x[N+1];
	for (int i = 1; i < N+1; i++){
		x[i] = True
	}
	// initialize 1 to n, true means prime
	for (int i = 2; i*i <= N;i++){
		if (x[i] == True){
			for (int j = i*i; j <= N; j+=i){
				x[i] = False
			}
		}
	}
	
	for (int i = 1; i < N+1; i++){
		if (x[i]){
			cout << i;
		}
	}
	
	
}
```
## NP complete problem

- P problem: can be solved in Polynomial Time
- NP problem: the answer can be proven in Polynomial Time
- NP hard problem: any NP problem can be reduced to it in polynomial time
- NP-complete problem: NP-hard(any NP problem can be reduced to problem) and is NP

Once any NP-complete problem is proven to be P problem, then P=NP
(This question is worth a million dollars)


