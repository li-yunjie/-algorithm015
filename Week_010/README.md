# 毕业总结

数据结构  
一维：  
数组，链表，栈，队列，deque，双端队列，集合，hash or map  
二维：  
tree，graph，binary search tree，heap，disjoint set，Trie  
特殊：  
位运算bitwise，布隆过滤器bloom filter  
LRU Cache  
  
算法  
if else  
for while loop  
递归 recursion (divide & conquer, backtrace)  
搜索 search，BFS，DFS，A*  
动态规划（寻找最优子结构）  
二分查找  
贪心  
数学，几何  
  
递归代码模板  
```
func recursion(level: Int, param: Int) {
    //terminator
    if level > MAX_LEVEL {
        //process result
        return
    }
    //process current logic
    process(level, param)
    //drill down
    recursion(level: level+1, param: newParam)
    //restore current status
}
```

分治模板  
```
func divide_conquer(problem: Any, param1: Any, param2: Any) {
    //recursion terminator
    //if problem is None: print_result return

    //prepare data
    data = prepareData(problem)
    subproblems = splitProblems(problem, data)

    //conquer subproblems
    subresult1 = self.divide_conquer(problem: subproblems[0], param1: p1, param2: p2)
    subresult2 = self.divide_conquer(problem: subproblems[1], param1: p1, param2: p2)
    subresult3 = self.divide_conquer(problem: subproblems[2], param1: p1, param2: p2)

    //process and generate the final result
    result = processResult(subresult1, subresult2, subresult3)

    //revert the current level states
}
```

BFS, DFS, Trie, MergeSort  

化繁为简的思想  
避免人肉递归  
找到最近最简方法，拆分成可重复解决的子问题  
数学归纳法思维  
  
学习要点  
过遍数  
刻意练习  
寻求反馈，看题解和国际版高票回答  
  
