{ extends('base', title = 'functions') }

{ block('main'):
	<h2>Template functions</h2>
	<h4>extends(name, ...attrs)</h4>
	<p>Extends a base layout</p>

	<h4>component(name, ...attrs)</h4>
	<p>Includes a component</p>

	<h4>define(name)</h4>
	<p>Defines a block in a parent template</p>
	<code>\{ define('block-name'):
&lt;p>This fallback content is displayed if the block is not filled by a child template&lt;/p>
\}</code>

	<h4>block(name)</h4>
	<p>Fills a defined block</p>
	<code>\{ block('block-name'):
&lt;p>This content will be displayed in place of the define('block-name') in a parent template&lt;/p>
\}</code>

	<h2>Array function</h2>

	<h4>each(array)</h4>
	<p>Iterates over an array</p>
	<code>\{ items | each():
&lt;p>\{ $item \}&lt;/p>
\:empty:
&lt;p>This will be displayed if the items array is empty&lt;/p>
\}</code>

	<h2>String functions</h2>

	<h4>capitalise(string)</h4>
	<p>Capitalises the first letter of each word in a string</p>
	<code>\{ name | capitalise() \}</code>

	<h4>lower(string)</h4>
	<p>Changes the entire string to lower case</p>
	<code>\{ name | lower() \}</code>

	<h4>upper(string)</h4>
	<p>Changes the entire string to upper case</p>
	<code>\{ name | upper() \}</code>

	<h4>truncate(string, length = number)</h4>
	<p>Truncates a string at the given maximum length and adds three dots, if the string is longer</p>
	<code>\{ text | truncate(length = 40) \}</code>
}