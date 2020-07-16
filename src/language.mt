{ extends('base', title = 'language') }

{ block('main'):
	<h2>Basics</h2>

	<p>Monta templates are just HTML files with code sections.</p>

	<p>A simple code section is surrounded by curly braces:</p>
	{ component('code', code = "{ code }") }

	<p>Monta uses pipe sequences to chain logic:</p>
	{ component('code', code = "{ name | uppercase() }") }

	<p>Alternatively, functions can take their input as a first argument:</p>
	{ component('code', code = "{ uppercase(name) }") }

	<p>All function arguments besides the input are written as named key=value pairs:</p>
	{ component('code', code = "{ description | truncate(length = 40) }") }

	<p>Functions can have a block, content that can be shown depending on the function. A block starts in a code section with a colon and ends with the curly brace that ends the code section:</p>
	{ component('code', code = "{ items | each():
  <p>The content of this block is used by the each() function&lt;/p>
}") }

	<p>Functions can have named blocks beyond the default block. These are denoted with a colon, followed by the block name and another colon:</p>
	{ component('code', code = "{ items | each():
  &lt;p>This is repeated for each item&lt;/p>
:empty:
  &lt;p>This is shown if the items array is empty&lt;/p>
}") }

	<p>If a block is added to a variable, it will turn into an if-statement:</p>
	{ component('code', code = "{ isAdmin:
  &lt;p>User is an admin&lt;/p>
:else:
  &lt;p>Access denied&lt;/p>
}") }

	<p>You can also write out the if-statement (but the compiler will automatically insert the if function):</p>
	{ component('code', code = "{ if(isAdmin): ... }") }

	<p>You can also use comparisons:</p>
	{ component('code', code = "{ amount > 1: ... }
{ if(max <= 100): ... }
{ colour === 'blue': ... }") }

	<h2>Inheritance &amp; Components</h2>

	<p>You can extend a layout with the extends function, at the top of a template:</p>
	{ component('code', code = "&lt;!-- views/layouts/base.mt -->
&lt;html>
&lt;head>
  &lt;title>{ title }&lt;/title>
&lt;/head>
&lt;/html>

&lt;!-- views/page.mt -->
{ extends('base', title = 'My page') }") }

	<p>Layout templates are resolved from the layouts/ directory.</p>
	<p>A layout can define one or more blocks, that can be filled by a child template:</p>
	{ component('code', code = "&lt;!-- views/layouts/base.mt -->
&lt;html>
&lt;body>
  { define('body') }
&lt;/body>
&lt;/html>

&lt;!-- views/page.mt -->
{ extends('base') }

{ block('body'):
  &lt;p>This will be put inside the body tag&lt;/p>
}") }

	<p>A component is included in-place:</p>
	{ component('code', code = "&lt;!-- views/components/hello.mt -->
&lt;p>Hello, { name }&lt;/p>

&lt!-- views/page.mt -->
{ component('hello', name = 'World') }") }

}
