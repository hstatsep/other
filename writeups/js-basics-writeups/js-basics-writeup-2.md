# Learning JavaScript

## Name: Jordi S
## Course: SEP 11
## Period: 2
## Concept: JavaScript

### Context


Throughout these past few weeks, I have begun learning JavaScript in my SEP 11 class at HSTAT. It has been a process in which posed many challenges and struggles but in the end alot of learning. Before I dive into my experiences learning this concept, it is good to know what JavaScript is. JavaScript, in simpler terms, is a programming language notably used to make websites interactive. With that definition in mind, here are my experiences learning this new and complex programming language. 

### The Learning Process 

In the beginning, when I first tasked with completing the JavaScript lessons on [FreeCodeCamp.org](https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/), I felt intimidated due to how this was a complete step forward in the coding I have learning previously learned(ex: HTML & CSS). I knew that this was going to be a process, in which there are things I am not going to get in the beginning. But I was encouraged to take on the challenge. 

So when learning on FCC (FreeCodeCamp), I began taking [notes](https://docs.google.com/document/d/106GVMaSWYMAnTBn7H5F6XgkcefZN94DG-plxEKumiPA/edit) on the fundamentals of JavaScript. I began writing down and screenshotting all that was provided to me on the website and writing down my own definitions in my notes in order to gain that understanding that sometimes can be confusing (to me) in other wording. Allow me to clarify..

Let's say I am on the FCC lesson, "Assigning the Value of One Variable to Another". 

**The Website states**: "After a value is assigned to a variable using the assignment operator, you can assign the value of that variable to another variable using the assignment operator."

If I get confused on this, I would first say to myself, How do I apply the ideas that I learned from previously lessons into this lesson so that there is a much more simplified defintion of this concept, while still maintaining the major idea. 

***A Definition I Wrote For Understanding***: 

Let's say you already assigned a Variable (what holds the data) with a value of 7, you can you used that assigned variable and assign it to another variable, making that variable equal to that value. 
EX:


```JS
var randomNumber;
randomNumber= 7;
var notRandomNumber;
notRandomNumber = randomNumber

```
 
While this has helped me in grasping my understanding of the subject, I lacked the application of that knowledge into individual practices and other activities. I would write these notes but I lacked the constant repitition of practicing them, ultimately leading me to forget and misremember a lot of previous ideas. It hit me alot of times, and in the next section, ***Trial and Errors*** I explain the process in some of the practices that was given in class and how I had responded to it with this challenge.  
 
 
 
 ### Trial and Errors
 ---
 
 ***The BananaFana Song***
 
This was a quick activity given to the class to complete. The goal is to apply what we know about JS into this song and complete it so that whatever is inputed, our JS would be instructed to apply it into the writing. Here is the [JS Bin](https://jsbin.com/nujakoxenu/edit?js,output) link to the activity. 
 

The Rule is simple, whenever we have a name like Jake, Rosa, or Sage inputed. What would output is the song, taking from the three letters of their name. 

EX: 
Let's say I input Jake. The output will result into this song: 

```
jake jake bo bake
banana fana fo fake
me mi mo make
jake ! 
```

When first given this task, being totally honest with you, I just sat there clueless and confused on how to implement JavaScript into this challenge. I did not know how to use variables into this, or how to implement the new concepts given to us earlier that week. I was lost. However, after seeing the way this activity was completed and it's answer, this aha! moment came into me. I saw the utilization of variables, document.write, and prompt in order to compose this entire song. I learned how the prompt in var name corresponded with the other variable you were supposed to make in order to capture the **specific** letters of the name. Also, I learned that the document.write was supposed to be the final step in order to display what you have written into text. Now with that understanding, I began to say to myself on how I would not forget this activity and what it has taught me. So, I began redoing this activity over and over so that I remain in this remembrance of the code and its purpose. This has helped. 




```js
var name = prompt("What is your name?");
var ending = name[1] + name[2] + name[3];
document.write(name + " " + name + " bo b" + ending + "<br>");
document.write("banana fana fo f" + ending + "<br>");
document.write("me mi mo m" + ending + "<br>");
document.write(name + "!");
```
 
 EXPLANATION OF THE CODE ABOVE: 
 
 As shown above, we begin the variable: ``` var name ``` . Inside that variable there we have a ```prompt``` in which when that is applied a little pop up will appear with the given text and the input it is requesting. When put together, it looks like this: 
 ```js 
 var name = prompt("What is your name?"); 
 ```  
 Additionally there is another variable, 
 
 ```js
  var ending = name[1] + name[2] + name[3];
 ```
What this variable does is that, it takes whatever name you inputed, let's say Jake, and takes the 2nd, 3rd, and 4th letter of the name with the utilization of bracket notation. Bracket Notation is used to find the character within a string. But why does it take the 2nd, 3rd, and 4th letter when it clearly says 1,2,3 in the brackets? Bracket Notation starts counting the characters from zero, meaning that J would be the first letter and so forth (ex: a=1, k=2, e=3).
 
 Finally, the ``` document.write```. That component of the code is what digitally displays your code in text on a page. So as shown above, I implemented ```var ending ``` into it, alongside other text that contribute to the structure of the song. 
 
### Takeaways and Next Steps

I need to remember that indexing is zero-based, which means that we start counting at 0 instead of 1. Also, using square brackets is especially useful for grabbing a certain letter from a string, such as `myString[0]` grabs the first letter. Finally, I now know the difference between `document.write()` (for the user) and `console.log()` (for the programmer).

Though the beginning was a little rocky, I plan to become more intentional in my learning process of JavaScript and begin to practice, study, and apply these skills whenever they're needed. There will be things that I won't know and have trouble with and it's okay because that's the fun thing about learning, we fail but in the midst of that, comes growth. Thanks for reading. 
 
 
 
 
 
 
 
