<template>
	<div>
		HERE IS THE HELLO COMPONENT
		<div ref="selector"></div>
		<div ref="toolbar" class="fixed bottom-0 right-0 top-0 w-64 overflow-y-auto bg-gray-100">
			<div>Font</div>
			<div class="" @click="apply('font-serif')">font-serif</div>
			<div class="">font-sans</div>
			<div class="">font-code</div>
		</div>
	</div>
</template>

<script>
	const styles = require('../styles.json');
	export default {
		name: 'Stylizer',
		data() {
			return {
				styles: styles,
				selected: ''
			}
		},
		mounted() {
			setTimeout(() => {
				document.body.addEventListener('mousemove', e => {
					this.target = e.target;

					var rect = e.target.getBoundingClientRect();
					console.log(rect);
					var top = rect.top - window.innerHeight + window.scrollY;
					console.log(rect.top, window.innerHeight, window.scrollY);
					$(this.$refs.selector).css({pointerEvents: 'none',left:rect.left, position:'fixed', right:rect.right, top:rect.top, width:rect.width+'px', height:rect.height+'px', border:'1px solid #0000ff', zIndex:99999})

					// $('#stage_overlay')[0]._target = e.target
					// console.log($('#stage_overlay')[0]);
					// window.overlay = $('#stage_overlay')[0];
				})

				$(document).click(function(e) {
					e.preventDefault();
					this.selected = e.target;
					// if (file)
					// 	alert(file.getAttribute('data-file'));
					// find file
				});

			}, 1000);
		},
		methods: {
			apply(className) {
				alert('oi');
				if (this.selected)
					this.selected.classList.add(className);
			}
		}
	}

</script>

<style>

</style>