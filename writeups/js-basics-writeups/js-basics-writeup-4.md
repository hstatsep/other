# Process Writeup

## Name: Eric M
## Course: SEP 11
## Period: 2
## Concept: JavaScript Basics

### Where I was

We've been learning Javascript basics, and there was one day of review where it all came together. The purpose of this review was to do just that, review what we had learned from the past few days. 

You see before hand, we had to go to a site called [FreeCodeCamp](freecodecamp.org). It's a site where you can learn and try out many different programming languages (some of you might already know that). And we had to do a couple lessons on JavaScript for homework. 

### The Task at hand

The task was called "The Banana Song". basically, the user would type in their name (in this scenario, the input would have to be a 4 letter name), and a short poem would be created. I forgot what the poem exactly said but it would repeat the last 3 characters in the name and replace the 1st character with F. (ex. **J**ake -> **F**ake). Here were some rules and tips we were given:  
* There would need to be a consonant, vowel, and ending variable.
* There should be no strings that include the letters of the names given
* We were encouraged to find a way to display a letter of an input without using any strings.

### My Progress

So when we were first met with this task. My first step was to create the prompt that asks for the 4 letter name. While we didn't learn this on FreeCodeCamp, we did learn it when the teacher gave us an example.

First, I created a variable titled "Name" and assigned a prompt that asks for a name: 
```js
var name = prompt("What is your name?")
```
Afterwards, I made multiple variables that use the letters of the initial input. However, we needed to do this without any strings. Here's what I did:
```js
/// keep in mind that 0 means the first character of a string or text ///
var vowel = name[1]
var consonant = name[2]
var ending = name[3]
```
So now that I got that done, I now need to make the poem visible. 

### the pain

At first, it was simple, all I had to do was put the variables together along side some strings that will always be there. In order to write back to the user, I would have to write `document.write()`. Now what i did was I put the variables and the names/characters together and it should look something like this.
```js
document.write("banana mana mo m" + vowel + consonant + ending + " " + "banana fana fo f" + vowel + consonant + ending...)
/// and so on ///
```
And while this does work, we have to also make a new line after the end character. At first, this seemed easy since I learned this in FreeCodeCamp and took note of it. So I tried using the code `\n` Which SHOULD make a new line, but it didnt. I've been trying so hard to figure out and testing out what I was supposed to do, was I supposed to put it in quotation marks or not? do I need the greater than/less than symbols or not? Here's what I tried:
```js
/// take note of the characters around \n ///
document.write("banana mana mo m" + vowel + consonant + ending + "\n" + "banana fana fo f" + vowel + consonant + ending...);
document.write("banana mana mo m" + vowel + consonant + ending + \n + "banana fana fo f" + vowel + consonant + ending...);
document.write("banana mana mo m" + vowel + consonant + ending + <\n> + "banana fana fo f" + vowel + consonant + ending...);
document.write("banana mana mo m" + vowel + consonant + ending + "<\n>" + "banana fana fo f" + vowel + consonant + ending...);
/// and so on ///
```
This went on for a while, until finally, the teacher told us something we needed to do. Instead of using `\n`, i needed to use `br`. so I just repeated the same process of testing as I did before and got nothing, until i realized something. There was no need for backslashes. THIS is the correct way to do it:
```js
/// take note of the <br> present in this line of code ///
document.write("banana mana mo m" + vowel + consonant + ending + " " + "<br>" + "banana fana fo f" + vowel + consonant + ending)
```
And of course it worked. I was so mad that I couldn't figure this out sooner. But, at least I did it. I made a similar mockup to this project since I didn't save the original before [here](https://jsbin.com/lisesuremi/edit?html,js,output). and maybe it'll be less annoying in the future.

### Takeaways

* Tinkering in jsbin is really helpful, as you can see in the example I linked above.
* Concatenating strings seems simple, and it often is. But when you just want PART of a string, you can put the letters together with `string[i]` where `i` is just a single number.
* If you're going to reuse some value, it can be helpful to put it in a variable.

On to arrays!
