# Process Writeup

## Name: Grace D
## Course: JavaScript
## Period: 2
## Concept: Basic javascript

### Context

In this SEP course I started to learn basic Javascript. Here are some concepts I learned:
* Declare Javascript variables and assign values to these variables. Ex: `var a = 5;`
* Declare Javascript variables and assign them strings. Ex: `var c = "I am a";`
* Adding, subtracting, dividing and multiplying variable numbers. Ex: `var c = 10 + 5;`, `var b = 10 - 5;`, `var d = 15/3;`, `var a = 5 * 3;`
* Learned how to find specfic letters in a string. Ex:  
```js
var firstName = "Charles";
var firstLetter = firstName[0];
```
When you console.log() you would get C
* `console.log()`;:used to display your results
* `document.write();`: the same as console.log() except the output is for the user to see not the programmer.
* `alert();`:a popup box that'll disappear,you can use this to tell users what's going to happen and the directions they need to follow.

[Link to my Notes](https://docs.google.com/document/d/16sq6bjA4Tzv9S05zmJa_n01E-EAXv8AVI1qMKO25mPs/edit)

### How I Write My Notes
From my lessons in FreeCodeCamp,the way I took notes were different from last year when I learned HTML and CSS. I didn't copy and paste all the words directly from the lesson but instead explained them in simpler terms so when I come back to my notes I wouldn't be confused. I also took code snippets that are examples of the lessons I just learned so I would always have a reference when I look back at them. I also organized my notes using Titles and bullet points. My Titles would consist of lessons I just learned and the bullet points would explain what exactly I'm doing and the examples.

### Confusions
Throughout the lessons in FreeCodeCamp there were some lessons that I came across that confused me. One such lesson was Escape Sequences In Strings. In this lesson I had to display this:
```
FirstLine
    \SecondLine
ThirdLine
```
using sequences:
Code Output
```
\'	single quote
\"	double quote
\\	backslash
\n	newline
\r	carriage return
\t	tab
\b	word boundary
\f	form feed
```
This looks very overwhelming so I did one step at a time. First I figured out the sequences that I would use, they are `\\`, `\n`. and `\t`. Then I wrote out `var Str = "FirstLine/n/t//SecondLine/nThirdLine";`. I wrote the whole thing after the `=` inside `""` because they are not a variable but instead a string so I would need to use `""`. I then wrote `FirstLine` because that's what's supposed to be first for the output. Then I used `/n` after `FirstName` because I needed a line break as `SecondLine` is a line below `FirstName`. Then I wrote `/t` because as you can see there's a space in the second line indicating that tab is used to achieve that effect. Then I had to use `//` for the `/` to appear. Then I had to use another `/n` after that to make a new line for `ThirdLine`. Now the code is completed and I did run test on FreeCodeCamp. But I got it wrong, which made me extremely confused because I did everything the lesson asked me to but all I got was a error message. Then I realized that I put a `/` instead of `\`! So now instead of `var Str = "FirstLine/n/t//SecondLine/nThirdLine";` it should be `var Str = "FirstLine\n\t\\SecondLine\nThirdLine";`. 

There were also some things I learned through trial and error. I realized that in order to put spaces in between strings you have to put a space before the last `"`. An example of this `var example = "Hello. " + "Goodbye. "` Also if you want to add multiple variables (with assigned words/numbers) with one or two strings, you should put `" "` between them. Here is an example from the Word Banks lesson from FreeCodeCamp:
```js
var myNoun = "dog";
var myAdjective = "big";
var myVerb = "ran";
var myAdverb = "quickly";
var wordBlanks = "The " + myAdjective + " " + myNoun + " " + myVerb + " "+ myAdverb + ".";
```

Another thing that got me confused was when we did the BanaFana song. For this task I had to input a four letter name, then use the last three letters to make each song with different four letter names unique. For example for the name Jake, the output should be:
```
jake jake bo bake
banana fana fo fake
me mi mo make
jake!
```
For the name Rosa, the output should be:
```
rosa rosa bo bosa
banana fana fo fosa
me mi mo mosa
rosa!
```
For the name Sage, the output should be:
```
sage sage bo bage
banana fana fo fage
me mi mo mage
sage!
```
As you can see right here I have to write code that allows any four letter names to have the same format as those above. So the first code I have to write should output a popup box that asks the user what four letter name they'll like to input. The code that I wrote for that was: `var name = prompt("What is your name?");`.

The next step was to find the last three letters of the word. For that I at first wrote `var lastThreeLetters = name[name.length-3,name.length-2,name.length-1];`. I thought that would work because `name.length-3` means the the third to last letter which if we used the name Jake as an example the letter would be 'a'. I came to the same conclusion with `name.length -2` and `name.length - 1`. But after I ran the code nothing happened so I must've did something wrong. I then tinkered, writing out `var lastThreeLetters = name[name.length - 3] + name[name.length - 2] + name[name.length - 2];`, but that was wrong too. It was not until the class discussion until I realized that there was a much easier way to do it.

Since the name has to have four letters the code could just've been `var lastThreeLetter = name[1]+name[2]+name[3];`. `name[1]+name[2]+name[3]` gives you the second, third and fourth letter of the name which in other words, gives the last three letters of the name.

Now after that there is one last thing I had to do, that is to put everything together to make the song, which also has linebreaks. I used what I learned in word banks and the sequences to put it together. This was what I wrote at first `console.log(name + " " + name + " bo b" + lastThreeLetter\n + "banana fana fo f" + lastThreeLetter\n + "me mi mo m" +lastThreeLetter\n + name +"!");`. The code didn't work and I was confused on why it wasn't working. Then during the class discussion we learned that we should of done `document.write()` not `console.log()`, because we want other users to see the output and not just let ourselves see it. Then I learned that because we use `document.write()`, instead of using `\n`, we should've use `<br>`, which does the same thing `\n` does. Now after fixing my code it looked like this: 
```js
document.write(name + " " + name + " bo b" + lastThreeLetter + "<br>" + "banana fana fo f" + lastThreeLetter + "<br>" + "me mi mo m" +lastThreeLetter + "<br>" + name +"!");`
```

Now the whole entire code for the BanaFana song would be:
```js
var name = prompt("What is your name?");
var lastThreeLetter = name[1]+name[2]+name[3];
document.write(name + " " + name + " bo b" + lastThreeLetter + "<br>" + "banana fana fo f" + lastThreeLetter + "<br>" + "me mi mo m" +lastThreeLetter + "<br>" + name +"!");
```

### Takeaways
* When concatenating strings, you often need to include an extra space before the closing quote because you want the space to show up before the next word.
* The most common escape sequence is `\n` for a new line
* Carefully placed `console.log()`s can be helpful for debugging.