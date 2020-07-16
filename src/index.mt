{ extends('base', title = '') }

{ block('main'):
	<h2>Installation</h2>

	<p>Install Monta into your project</p>
	{ component('code', code = "$ yarn add @montajs/compiler") }

	<p>Create a template</p>
	{ component('code', code = "&lt;!-- views/page.mt -->
&lt;p>Hello, { name }&lt;/p>") }

	<p>Render the template</p>
	{ component('code', code = "// index.js
import { render } from '@montajs/compiler'

let result = await render('page', {
  name: 'World',
});
") }

	<p>Head over to the <a href="/language">language</a> page to learn about the Monta syntax.</p>
}
