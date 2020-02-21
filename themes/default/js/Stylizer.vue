<template>
	<div>
		HERE IS THE HELLO COMPONENT
		<div ref="selector"></div>

	</div>
</template>

<script>
	const styles = require('../styles.json');
	export default {
		name: 'Stylizer',
		data() {
			return {styles: styles}
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
					let file = e.target.closest("[data-file]");
					console.log(file, e);
					alert(file.getAttribute('data-file'));
					// find file

				});

			}, 1000);
		}
	}

</script>

<style>

</style>