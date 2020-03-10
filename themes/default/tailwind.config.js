const plugin = require('tailwindcss/plugin');
const { colors, cursor, shadows, fontSize, spacing } = require('tailwindcss/defaultTheme');
const purgeCss = require('@fullhuman/postcss-purgecss');
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
			"fontSize": {
				...fontSize,
				"4xl": "2.5rem",
			},
			spacing: {
				"0": "0",
				"1": "0.25rem",
				"2": "0.5rem",
				"3": "0.75rem",
				"4": "1rem",
				"5": "1.25rem",
				"6": "1.5rem",
				"7": "1.75rem",
				"8": "2rem",
				"9": "2.25rem",
				"10": "2.5rem",
				"11": "2.75rem",
				"12": "3rem",
				"13": "3.25rem",
				"14": "3.5rem",
				"15": "3.75rem",
				"16": "4rem",
				"20": "5rem",
				"24": "6rem",
				"28": "7rem",
				"32": "8rem",
				"36": "9rem",
				"40": "10rem",
				"48": "12rem",
				"56": "14rem",
				"60": "15rem",
				"64": "16rem",
				"72": "18rem",
				"80": "20rem",
				"96": "24rem",
				"px": "1px",
				"0.5": "0.125rem",
				"1.5": "0.375rem",
				"2.5": "0.625rem",
				"3.5": "0.875rem",
				"1/2": "50%",
				"1/3": "33.333333%",
				"2/3": "66.666667%",
				"1/4": "25%",
				"2/4": "50%",
				"3/4": "75%",
				"1/5": "20%",
				"2/5": "40%",
				"3/5": "60%",
				"4/5": "80%",
				// "1/6": "16.666667%",
				// "2/6": "33.333333%",
				// "3/6": "50%",
				// "4/6": "66.666667%",
				// "5/6": "83.333333%",
				"1/12": "8.333333%",
				"2/12": "16.666667%",
				"3/12": "25%",
				"4/12": "33.333333%",
				"5/12": "41.666667%",
				"6/12": "50%",
				"7/12": "58.333333%",
				"8/12": "66.666667%",
				"9/12": "75%",
				"10/12": "83.333333%",
				"11/12": "91.666667%",
				"4\%": "4%",
				"6\%": "6%",
				"full": "100%"
			},
			container: {
				center: true,
				padding: '1.5rem'
			},
			screens: {
				"sm": "640px",
				// => @media (min-width: 640px) { ... }
				"md": "768px", // 640 + 128
				// => @media (min-width: 768px) { ... }
				"lg": "1024px", // 768 + 256
				// => @media (min-width: 1024px) { ... }
				"xl": "1280px", // 1024 + 256
				// => @media (min-width: 1280px) { ... }
				"2xl": "1536px", // 1280 + 256
				// => @media (min-width: 1536px) { ... }
				// "hd": "1920px",
				// tw-ui:
				//sm: '640px',
				//md: '1024px', // 768 + 256
				//lg: '1280px', // 1024 + 256
				//xl: '1536px', // 1280 + 256
			},
			fill: {
				current: 'currentColor',
				//'blue': theme('colors.blue.500'),
			},
			shadows: {
				...shadows,
				'2xl': '0 13px 27px -5px rgba(50,50,93,.25), 0 8px 16px -8px rgba(0,0,0,.3), 0 -6px 16px -6px rgba(0,0,0,.025)',
			},
			colors: {
				black: colors.black,
				white: colors.white,
				transparent: colors.transparent,
				gray: {
					...colors.gray,
					'100': '#F7FAFC',
					'200': '#F3F5F9',
					'300': '#E2E8F0',
					'400': '#8f9aaf',
					'500': '#718096',
					'600': '#5e6a86',
					'700': '#4F5F84',
					'800': '#2D3748',
					'900': '#1A202C'
				},
				blue: {
					'100': '#eff7fc',
					'200': '#dce3f3',
					'300': '#81cbff',
					//'400': '#0096ff',
					'400': '#2b81ff',
					'500': 'hsl(216, 100%, 50%)',
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
		translate: ['responsive', 'hover', 'focus', 'group-hover'],
		borderColor: ['responsive', 'hover', 'focus', 'active'],
		scale: ['responsive', 'hover', 'focus', 'group-hover'],
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
		require('postcss-import'),
		require('tailwindcss'),
		require('postcss-custom-properties'), // for IE11 support of css custom properties
		require('autoprefixer'), // automatically prefix things with vendor prefixes - again IE11 etc
		require('@tailwindcss/ui'),
		...process.env.NODE_ENV === 'production' ? [purgeCss({
			// Specify the paths to all of the template files in your project
			content: [
				'./pages/home.tpl',
			],
			css: ['assets/css/app.css'],
			defaultExtractor: (content) => { var matches = content.match(/[A-Za-z0-9-_:/]+/g); console.log(matches); return matches || [] },
			// Include any special characters you're using in this regular expression
			// defaultExtractor: content => content.match(/[\w-\/:]+(?<!:)/g) || []
		})] : [],

		// plugin(function({ addBase, config }) {
		// 	const styles = config('theme');
		// 	var json = JSON.stringify(styles, null, '\t');
		// 	var fs = require('fs');
		// 	fs.writeFile('styles.json', json, 'utf8', function() {
		// 		console.log('done')
		// 	});
		// }),
	],
}
