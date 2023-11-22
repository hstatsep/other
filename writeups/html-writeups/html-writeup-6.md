# Process Writeup

## Name: Bobby C
## Course: SEP 10 (Web Design)
## Period: 2
## Concept: HTML elements

# Context:
This is the beginning of my coding education journey, starting off with learning how HTML works in my Software Engineering class. Rest assured, this was not an easy task by any means. I had a variety of different difficulties and struggles when learning the many elements of HTML. This is my first time ever learning this type of coding style where we type out the actual code. 

# Difficulties and challenges
The first website we used to learn the basics of HTML is called [Free Code Camp](https://www.freecodecamp.org). This website has different tasks for you to complete and once you finish that task, you can move on to the next challenge. Or if you like, you can choose whichever task you would like to learn how to do. Each task teaches one specific element of HTML. For instance, one task teaches you how to put code in to change the size of what you are typing. It explains it is done by putting code like this.

```HTML
<h1>Hello World</h1>
```
The h1 is the biggest size and the smaller you want the size, all you do is just change the number next to the h to be greater, the greater the number, the smaller the text however it can only go to size h6 which looks like `<h6>This </h6>`

This was something simple and was easy for me to understand, but once the tasks became more about how to add specific things such as pictures and links to the website, that's when I began having a lot of struggles. One thing that was a huge issue was adding options for the user to add an input to. While doing this, I tried

```HTML
<label for="indoor"> 
  <input id="indoor" 
   name="indoor-outdoor">Indoor 
</label>

<label for="indoor"> 
  <input id="indoor"
  name="indoor-outdoor">Outdoor 
</label>
```
When this was put into the code, it wasn't showing up as choices, then I relooked over the code and realized I needed to add a **type radio** for the two choices making the code look like this

```HTML
<label for="indoor"> 
  <input id="indoor" type="radio" name="indoor-outdoor">Indoor 
</label>

<label for="indoor"> 
  <input id="indoor" type="radio" name="indoor-outdoor">Outdoor 
</label>
```
This correct code created the two different choices that were necessary for me to complete the task in Free Code Camp.

## Second Challenge 
Another thing I had a large amount of difficulty on was adding a link on my website to jump to another part of the website. During an assignment of having to create my own small website, and I decided to make the website about getting a dog. I wanted to include a link to go down to the part of the page that states some things needed to get when getting a dog. 

At first, I forgot how to do something like that, but then I went back onto Free Code Camp and redid the task of "Link to internal sections of a page with anchor elements". This task explained that I had to add a `#` symbol to my href attribute with an `id` then add another Id to wherever I wanted the link to go.
I added these codes to my website.

```HTML
<a href="#Footer" > Things that you will need for a dog </a>

<footer id=Footer> Things you will need to get </footer>
```
This ended up working just how I wanted and I was satisfied with how the final product turned out. 


## Notes
While completing these tasks, I took notes on how the codes worked and wrote important information down. I didn't understand a lot of what I was writing for a bit. But the more practice I got from assignments and warm up, I noticed that the notes I had made were useful when I didn't know how to do something. 

## Class demonstration
In addition to taking notes, I sometimes miss a few things and end up not taking notes for certain things. When my Classmate Zoe went up to the board and did a demonstration where other classmates would help her learn how to add a dead link, they also helped me even though they weren't directly talking to me. I was able to take notes on what was being said and try it out for myself. Now I understand I need a `#` in my `href` attribute to create something like that. 

## Takeaways
* Taking notes is more helpful than I thought. I learned this during Zoe's demonstration.
* Free Code Camp is a great starting point, but I am learning more as I code new examples in replit, i.e. my "make something".
* Radio buttons have to have the same `name` in order to be linked together.

This is only the beginning and I have so much more to learn. I now know that this will not be easy at all and I will have moments where I don't have any clue what I am doing and want to give up. Luckily I have people and friends that are going through the same thing and I know I'm not doing any of this by myself. 


