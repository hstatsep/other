# Process Writeup

## Name: Jasmine H
## Course: SEP10 Web Design
## Period: 4
## Concept: HTML elements

### Context
Right now I am learning about the basics of HTML. Most of the elements that I'm learning can be considered some of the basic properties of websites such as headings, paragraphs, images, links, etc.

### Experience with FreeCodeCamp and Learning

I really enjoyed doing assinments and challenges on FCC. It was really fun to learn and figure out things as I went along. I was also able to collect a bunch of [notes](https://docs.google.com/document/d/1s6VTe-AcpNV47bQZt0s4plrRcAPIWEY16KqA5cgMCb8/edit) which I am very happy about. The first things I learned about were headings (`h1`) and paragraphs (`p`) which were probably the easiest parts of HTML so far. Then I learned about using main tags which basically highlight that part of the website so that when your website is looked up that's the first thing that will pop up. After that we learned about inserting images using `img` and `src`. `img` stands for image and `src` stands for source, the source is the URL of the image which leads to the original version of the image. `alt` is also an attribute that is used just in case the image fails to load.
  
After all of that we learned about how to make links. After that we learned about how to make an internal link, which was the hardest thing for me to understand. I will go into detail with this later when I talk about my challenges. Finally for the links we learned about how to turn an image into a link.

The final thing we learned how to do was ordered and unordered lists. An unordered list is a basic bullet point list while an ordered list is a numbered list. An example of that would be:

```html
<ul>
  <li>This is</li>
  <li>how you make</li>
  <li>an unordered list</li>
  <ul>
  
 <ol>
  <li>This is</li>
  <li>how you make</li>
  <li>an ordered list</li>
 <ol>
```
Overall most of the things I learned have been easy to learn.
  
### Challenges
The only MAJOR thing I really had a hard time understanding at first was internal links. I didn't know how the `id` worked and where to put it. I was very confused as to what the `id` of href meant. I didn't really understand it much even after reading FCC's explanation and taking notes. I tried putting the `id` after the `href`'s value not knowing that I had to fully replace the link with the id. I didn't understand it fully until I asked it in class. Then I found out that instead of the `href`'s value being a link it has to be a word that can help identify a certain place. For example you start an anchor and then type `href` and it's value should be whatever you want the `id` to be. Then you put a `>` and then whatever text you want, usually that text should indicate where the link will take you on the page, it will also be the text you click to go to the place on the page. Then you finally close the anchor. This first part would usually go either in a table of contents or somewhere near the top of the page. The 2nd part is the line of code that goes to where you want the internal link to lead. If you want it to go to a heading you start the heading as normal with `h2`, then you type the `id` again. Then type `>` and then whatever you want the heading to be before finally closing it all off with a closing h2. An example of this would be:
  
```html
<a href="#contact">Heading 2</a>


<h2 id="Contact">Heading 2</h2>
```

Besides internal links most of the other mistakes were small and mostly due to spelling mistakes. One example was when I was first learning how to insert images. What I wrote at first was:

```html
<img scr>
```

<p>I kept getting an error over and over again until I looked at the attribute and realized that I switched up the c and r. What it should have been was:

```html
<img src>
```
   
There isn't really any other errors that I made, however... I would still get confused from time to time and would have to re-read things multiple times to understand it. One thing that confused me a lot was seeing "The value of.." because I didn't really understand what that meant. It still slightly confuses me sometimes depending on how it is worded. Another thing that would confused me would be the number of angle brackets in a line of code sometimes.


### Steps for the future
So far I think I am doing well because I managed to get a 9/10 on my quiz. As long as I continue to practice and take notes I will continue to do well. In the future I need to **pay attention to detail** so that I do not make any mistakes JUST because of small spelling mistakes, like `scr`/`src`. Also since **I asked my question in class** about internal links and got it answered, I'll be asking more questions in class. Eventually I hope I will be able to make a website with relative ease... but for now I still have a lot to learn!