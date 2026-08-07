## Fast input/output

Cin is by default tied to cout. This means whenever you input something, your program checks whether your buffer is empty or not.
If it's not empty, it prints and flushes the buffer. This makes sure all the hints for your input is outputed.
e.g.
```c++
int main(){
	cout << "man!!!";
	int k; cin >> k;
	//This cin automatically outputs the "man!!!"
}
```
Cin/out is system operations (very expensive)
so we should avoid using them too much in CP.

```c++
int main(){
	ios_base::sync_with_stdio(false);
	cin.tie(NULL); //This calls fast IO

}
```


```c++
int main(){
//vector: dynamic array
	vector <int> v1;
	vector <int> v2(10);
	int[] arr = {1,2,3,4,5};
	vector <int> v2(arr, arr+5);
	//example
	vector <int> vec;
	//push
	vec.pushback(10);
	vec.pushback(20);
	//insert
	vec.insert(vec.begin()+1,10);
	cout << vec.front << vec.back << endl;
	//iteration
	for (int num = 0, i < vec.size(), i++){
		cout << vec[i] << endl;
		
	}
	
	

}
```