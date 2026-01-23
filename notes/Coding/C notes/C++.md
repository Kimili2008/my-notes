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