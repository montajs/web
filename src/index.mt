{ extends('base', title = '') }

{ block('main'):
	<h2>Installation</h2>

	<p>Install Monta into your project</p>
	<code>$ yarn add @montajs/compiler</code>

	<p>Create a file in your project</p>
	<code>$ touch views/page.mt</code>

	<p>Write a template</p>
	<code>&lt;p>Hello, { name }&lt;/p></code>

	<p>Create a code file</p>
	<code>$ touch index.js</code>

	<p>Render the template</p>
	<code>import { render } from '@montajs/compiler';

let result = await render('page', {
name: 'World',
});</code>

	<p>Head over to the <a href="/language">language</a> page to learn about the Monta syntax.</p>
}