module.exports = {
	processCssUrls: false,
	plugins: [
		require('tailwindcss'),
		require('autoprefixer'),
		require('postcss-custom-properties'), // for IE11 support of css custom properties
		process.env.NODE_ENV === 'production' && require('@fullhuman/postcss-purgecss')({
			content: [
				'./**/*.html',
				'./**/*.vue',
				'./**/*.tpl',
			],
			defaultExtractor: content => content.match(/[\w-/.:%]+(?<!:)/g) || []
		})
	],
};