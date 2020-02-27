const plugin = require('tailwindcss/plugin');
const { colors, cursor } = require('tailwindcss/defaultTheme');
const purgeCss = require('@fullhuman/postcss-purgecss')({
	// Specify the paths to all of the template files in your project
	content: [
		'./pages/**/*.tpl',
		'./widgets/**/*.tpl',
	],
	// Include any special characters you're using in this regular expression
	defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
})
module.exports = {
	prefix: '',
	theme: {
		fontFamily: {
			'sans': ['Nunito Sans', 'system-ui', '-apple-system', 'BlinkMacSystemFont', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'],
			'serif': ['Volkhov', 'Georgia', 'Cambria', 'Times New Roman', 'Times', 'serif'],
			'code': ['Menlo', 'Monaco', 'Consolas', 'Liberation Mono', 'Courier New', 'monospace'],
		},
		colors: {
			primary: 'var(--primary)',
		},
		extend: {
			screens: {
					"sm": "640px",
					"md": "768px",
					"lg": "1024px",
					"xl": "1280px",
					"2xl": "1440px",
					"hd": "1920px",
			},
			fill: {
				current: 'currentColor',
				//'blue': theme('colors.blue.500'),
			},
			colors: {
				black: colors.black,
				white: colors.white,
				transparent: colors.transparent,
				gray: {
					'100': '#F7FAFC',
					'200': '#F3F5F9',
					'300': '#E2E8F0',
					'400': '#CBD5E0',
					'500': '#A0AEC0',
					'600': '#718096',
					'700': '#4F5F84',
					'800': '#2D3748',
					'900': '#1A202C'
				},
				blue: {
					'100': '#eff7fc',
					'200': '#dce3f3',
					'300': '#81cbff',
					'400': '#0096ff',
					'500': '#0067FF',
					'600': '#1254cc',
					'700': '#1c4ea7',
					'800': '#03296e',
					'900': '#00153d'
				},
				purple: {
					...colors.purple,
					'500': '#9147C6'
				},
				pink: {
					...colors.pink,
					'500': '#FF4374'
				},
				red: colors.red,
				orange: {
					...colors.orange,
					'500': '#FF8C08'
				},
				//yellow: colors.yellow,
				green: {
					...colors.green,
					'500': '#14C17B'
				},
				//teal: colors.teal,
			},
			cursor: {
				...cursor,
				grab: 'grab'
			}
		},
	},
	variants: {
		fill:['group-hover', 'hover'],
		display: ['responsive', 'group-hover'],
	},
	plugins: [
		plugin(function({ addBase, config }) {
			addBase({
				'h1': { fontSize: config('theme.fontSize.4xl') },
				'h2': { fontSize: config('theme.fontSize.3xl') },
				'h3': { fontSize: config('theme.fontSize.2xl') },
				'h4': { fontSize: config('theme.fontSize.xl') },
			})
		}),
		require('autoprefixer'),
		...process.env.NODE_ENV === 'production' ? [purgeCss] : [],
		require('@tailwindcss/ui'),
		plugin(function({ addBase, config }) {
			const styles = config('theme');
			var json = JSON.stringify(styles, null, '\t');
			var fs = require('fs');
			fs.writeFile('styles.json', json, 'utf8', function() {
				console.log('done')
			});
		}),
	],
}
