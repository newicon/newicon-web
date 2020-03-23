let mix = require('laravel-mix');

let tailwindcss = require('tailwindcss');

mix.postCss('css/app.css', 'assets/css/app.css').options({
	processCssUrls: false,
	postCss: [ tailwindcss('./tailwind.config.js') ],
});