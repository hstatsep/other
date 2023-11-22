# Process Writeup

## Name: Myat Thet H
## Course: SEP11 (Javascript)
## Period: 3
## Concept: JS basics

### intro

The following writing will contain the process of me trying to build, basically a madlib. A madlib is a template where the information is collected and applied to the ready-made sentence/phrase/paragraph. I will be documenting my way of learning and how I practiced and used my basic Javascript onto the mini-task. The task I will be referencing here is my progress of learning throughout making the Banana Fana song madlib.

I will be using my name "myat" to test the code.

### expectation

It is expected that the poem will be constructed with no problems as long as the name collected contains four-letters; since the program is constructed to work that way. Four lines in the stanza, the words equally spaced out and make words clearly.

### process

`var name = prompt("What is your name?");`
was a code already provided to me.

I started off with trying to out the whole poem with blank areas for the letters that are going to be replaced with. 
`____ bo b___ banana fana fo f___ me mi mo m___ ____!`

I then proceeded to get into the part where I had to arrange so that the last letters of the four-lettered name fit in the blanks. I used `document.write()` to write each line. then, I try to figure out how to make the fillings work.

At first I wrote these lines of code :

```
document.write(name+ name+ " bo b");
document.write("banana fana fo f");
document.write("me mi mo m");
document.write(name + "!");
```

which ended up coming out as :
myatmyat bo bbanana fana fo fme mi mo mname!

So I needed to find a way to create a variable that will fill the blanks. I will use the 
* var 
* name[#]
to create this.

I assign a variable such as the following :
`var end= "name[1] + name[2] + name[3]";`

### challenge 1

This did not work as I intended it to, so I made several attemps of altering the line of code, I realized that this assignment does not require quotations. As we are taking parts of an existing variable and not inserting "name[1] + name[2] + name[3]". as I removed the quotes :
`var end= "name[1]+name[2]+name[3];`
It came out as the words that needed to be filled, in my case "yat".

I put them together with spaces between:
```
document.write(name+ " "+ name+ " bo b" +end);
document.write("banana fana fo f" +end);
document.write("me mi mo m" +end);
document.write(name + "!");
```
comes out like this: 
myat myat bo byatbanana fana fo fyatme mi mo myatmyat!

### challenge 2
Now I have to figure out how to seperate the lines, I tried multiple ways like adding "\n" "\t" or pressing enter and tabs and spaces which did not work. But with the help of others I learned that I can embed an html code with quotes. I finalized my codes like this :
```
document.write(name+ " "+ name+ " bo b" +end);
document.write("<br>");
document.write("banana fana fo f" +end);
document.write("<br>");
document.write("me mi mo m" +end);
document.write("<br>");
document.write(name + "!");
```

Now when my name is collected from the site, it will automatically fill the blanks!

[outcome](https://jsbin.com/kabuwurole/1/edit?js,console,output)

## Summary

1. If you put quotes around a variable, the literal variable name will get used instead of its value.
2. Don't forget spaces! (but if you do, you can always add them later after you preview and realize you forgot them)
3. It's better to use a variable so that the value can change, rather than hard-coding a specific value that might not work for all inputs.
