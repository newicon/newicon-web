const mix = require('laravel-mix');
const isProduction = process.env.NODE_ENV === 'production';

const purgeCss = require('@fullhuman/postcss-purgecss')({
	// Specify the paths to all of the template files in your project
	content: [
		'./**/*.html',
		'./**/*.vue',
		'./**/*.tpl',
		// etc.
	],
	// Include any special characters you're using in this regular expression
	defaultExtractor: content => content.match(/[\w-/.:]+(?<!:)/g) || []
});

const min = isProduction ? '.min' : '';
mix.postCss('css/app.css', `assets/css/app${min}.css`, [
	require('tailwindcss')('./tailwind.config.js'),
	require('autoprefixer'),
	require('postcss-custom-properties'), // for IE11 support of css custom properties
	...isProduction ? [purgeCss] : []
])
.options({
	processCssUrls: false,
})
.sourceMaps()