/**
 * Grunt configuration file to build less, and the css and javascript assets.
 *
 * Note: This will eventually reduce to only builing the less files (and maybe
 * then alternatives will be used)
 *
 * You shouldn't need to this except the javascript include files. If you are
 * changing other parts, check you are approaching the problem properly
 *
 * CSS - specify which component css files you want to include in your
 * themes/default/assetsDev/stylesheets/app.css as includes.
 *
 * JS - at the end of this file in the uglify section, add the various
 * component.js files you want to include to go into the js footer. Include it in
 * the section marked ... *
 * // ==============================
 * // Include theme custom js here
 * // ==============================
 */
module.exports = function(grunt) {

	// Project configuration.
	var enable_source_maps = true;
	var theme_path = './';
	var base_path = './base/';
	var base_path_assets = base_path + 'components/foundation/'
	var base_asset_dev_path = base_path + 'assetsDev/';
	var base_components_path = base_path + 'components/';
	var default_components_path = 'default/components/';
	var default_asset_dev_path = 'default/assetsDev/';
	var compiled_assets_path = 'default/assets/';
	var bootstrap_version = '3.3.4';

	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		// Files to watch for changes
		watch: {
			less: {
				files: [
					theme_path + '*/components/**/*.less',
					theme_path + '*/assetsDev/stylesheets/*.less'
				],
				tasks: [
					'less:components'
				]
			},
			fontify: {
				files: [
					base_path + '**/fonts/*.{eot,svg,ttf,woff,woff2}'
				],
				tasks: [
					"copy:fonts"
				]
			},
			default_css: {
				files: [
					theme_path + 'default/assetsDev/stylesheets/*.css'
				],
				tasks: [
					"copy:css"
				]
			},

			// JS Assets
			js: {
				files: [
					theme_path + '*/components/**/*.js',
					default_asset_dev_path + 'js/*.js',
					default_asset_dev_path + 'js/*/*.js'
				],
				tasks: [
					'uglify:build_head',
					'uglify:build_foot'
				]
			},
			livereload: {
				files: ['*.html', '*.php', 'js/**/*.{js,json}', 'css/*.css', 'img/**/*.{png,jpg,jpeg,gif,webp,svg}'],
				options: {
					livereload: true
				}
			}
		},

		// moving things around
		copy: {
			css: {
				files: [{
					expand: true,
					flatten: true,
					src: theme_path + 'default/assetsDev/stylesheets/*.css',
					dest: 'default/assets/css'
				}]
			},
			fonts: {
				files: [{
					expand: true,
					flatten: true,
					src: base_path + '**/fonts/*.{eot,svg,ttf,woff,woff2}',
					dest: 'default/assets/fonts'
				}]
			}
		},

		// CSS Assets Tasks
		less: {
			components: {
				options: {
					imports: {
						reference: [
							'base/components/foundation/stylesheets/bootstrap/less/variables.less',
							'base/components/foundation/fonts/fontAwesomeVariables.less',
							'base/components/foundation/stylesheets/variables.less',
							'default/assetsDev/stylesheets/variables.less',
							'base/components/foundation/stylesheets/mixins.less',
						]
					}
				},
				files: [{
					expand: true,
					flatten: true,
					src: ['*/components/*/*.less', '*/components/*/*/*.less', 'base/components/foundation/components/*/*.less'],
					dest: 'default/assets/css/components/',
					ext: '.css'
				}, {
					expand: true,
					flatten: true,
					src: 'default/assetsDev/stylesheets/*.less',
					dest: 'default/assets/css/',
					ext: '.css'
				}]
			}
		},

		// JS Assets Tasks
		uglify: {
			// JS Assets Header
			build_head: {
				options: {
					sourceMap: enable_source_maps,
					sourceMapURL: compiled_assets_path + 'js/app.head.min.js.map',
					sourceMapFilename: compiled_assets_path + 'js/app.head.min.js.map',
					sourceMapRootpath: '/'
				},
				src: [
					// Include js libs
					// Modernizr must be loaded in the head before the DOM is loaded for the HTML5 shiv to work correctly
					base_path_assets + 'js/libs/modernizr.js',
				],
				dest: compiled_assets_path + 'js/app.head.min.js',
			},
			// JS Assets Footer
			build_foot: {
				options: {
					sourceMap: enable_source_maps,
					sourceMapURL: compiled_assets_path + 'js/app.foot.min.js.map',
					sourceMapFilename: compiled_assets_path + 'js/app.foot.min.js.map',
					sourceMapRootpath: '/'
				},
				src: [
					// Include js libs
					base_path_assets + 'js/libs/jquery/jquery.js', // jquery
					base_path_assets + 'js/polyfills/media-match-david-knight.js', // IE9 Match Media Support
					base_path_assets + 'js/libs/enquire-v2.1.2.js', // JS Media Queries
					base_path_assets + 'js/libs/masonry.min.js', // JS masonry plugin
					base_path_assets + 'js/libs/imagesloaded.min.js', // JS imagesLoaded plugin

					// Include required Bootstrap js components
					//asset_dev_path + 'js/bootstrap-' + bootstrap_version + '/collapse.js',
					base_path_assets + 'js/libs/bootstrap-' + bootstrap_version + '/dropdown.js',
					base_path_assets + 'js/libs/bootstrap-' + bootstrap_version + '/transition.js',
					base_path_assets + 'js/libs/bootstrap-' + bootstrap_version + '/modal.js',
					// Include Newicon responsive utilites js
					base_path_assets + 'js/newicon-responsive-utilites.js', // Newicon responsive JS utilites
					base_path_assets + 'js/newicon-bp-management.js', // Newicon JS breakpoint management

					// ==============================
					// Include theme custom js here
					// ==============================
					// e.g.
					// base_path_assets + 'js/navigation.js', // for foundation assets
					// base_components_path + '[componentName]/[componentName].js',  // for a component [componentName]
					//
					// and the default theme.js file
					default_asset_dev_path + '/js/theme.js',
				],
				dest: compiled_assets_path + 'js/app.foot.min.js'
			},
		}
	});

	// Node Plugins
	grunt.loadNpmTasks('grunt-contrib-copy');
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-assemble-less');
	grunt.loadNpmTasks('grunt-notify');
	grunt.loadNpmTasks('grunt-contrib-clean');

	grunt.registerTask('build', ['less', 'uglify', 'copy']);

	grunt.registerTask('default', ['less', 'uglify', 'copy', 'watch']);

};