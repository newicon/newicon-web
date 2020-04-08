const purgecss = require('@fullhuman/postcss-purgecss')({

	// Specify the paths to all of the template files in your project
	content: [
		'./**/*.html',
		'./**/*.vue',
		'./**/*.tpl',
		// etc.
	],

	// Include any special characters you're using in this regular expression
	defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
});

module.exports = {
	plugins: [
		require('tailwindcss'),
		require('autoprefixer'),
		require('postcss-custom-properties'), // for IE11 support of css custom properties
		...process.env.NODE_ENV === 'production' ? [purgecss] : [],
	],
}