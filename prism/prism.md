# Prism Code Snippets

Adding code snippets to your HTML file with syntax highlighting

[Video](https://www.youtube.com/watch?v=jze6IS-Vzh4)

## Import Prism.js

Inside the `<head>` (anywhere):

```html
<link href="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/themes/prism.css" rel="stylesheet" /> 
```

Inside the `<body>` (at the end):

```html
<script src="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/components/prism-core.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/plugins/autoloader/prism-autoloader.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/plugins/normalize-whitespace/prism-normalize-whitespace.min.js"></script>
```


## How to format your code snippets

**Important**: If you are trying to display HTML, you cannot use the `<` and `>` symbols. You must:
* replace `<` with `&lt;` (**l**ess **t**han)
* replace `>` with `&gt;` (**g**reater **t**han)
* Example: `<p>Hello World</p>` becomes `&lt;p&gt;Hello World&lt;/p&gt;`

### Single/Inline

Wrap your code with `<code class="language-X">` _insert code here_ `</code>`

Note that `X` gets replaced with the _actual_ language, such as `language-html`.

### Multiple Lines

Use the same ideas as above. But you can wrap the `<code>` element with the `<pre>` element to preserve formatting for multi-line code snippets. For example:

```html
<pre><code class="language-X">
  multiple
    lines 
  go
    here
</code></pre>
```

Again, `X` gets replaced with the _actual_ language, such as `language-html`.

## Example

* [Preview](https://hstatsep.github.io/other/prism)
* [Code](index.html)
