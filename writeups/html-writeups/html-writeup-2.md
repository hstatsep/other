# Process Writeup

## Name: Emily L
## Course: SEP10 (Web Design)
## Period: 4
## Concept: HTML Elements

### What I learned
I learned HTML elements on freeCodeCamp. I took notes on all the important details while doing the activity.

I learned that:
* `<h1>` is used for headings
* `<img src="image.png">` is used to insert images
* `<a href="another.website"></a>` is used to link other websites
* `<ol>` and `<ul>` is used to create ordered and unordered lists
* `id` is used to create internal links
* you can make images into links by nesting them with the anchor (`<a>`) element
* replacing the url with # in `<a href="url.here">` will create a dead link

### Process
When making [this](https://makesomethinghtml.emilyl9154.repl.co/), I first added the heading by typing `<h1>Red Pandas</h1>`. I then inserted the image by dragging & dropping the file into the img folder and coded `<img src="img/redpanda.jpg">`. I created a subheading by adding `<h3>Facts:</h3>`. I started an unordered list by coding `<ul><li>`. I searched up some facts and put them in-between the `<li></li>` tags.
In order to link "internet brower named after them" to FireFox, I added `<a href="https://www.mozilla.org">` after the word "an" and closed it with an anchor tag (`</a>`) after "internet browser named after them".
The unordered list code looks like this:
```html
<ul>
 <li>They're not actually pandas (and are not related to giant pandas) </li>
 <li>They have an <a href="https://www.mozilla.org">internet browser named after them</a></li>
 <li>They are an endangered species</li>
 <li>They can run up to 24 mph</li>
</ul>
```
Finally, to link "Learn More" to the Wikipedia page about red pandas, I coded:
`<a href="https://en.wikipedia.org/wiki/Red_panda">Learn More</a>`

### Mistakes
A mistake I made on FCC was mistaken `<ul>` as `<u1>`. After getting the same error 3 times, I looked at it more closely, found my mistake and corrected my code. I wrote,
```html
<u1>
  <li>milk</li>
  <li>cheese</li>
</u1>
```
instead of
```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

### End Result 
[Repl.it MakeSomethingHTML](https://replit.com/@emilyl9154/MakeSomethingHTML#index.html)
##### Code that is between `<body>` and `<script>`:
```html
<h1>Red Pandas</h1>
  <img src="img/redpanda.jpg">
    <h3>Facts:</h3>
    <ul>
      <li>They're not actually pandas (and are not related to giant pandas) </li>
      <li>They have an <a href="https://www.mozilla.org">internet browser named after them</a></li>
      <li>They are an endangered species</li>
      <li>They can run up to 24 mph</li>
    </ul>
   <a href="https://en.wikipedia.org/wiki/Red_panda">Learn More</a>
```

Another mistake I made was trying to indent a bullet point inside of a list. I tried just indenting the code like this:

```html
<ul>
  <li>Regular item</li>
    <li>Indented item?</li>
</ul>
```
But that didn't work, and the "indented" bullet point wasn't actually indented. I asked on Slack, and Vivian give me a hint that I have to make a list INSIDE the list. So I tinkered on JSBIN and tried:

```html
<ul>
  <li>Regular item</li>
    <ul><li>Indented item!</li></ul>
</ul>
```
And it worked!

### Takeaways
* The `l` and `1` look similar, so try not to get them confused (especially when making a `<ul>`).
* You can make an image clickable by putting the `<img>` INSIDE the opening/closing tags of `<a></a>`.
* Asking on Slack (help from Vivian) and tinkering in JSBIN (indented list) are a great way to get unstuck.

Making HTML is fun, and I'm excited to learn about CSS.