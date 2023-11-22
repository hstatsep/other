# Process Writeup

## Name: Austin L
## Course: SEP 10
## Period: 1
## Concept: HTML/CSS Elements & Properties

### Context
In SEP 10, we are currently learning the basics of web design and HTML/CSS concepts such as attributes, elements, and styling. This is a summary of the understanding of what **I** have learned so far:

* Elements include an opening and closing tag. For example, `<p>Lorem Ipsum</p>`
* Some elements are self-closing. For example, `<img src=# alt=Placeholder Text>`
* You can add CSS to HTML files by implementing the `<style>` element
    * You can also link an external CSS stylesheet:
    * `<link rel=stylesheet" href="filename.css">`
        * Parameters: filename - Just the name of your file
* `<div>` defines a section in your HTML document. This is especially useful when adding CSS later on.
* All HTML documents must start with a `<!DOCTYPE>` declaration, with the type of HTML the webpage is using inside of it, like `<!DOCTYPE html>` (HTML5)
* After that, your entire code should be wrapped in `<html>`.

Of course, this is not everything I know, but just the basics.

### Assignment

The task was to build a webpage in Replit (html-make-something). It needed to include at least three different elements such as paragraphs, headers, and images. 

### Process

I started off by creating a heading element followed by an image and paragraph to make captions. I also added some CSS styling such as fonts and background color.

### Challenge #1

At first adding paragraphs next to elements worked, but as I added more images it became clear how unstructured and disorganized it looked. Text was not where it should be, and images were uneven and not aligned correctly.

My first approach was to add line breaks (`<br>`) to my paragraph elements to align them with the images. This looked _REALLY_ ugly however both in the code and the webpage itself. Also, it didn't change the relative position of the images, so in the end it wasn't even viable. 

My other attempt to fix the images was to add the "float" CSS property to my images which usually will position the image next to the text, which also didn't work. 

After going on W3Schools and looking at the different ways I could customize the position of my elements, I came to a solution that would work best in this situation.

All I had to do was nest the elements inside of a table. A table is usually used in HTML to structure data, but in this case I can use it to format my images and paragraphs. For example:  
```html
<table>
    <tr><!--This is a table row-->
        <td>Cell 1</td><!--This is a table cell-->
        <td>Cell 2</td>
    </tr>
    <tr>
        <td>Cell 3</td>
        <td>Cell 4</td>
    <tr>
</table>
```
The output will look like this:
<table>
    <tr>
        <td>Cell 1</td>
        <td>Cell 2</td>
    </tr>
    <tr>
        <td>Cell 3</td>
        <td>Cell 4</td>
    <tr>
</table>
This can also be done with images:  

```html
<table>
    <tr>
        <td><img src="https://hstatsep.github.io/img/hstatsep-logo-icon-small.png" alt = "SEP logo"></td>
        <td><p>The HSTAT SEP logo!</p></td> <!--Sorry Mr. Mueller-->
    </tr>
</table>
```
It will look like this:
<table>
    <tr>
        <td><img src="https://hstatsep.github.io/img/hstatsep-logo-icon-small.png" alt = "SEP logo"></td>
        <td><p>The HSTAT SEP logo!</p></td>
    </tr>
</table>
Knowing this, I can add as many images and paragraphs as I want inside the table and it will automatically be aligned. It's a simple solution, looks clean, and can be customized as well.

### Challenge #2  

Although I now know how to format my images and paragraphs, sometimes images are different sizes and that can also cause a mess when viewing the webpage. The solution to this is changing the properties of the image. There are many ways to do this (external, inline, internal, etc.) but what I did was create a class that I could assign to all of my images since I wanted them to be the same size anyways. 

The solution to this was more straightforward, as I already had some knowledge on CSS properties. I created my class in an external CSS stylesheet, where I changed the width and height of the image and adding a border. This is what it looked like:
```CSS
.small-image {
    width:200px;
    height:200px;
    border-style: solid;
    border-color: gray;
    border-width: 2px;
    border-radius: 10px;

  }
```
Then I would assign the class to an element like this:  
`<img src=# class="small-image">`  
This would ensure that all of the images on my webpage had the same properties. 

This is a snippet of some code in my project that didn't work before:
```HTML
 <a href="#"><img src="img/ca4.jpeg" alt="a ca" style="float:left" class="small-image"><br></a>
  <div>
    <p class="paragraph-font"><pre>
        This is a ca           
        Personally my favorite ca 
    </pre></p>
  </div>
  <a href=#><img src="img/ca1.png" alt="another ca" style="float:left" class="small-image"></a>
  <div>
    <p class="paragraph-font"><pre>
        This is ca 1
        The most iconic one
    </pre></p>
  </div>
  ```
And this is the same code with my changes:
```HTML
<table>
    <tr>
      <td> <a href="#"><img src="img/ca2.png" alt="a ca" class="small-image"></a></td>
      <td> <p class="paragraph-font"><pre>
        This is ca 4           
        Personally my favorite ca 
    </pre></p></td>
    </tr>

    <tr>
      <td> <a href=#><img src="img/ca1.png" alt="another ca" class="small-image"></a></td>
      <td> <p class="paragraph-font"><pre>
        This is ca 1
        The most iconic one
    </pre></p></td>
    </tr>
```

### Result
[https://replit.com/@austinl1905/html-make-something?v=1](https://replit.com/@austinl1905/html-make-something?v=1)  
The repl cover page. Here you can view the website and the code itself.

### Takeaways

It can be helpful to work ahead a little bit, as I was able to add some CSS to my otherwise boring HTML. 

All HTML documents must start with a `<!DOCTYPE>` declaration

Elements can be nested in a `<table>` in order to customize the layout.