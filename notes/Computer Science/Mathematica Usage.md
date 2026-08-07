Language: *Wolfram*
Traits:
1. Case-sensitive
2. shift+enter output
3. ; means don't output
4. use [] to pass parameter
5. Keywords' initials must be upper-case
6. select F1 for help
7. esc + type to input Greek letters
Assign:
```mathematica
a=1;
b=1;
#output 1
c=a*b
#output 1
D[x^3,{x,2}]
#output 6x (partial differentation)
Cancel[Sin[x]/(Cos[x]^2-1)]
f := If[0<=x<=1,2-x,x] #:=dynamicassignment#
Plot[f,{x,-1,1}]

TrigExpand[Sin[3x]]

Clear[a,n];
RSolve[{a[n]=a[n-1]+a[n-2]},a[n],n]#fibbsequence

#function with multiple parameters
y[i_,j_,k_]:=ai+bj+ck;
y[1,2,3]
#output i+2j+3k
Select[{1,2,3,4}, # >= 2 &] #placeholder & indispensible function
```
The symbols in Mathematica
mma is known for its complicated symbols. The usages are listed here for reference.
1. brace {} a set, a domain, a group, a matrix e.g. 
```mathematica
Plot[x^2,{x,-1,1}]
a={{a1,a2,a3},{b1,b2,b3}}
```
2. atsign @ to select the following expression, or a deeper layer of the expression
```mathematica
Times @@@{Times[1,2,3,e]} *->6e*
```
3. = assign == equal === boolean judgement in selections
4. ; don't output
5. **for comments
6. % the return value of all above ";"s
7. 