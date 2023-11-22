# *Process Writeup*

## *Name:* Marlen P
## *Course:* SEP11
## *Period:* 3
## *Concept:* Javascript Basics 

### Intro
In this unit we now begin to touch on topics of Javascript, starting with the basics. We have learned different ideas of from strings, to variables, to learning about console as well as modular arithmitic, and mathematic operations in JS. While learning these different skills we were given many different tasks to analyze, solve and attempt, all to practice Javascript basics. 
### Experience 
One of the main (and in my opinion a very helpful) aspect in our learning process were working through FreeCodeCamp lessons. 
#### FCC Lessons
FreeCodeCamp made learning a lot of JS material much simpler. I dont think it was super easy because you do need to struggle a little and have a few mistakes in order to truly learn 100%, but it wasnt at a level of difficulty that made JS stressing to learn. I was able to get through all the necessary lessons in a span of an hour, since I was also taking notes and rereading to make sure I truly understood what I was reading. Although taking longer than needed, I think for my personal learning style, it was very helpful in having the information I read and the skills I learned really stick.

### Main Process 
Using projects like Madlibs and analyzing the work in the "Banana Fana" song, we are able to further expand our understanding of the basic Javascript we have learned
#### Problems & Confusion
I came across a few problems cause by confusion across all the projects that we worked on, some requiring less work to figure out. 
In the **"Banana Fana" song** project, I had confusion with the <br> tag. It was something that was just taught and I was still learning and figuring out how to use it and where to place it so it will work properly. My problem was how I was unable to make it work (to separate the line) despite having placed the tag.
Here is an example of what my original code looked like:
```JS
document.write(name + "this is line one")
document.write("now," + name + "this is line two")
```
Here, my original solution was to just put the <br> tag at the end of the string right before the parenthesis, like so:
```JS
document.write(name + "this is line one" <br>)
```
I kept getting error messages after error messages, but none of my attempts worked, when I tried putting it outside the parentheses, putting a backslash. None of it really worked.
After a bit of trying, I decided to go back to my *notes*. I thought I could find something there, since a lot of this was taught in FCC, and I also had some notes that I took during class. Once I had a better idea of how the <br> tag worked, and how I can place it, I attempted something new:
```JS
document.write(name + "this is line one" + "<br>")
document.write("now," + name + "this is line two")
```
This was a **successful solution**, after that the error message went away and I was able to proceed with the rest of the string in the Banana Fana song with the proper line breaks. 

A more subtle problem I arrived to was in the **Mission Impossible** project. There, we had to work with a new skill, creating strings. 
While working in it, I didnt realize how to make it so all the code could show up the way I wanted
I had this:
```JS
var message = code[30]
         console.log(message)
```
This would only show me the number / letter one by one, making it very ineffective to be able to find the message I needed. I ended up continuing coding it without figuring out how to be more efficient. But after the project I realized how I can be more efficient (By looking at the slides, notes, and asking the person next to me for their thoughts)
I then changed the code to this:
```JS
var message = code[30] + code[30] + code[5]
         console.log(message)
```
This code was a **successful solution** in making the numbers/letters I needed appear in the order I needed, to reveal the message that was given to me. 

### Conclusion + Takeaways 
In the end, these situations helped me understand more how code works, and also helped me with practicing the steps I need to take when I was stuck. In both situations I either tried to figure it out on my own first, and in the end only once asked for a little bit of help to further help solve my problem. 
Some skills I got to practice included 
* Quotations: every Javascript string needs to start and end with `"`
* Formation of strings: when using variables, you don't use quotes, such as `"hello " + name + ", nice to meet you"`
* Practiced using the console: `console.log()` is useful when debugging variables, such as `console.log({someVariable})`
* Line breaking: using `\n` or the HTML `<br>` tag to force new lines.

Overall the two experiences where I struggled helped me learn more about JS basics, and also practice using the basic skills I learned + will continue to learn. 



