To search an element of certain value in an array, based on its value. We assume that this array is already sorted.

![[Pasted image 20251218122934.png]]
内在联系：inner relationships
Array：一切操作都是O（n），
Sorted array （构建需要nlogn，用merge sort），换取查找快速（二分）
Direct Access Array，建立寻址系统，find和插入都是常数时间，假设key的universal size（也就是u），查找前后的最坏情况都是要遍历整个array，当u大n小时不划算
Hash Table ， 解决访问空间浪费大的问题，使用小数组把大量数据映射过来，出现碰撞则插入链表，此处1（e）为期望时间，实际上build的过程可能更劣，而当哈希函数质量较高（即每个bucket均匀分布内容）的时候，我们默认查找时间为一个常数

Problem 1-1. Solving recurrences

Derive solutions to the following recurrences in two ways: via a recursion tree and via Master

Theorem. A solution should include the tightest upper and lower bounds that the recurrence will

allow. Assume T(1) ∈ Θ(1).

(a) T(n) = 2 T(n 2 ) + O( √n)

(b) T(n) = 8 T(n 4 ) + O(n √n)

(c) T(n) = T(n 3 ) + T(n 4 ) + Θ(n)

assuming T(a) < T(b) for all a < b

A: using the tree, we get O(n)

![[Pasted image 20251226012027.png]]
最优选择：
sequence的build：插入每个node的时候，都看成一个insert，最后复杂度为n
对于sequence不需要排序（有序号），建造时直接分序号就行（所以复杂度为n）
set的build：从中间开始弄出一个链表，递推式$T(n) = 2T\left( \frac{n}{2} \right)+O(1)$
T(n)= nlogn，为另一种排序方式

对于AVL tree，h为logn最小，降低了复杂度
AVL tree要被balanced，每一次改变一个root需要O(logn) rotations才能重新平衡


