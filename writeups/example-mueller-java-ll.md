# Process Writeup (example)

## Name: Mr. Mueller
## Course: Data Structures
## Concept: Java Linked Lists

### Context
In my Data Structures course, we're learning how to build structures that already exist in Java in order to learn how they work under-the-hood. The goal is to better understand the pros and cons of each data structure so that we know when to use each tool moving forward.

LinkedLists are a data structure very similar to ArrayLists in end-result functionality, but very different in how they take up memory in the computer. Here's my current understanding of the difference:
* ArrayLists are effectively glorified Arrays that take up contiguous space in memory. While Arrays are fixed in size, ArrayLists essentially use an "end" marker in an Array with extra space for more elements. When all of the extra space is used, elements are copied over to a new Array (behind the scenes). But the main point is that all data must be back-to-back in memory.
* LinkedLists are very different in that the values in a list can live in completely different/disconnected places in memory. We call them "nodes", where each node has the data, and a connection to the next node which could be anywhere.

### Task
The goal was to build the LinkedList class in two parts: first, individual nodes; then, the LinkedList of nodes. I worked with Victoria and Eric; we took turns driving and frequently paused to answer each others' questions and make sure we were all on the same page.

### Process
We first started off by building a `Node` class, where each instance holds both its data and a connection to the next node instance. We then built in a few methods to get/set the data/next. 

Now that the Node class was built, it was time to build the functionality of the way the nodes related to each other. The key component was to keep track of the node in the `front` of the list. From there, we're able to access every following noode. We created the following methods:
* `addFront()`: the ability to add a node to the front of the list
* `isEmpty()`: returns a boolean of exactly what it sounds like
* `length()`: simple in an Array or ArrayList, but requires traversing the entire Linked List
* `get()`: yet again requires traversing the list
* `set()`: traverse, replace, done
* `insert()`: required the most work (see next section)
* `search()`: you guessed it -- traversing!
* `remove()`: basically the opposite of insert. Read on...

### Challenges
It took some getting used to the sequence of events necessary to inserting a node to the front or middle of the list. Allow me to demonstrate. If our list is:
```
apple -> cucumber
```
and we want to add `banana` in the middle, intuition suggests to connect `apple -> banana` and then `banana -> cucumber`. However, the moment you do `apple -> banana`, then `apple` is no longer connecting to `cucumber`, so `cucumber` is helplessly floating in memory, disconnected from the linked list, waiting to be garbage-collected. 

The workaround is to first connect `banana -> cucumber`. At this point, two items are connected to `cucumber` (`apple` and `banana`). But that kind of flexibility is apparently allowed in a linked list: it doesn't need to be completely linear. Once the `banana -> cucumber` connection is made, it's ok to separate `apple -> cucumber` and instead connect `apple -> banana`. In the end, we have:
```
apple -> banana -> cucumber
```

Another challenge was when creating the `remove` method. To account for the previously mentioned sequence, we iterated through our LinkedList until we met the desired `index`, but `-1`. However, the problem with doing `if(i == index-1)` is that it doesn't work when `index=0` (deleting at the front). Nothing a simple [`if`](https://github.com/hunter-teacher-cert/work_csci70900-brianmueller/commit/0e238b260d1365f3da33721bc961c5a5749e9d52) statement can't fix!
```java
if(index == 0){
  front = null;
}
```
But the magic was when `i` reached the desired `index-1`:
```java
currentNode.setNext(currentNode.getNext().getNext());
```
While this may look confusing, it's rather simple: next in line after `currentNode` is `currentNode.getNext()`, which we want to remove. So we just have to set `currentNode`'s next to whatever is **two** nodes ahead, thus bypassing (deleting) the `next`. As an example, if we have...
```
apple -> banana -> cucumber
```
... and we want to remove `banana`, we just need to tell `apple` that `cucumber` is next (which is the node **two** spots after `apple`).

### Result
* [Driver.java](https://github.com/hunter-teacher-cert/work_csci70900-brianmueller/blob/master/ds/lists/Driver.java)
* [Llist.java](https://github.com/hunter-teacher-cert/work_csci70900-brianmueller/blob/master/ds/lists/Llist.java)
* [Node.java](https://github.com/hunter-teacher-cert/work_csci70900-brianmueller/blob/master/ds/lists/Node.java)

### Takeaways
I probably won't be adding onto these files, as linked lists are already built in to Java. But after building the core functionality from scratch, I now understand what is going on under the hood of a linked list, and thus know _when_ to use an ArrayList vs a LinkedList.
* Both are the same from an external perspective. However...
* ArrayLists are advantageous when you want to get/set using an index, because LinkedLists would have to traverse the list.
* LinkedLists are advantageous when you want to insert/delete, because ArrayLists would have to make lots of shifts.

---

NOTE: to see the raw code for this file, click [here](https://raw.githubusercontent.com/hstatsep/other/main/writeups/example-mueller-java-ll.md)
