# Process Writeup (example)

## Name: Mr. Mueller
## Course: Ethics (Python)
## Concept: Recursion

### Context
Right now I am learning Python for my CS Ethics course at Hunter College. I have learned the basics in Python, and I've learned more complex topics in Java. Then at a workshop through MfA, we've been going through coding challenges, so I chose a task that would help me practice advanced concepts in Python. For reference, here is the link to the [task](https://app.codesignal.com/interview-practice/task/rMe9ypPJkXgk3MHhZ/description), although you won't be able to view it unless you've "unlocked" it. Here is the challenge:

> You have a collection of coins, and you know the values of the coins and the quantity of each type of coin in it. You want to know how many distinct sums you can make from non-empty groupings of these coins.
> EXAMPLE:
> For `coins = [10, 50, 100]` and `quantity = [1, 2, 1]`, the output should be
`possibleSums(coins, quantity) = 9`.

My friend Jimmy said he tried this using nested loops and brute force, but it timed out with high quantities such as 50,000 coins. My goal was to make it more efficient by approaching it from a recursion angle.

### Successes & Challenges
As I've been learning recursion, I've found it helpful to think about it in this way: a function calls itself, which calls itself, which calls itself, etc -- UNTIL the function returns (true, false, a number, etc) and then it works its way back to the beginning when the function was first called.

So I decided to start by making an array of all coins, including duplicates. Using the example above, it would hold `[10, 50, 50, 100]`. To do this I wrote a simple nested `for` loop:
```python
for i in range(len(coins)): # go through all positions
    for j in range(quantity[i]): # add this many coins
        all_coins.append(coins[i]) # add this coin specifically
```

My approach was to find the highest possible sum (by doing `sum(all_coins)`) and then use that as my upper bound of looping through every integer, seeing if any combination of coins would sum to that integer. I knew I had to find all combinations of sums. Since the scope of the task was to find the number of combinations between two zipped arrays, it didn't feel off-limits to search for a starting point to sum a subset of an array for a target. That's when I found [this code snippet](https://stackoverflow.com/questions/4632322/finding-all-possible-combinations-of-numbers-to-reach-a-given-sum):

```python
def subset_sum(numbers, target, partial=[]):
    s = sum(partial)

    # check if the partial sum is equals to target
    if s == target: 
        print "sum(%s)=%s" % (partial, target)
    if s >= target:
        return  # if we reach the number why bother to continue
    
    for i in range(len(numbers)):
        n = numbers[i]
        remaining = numbers[i+1:]
        subset_sum(remaining, target, partial + [n]) 

subset_sum([3,9,8,4,5,7,10],15)
    #Outputs:
    #sum([3, 8, 4])=15
    #sum([3, 5, 7])=15
    #sum([8, 7])=15
    #sum([5, 10])=15
```

Notice that _within_ the definition of `subset_sum()` is an invocation of the function itself: `subset_sum()`. This is recursion! To those unfamiliar with recursion, this might seem like it would trigger an infinite loop. But that's the point of the `return`: a "base case" that allows the stacks of function calls to actually evaluate and work back to the beginning.

After looking at the code for a while, I tried figuring out if this is even what I wanted the function to do. Looking at the sample output, I realized it was finding _all_ combinations of subsets that would reach a desired target. Since Jimmy's approach timed out due to ineffeciency, I knew I would have to at least modify this to end early once _any_ subset summed to the target. I tried all sorts of keywords (like `return` and `break`) in various places, but the recursive algorithm kept repeating. At this point, I felt like giving up.

I went to the next MfA workshop and decided to ask Marieke for help. I've worked with her before, but we've never actually coded together. 

One big takeaway from what she explained was the unusual Python syntax of `remaining = numbers[i+1:]`. Essentially that means a subset of the array, starting at `i+1` and going to the end (`:`). Python, you are usually so intuitive. But that syntax is really annoying.

After two hours of carefully placed `print` statements, thinking out loud, and attempting to have the function `return` a boolean that would then be used in a conditional statement in the main function, we got it:

```python
def subset_sum(numbers, target, partial=[]):
    s = sum(partial)

    # check if the partial sum is equals to target
    if s == target: 
        return True # needs to return ALL the way back to first call
    if s >= target:
        return False # if we reach the number why bother to continue

    for i in range(len(numbers)):
        n = numbers[i]
        remaining = numbers[i+1:]
        if(subset_sum(remaining, target, partial + [n])):
            return True
```

The boolean gets returned all the way to the "top" of the stack, into the main function. I should also point out that we used [Python Tutor](https://pythontutor.com/) to step through the code and see the values of the subsets at each recursive call. Our example yielded 612 steps, so we had to simplify the input and that gave us 84 steps: much more manageable! I also eluded to a conditional statement; here it is:

```python
if(subset_sum(all_coins,i)):
    all_combos.append(i)
```

The last thing to do was actually loop through the range of numbers.
```python
for i in range(highest_combo+1):
```

But I noticed I was getting 10 instead of 9. Upon discussing with Marieke and using a few more `print()` statements, we realized that the empty set (`{}`) was accidentally being counted every time, so we decided to offset the `return` value.
```python
return len(all_combos)-1 # remove empty set possibility
```

### Next Steps
The good news: the code worked! Most of the tests passed.

The better news: I understand recursion a lot better, particularly with unusual Python syntax, and definitely with subsets of arrays.

The bad news: apparently the code is still not efficient enough on that 50,000 coin example. I should have known: recursion does usually add many function calls to a stack. I'd be interested to see if there's a general rule of thumb for when nested loops are more efficient than recursion, or if it's a case-by-case basis kind-of-thing.

For now, I hope to make my algorithm more efficient and pass the 50,000-coin challenge!

---

NOTE: to see the raw code for this file, click [here](https://raw.githubusercontent.com/hstatsep/other/main/writeups/example-mueller-python-recursion.md)
