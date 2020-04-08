const plugin = require('tailwindcss/plugin');
const { colors, cursor, shadows, fontSize, spacing } = require('tailwindcss/defaultTheme');
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
				"25": "6.25rem",
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
			boxShadow: {
				...shadows,
				'3xl': '0 50px 100px -20px rgba(50, 50, 93, 0.25), 0 30px 60px -30px rgba(0, 0, 0, 0.3), 0 -18px 60px -10px rgba(0, 0, 0, 0.025)'
			},
			colors: {
				black: colors.black,
				white: colors.white,
				transparent: colors.transparent,
				lightGray: {
					'50': '#F7F8F9',
					'100': '#E9ECEF',
					'200': '#D4D9DF',
					'300': '#B8BFCA',
					'400': '#949FB0',
					'500': '#718096',
					'600': '#606C7F',
					'700': '#4E5968',
					'800': '#3E4652',
					'900': '#2D333C',
					'950': '#1A1D22',
				},
				gray: {
					'50': 'hsl(240, 13%, 97%)', // #f6f6f8
					'100': 'hsl(218, 17%, 91%)', // #E4E7EC,
					'200': 'hsl(221, 18%, 82%)', // #CACFDA,
					'300': 'hsl(222, 17%, 71%)',
					'400': 'hsl(222, 17%, 56%)',
					'500': 'hsl(222, 25%, 41%)',
					'600': 'hsl(223, 25%, 35%)',
					'700': 'hsl(222, 25%, 29%)',
					'800': 'hsl(221, 25%, 23%)',
					'900': 'hsl(220, 25%, 16%)',
					'950': 'hsl(225, 25%, 9%)',
				},
				blue: {
					'50': '#F2F7FF',
					'100': '#D9E8FF',
					'200': '#B3D1FF',
					'300': '#80B2FF',
					'400': '#408CFF',
					'500': 'hsl(216, 100%, 50%)',
					'600': '#0056D9',
					'700': '#0047B2',
					'800': '#00388C',
					'900': '#002866',
					'950': '#00173B',
				},
				purple: {
					'50': '#F9F5FC',
					'100': '#EEE3F6',
					'200': '#DEC8EE',
					'300': '#C8A3E2',
					'400': '#AC75D4',
					'500': '#9147C6',
					'600': '#7B3CA8',
					'700': '#65318A',
					'800': '#4F266C',
					'900': '#3A1C4F',
					'950': '#21102D',
				},
				// pink: {
				// 	//'50': '#FFF5F7',
				// 	'100': '#FFE2EA',
				// 	'200': '#FFC6D5',
				// 	'300': '#FFA1B9',
				// 	'400': '#FF7296',
				// 	'500': '#FF4374',
				// 	'600': '#D93962',
				// 	'700': '#B22E50',
				// 	'800': '#8C243F',
				// 	'900': '#661A2E',
				// 	//'950': '#3B0F1A',
				// 	//...colors.pink,
				// 	//'500': '#FF4374'
				// },
				red: {
					'50': '#FEF4F4',
					'100': '#FDDFE1',
					'200': '#FCBFC4',
					'300': '#FB949C',
					'400': '#F95E6B',
					'500': '#F7293A',
					'600': '#D22231',
					'700': '#AC1C28',
					'800': '#87161F',
					'900': '#621017',
				// 	//'950': '#39090D',
				},
				// orange: {
				// 	'50': '#39090D',
				// 	'100': '#FFEDDA',
				// 	'200': '#FFDCB5',
				// 	'300': '#FFC583',
				// 	'400': '#FFA845',
				// 	'500': '#FF8C08',
				// 	'600': '#D97706',
				// 	'700': '#B26105',
				// 	'800': '#8C4C04',
				// 	'900': '#663803',
				// 	//'950': '#3B2001',
				// },
				// // yellow: {
				// // '50': '#FFFCF3',
				// // '100': '#FFF6DE',
				// // '200': '#FFEEBE',
				// // '300': '#FFE392',
				// // '400': '#FFD55B',
				// // '500': '#FFC825',
				// // '600': '#D9AA1F',
				// // '700': '#B28B19',
				// // '800': '#8C6D14',
				// // '900': '#66500E',
				// // '950': '#3B2E08',
				// // },
				green: {
					'50': '#F3FBF8',
					'100': '#DBF5EB',
					'200': '#B8ECD7',
					'300': '#89E0BD',
					'400': '#4ED09C',
					'500': '#14C17B',
					'600': '#11A468',
					'700': '#0D8655',
					'800': '#0A6943',
					'900': '#084D31',
				// 	//'950': '#042C1C',
				},
				//teal: {
				// '50': '#F2FBFC',
				// '100': '#D9F5F7',
				// '200': '#B3ECEF',
				// '300': '#80DFE5',
				// '400': '#40CFD8',
				// '500': '#00C0CC',
				// '600': '#00A3AD',
				// '700': '#00868E',
				// '800': '#006970',
				// '900': '#004C51',
				// '950': '#002C2F',
				// },
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
		fontWeight: ['responsive', 'hover', 'focus', 'group-hover'],
		opacity: ['responsive', 'hover', 'focus', 'group-hover'],
		visibility: ['responsive', 'hover', 'focus', 'group-hover'],
		pointerEvents: ['responsive', 'group-hover'],
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
};
