# Process Writeup

## Name: William Z
## Course: SEP 11 (Javascript)  
## Period: 2 
## Concept: Variables, Operations, and Creating Madlibs
## Context
Recently I had been starting to learn the basics about Javascript. The basics about Javascript that I had been learning are setting variables and using them, doing mathematical operations using Javascript, and finding the nth character within a string. I also learned how to use ```console.log``` to leave a message to other programmers, and also using ```document.write``` to make text appear on the page. 

## Variables
 * I can create a variable by putting ```var``` before the variable name 
 * The variables can either be numbers or strings
 * Strings are series of characters that are within a single or double quotes like ``` var myString = "I am learning JS!"```
 * Example: ```var myName = William;``` (This line of code means that the variable called "myName" will be "William" whenever I use this variable in the future)

## Operations
 * I can do mathematical operations using Javascript by using "+,-,*,/" operators 
 * Example of Addition:```myVar = 5 + 10;```
 * Example of Subtraction:```myVar = 15 - 10;```
 * Example of Multiplication:```myVar = 5 * 2;```
 * Example of Division:```myVar = 15 / 3;```

## Finding the Nth Character Within a String 
 * I can find the nth character within a string. 
 * Javascript start counting at 0, so that means that the first character of a string is technically 0. 
 * Example: If ```var firstName = “Ada”```, you can find the last letter of the string by doing ```firstName[firstName.length -1]```

### Success and Challenges 

When it comes to the basics of Javascript that I am currently learning, I think putting variables and strings might be the most challenging for me. During the "Madlib CC Program", I was struggling with putting the variables and strings into a ```document.write```. A ```document.write``` is used to make text appear on a page and make it stay there. For the assignment, I would need to use it in order to make my madlib appear for the user. The first time when I typed out my ```document.write```, it didn't work. This was what I initially wrote: 
```js 
alert("Welcome to Your Vacation Planner!");
var name = prompt("What's your name?");
var location = prompt("Where would you like to travel to for vacation?");
console.log(name); 
var number = prompt("How many people are going with you");
console.log(number);
var cost = "$500,000,000";
console.log(cost);
document.write("Hey " + name + "!" + "<br>" + location + " would be a lovely place to go with " + number + " people and it will cost " + cost + ", but I believe you can't afford it just yet, so go back to studying SEP!");
```
When I run this, the things that I wrote in ```document.write``` will never show up. It took some time to look back into my notes and my classworks, and I notice that the first mistake I made was writing ```console.log``` after every single variable I have. I notice that it was repetitive and useless, it was just making my codes more complicated and harder to read. Since ```console.log``` are usually used to keep notes or messages for programmers, but it doesn't do anything to make text appear so I decided to remove them all.
```js 
alert("Welcome to Your Vacation Planner!");
var name = prompt("What's your name?");
var location = prompt("Where would you like to travel to for vacation?");
var number = prompt("How many people are going with you");
var cost = "$500,000,000";
document.write("Hey " + name + "!" + "<br>" + location + " would be a lovely place to go with " + number + " people and it will cost " + cost + ", but I believe you can't afford it just yet, so go back to studying SEP!");
```
After removing the ```console.log``` I was confident that the codes will work this time, but unfortunately for some reason the code still didn't work. At that point the code looks like it is supposed to work, there haven't been a mistake that I was able to catch no matter how many times I look at it. Coincidentally my partner, Ryan, had also encounter the same problem with the codes that we are working on. I notice that he had send it onto Slack to ask for some guidance and help. It took a while and we got an answer from Allen on Slack, he had noticed the mistake that appeared within our codes. It was a very small error within our code which was 
```var location```. The explanation from Allen was that apparently ```location``` is like a code itself within Javascript, so since I set a variable called location, it might and interfered with the ```document.write``` I was writing. Now that I notice the error, I changed ```var location``` to ```var locations```
```js
alert("Welcome to Your Vacation Planner!");
var name = prompt("What's your name?");
var locations = prompt("Where would you like to travel to for vacation?");
var number = prompt("How many people are going with you");
var cost = "$500,000,000";
document.write("Hey " + name + "!" + "<br>" + locations + " would be a lovely place to go with " + number + " people and it will cost " + cost + ", but I believe you can't afford it just yet, so go back to studying SEP!");
```
After I changed the variable, I was able to run the codes again. This time forunately I was able to get the code working correctly. 

## Special Thanks
It was a big relief and special thanks to Ryan and Allen. 

## Takeaways
From this assignment, I learned that I don't have to write ```console.log``` after every variable, since it will just make codes more harder to understand. I also learn that I should avoid using ```location``` when setting a variable, it will be better to use ```locations``` or others instead. 

I realized how important it is to ask questions on Slack. Allen helped me, and I never would have gotten the help if I didn't ask on the `js` channel.

## Next Step
The next steps that I would need to take after this assignment is to practice using variables and ```document.writes```. I can practice making more madlibs within my sandbox for IDE. The more I practice, the better hang I will get on it the next time I need to do something similar to this. 

To see the "Madlib CC Program" codes, the link is https://github.com/hstatsep-students/madlib-cc-ryanm6355-williamz8996-madlib. 
