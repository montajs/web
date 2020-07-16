{ extends('base', title = 'functions') }

{ block('main'):
	<h2>Template functions</h2>
	<h4>extends(name, ...attrs)</h4>
	<p>Extends a base layout</p>

	<h4>component(name, ...attrs)</h4>
	<p>Includes a component</p>

	<h4>define(name)</h4>
	<p>Defines a block in a parent template</p>
	{ component('code', code = "{ define('block-name'):
&lt;p>This fallback content is displayed if the block is not filled by a child template&lt;/p>
}") }

	<h4>block(name)</h4>
	<p>Fills a defined block</p>
	{ component('code', code = "{ block('block-name'):
&lt;p>This content will be displayed in place of the define('block-name') in a parent template&lt;/p>
}") }

	<h2>Array function</h2>

	<h4>each(array)</h4>
	<p>Iterates over an array</p>
	{ component('code', code = "{ items | each():
  &lt;p>{ $item }&lt;/p>
:empty:
  &lt;p>This will be displayed if the items array is empty&lt;/p>
}") }

	<h2>String functions</h2>

	<h4>capitalise(string)</h4>
	<p>Capitalises the first letter of each word in a string</p>
	{ component('code', code = "{ name | capitalise() }") }

	<h4>lower(string)</h4>
	<p>Changes the entire string to lower case</p>
	{ component('code', code = "{ name | lower() }") }

	<h4>upper(string)</h4>
	<p>Changes the entire string to upper case</p>
	{ component('code', code = "{ name | upper() }") }

	<h4>truncate(string, length = number)</h4>
	<p>Truncates a string at the given maximum length and adds three dots, if the string is longer</p>
	{ component('code', code = "{ name | truncate(length = 40) }") }
}
