{ attr('title', type = 'string') }

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>{ title:
		{ title | capitalise() } - Monta Template Engine
	:else:
		Monta Template Engine
	}</title>

	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@600&family=Inconsolata&family=Open+Sans:wght@400;600&display=swap">
</head>
<body>
<header>
	<div class="container">
		<h1>Monta</h1>
		<p>Template engine for Node</p>
	</div>
</header>
<nav>
	<div class="container">
		<a href="/" { title === '': class="active" }>Overview</a>
		<a href="/language" { title === 'language': class="active" }>Language</a>
		<a href="/functions" { title === 'functions': class="active" }>Functions</a>
	</div>
</nav>
<main class="container">
	{ define('main') }
</main>

<footer>
	<div class="container">
		<p><a href="https://github.com/montajs" target="_blank" rel="noreferrer noopener">Monta on Github</a></p>
		<p>Made by <a href="https://woubuc.be" target="_blank" rel="noreferrer noopener">@woubuc</a></p>
	</div>
</footer>
</body>
</html>