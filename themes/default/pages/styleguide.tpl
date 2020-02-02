{extends "layouts/layout.tpl"}
{block "header"}
    {navigation}
{/block}
{block "content"}
	<style>
		.caveat { font-family: caveat   color: #0067FF; }
		.trashhand { font-family: TrashHand, Arial ; color: #0067FF; }
		.trashhand { font-family: TrashHand, Arial ; color: #0067FF; font-size:24px; line-height: 32px; }
	</style>
	<div class="main">
{*        {hero_text*}
{*			title="Styleguide"*}
{*			bgTitle="Styleguide"*}
{*			subtitle="Newicon website styles"*}
{*			body="A summary of the main building blocks of the newicon site"*}
{*        }*}

{*		{static_block key="homepage_callout" wys=true}*}
{*			<p>We use design and software engineering to transform your future. Newicon. New tomorrow.</p>*}
{*          {/static_block}*}

{literal}
		<style>
			.card {margin-bottom: 30px;box-shadow: 0 15px 35px rgba(50,50,93,.1), 0 5px 15px rgba(0,0,0,.07);border: 0;}
			.cardBackground[data-animation=zooming] {transition: all .3s cubic-bezier(.2, 1, .22, 1);-webkit-transition: all .3s cubic-bezier(.2, 1, .22, 1);}
			.cardBackground {overflow: hidden;height: 530px;background-position: 50%;background-size: cover;text-align: center;}
			.card { position: relative; display: flex;flex-direction: column;min-width: 0;word-wrap: break-word;background-color: #fff;background-clip: border-box;border: .0625rem solid rgba(0,0,0,.05);border-radius: .5rem;}
			.cardBackground .card_background { background-position: 50%; background-size: cover;text-align: center;margin-bottom: 30px;width: 100%;height: 100%;position: absolute;border-radius: .5rem;backface-visibility: hidden;-webkit-backface-visibility: hidden;transition: all 1s cubic-bezier(.2,1,.22,1);-webkit-transition: all 1s cubic-bezier(.2,1,.22,1);}
			.cardBackground[data-animation=zooming]:hover { transform: scale(1.07);-webkit-transform: scale(1.07);z-index: 2;}
			.cardBackground[data-animation=true]:hover .card_background,
			.cardBackground[data-animation=zooming]:hover .card_background {transform: scale(1.1 );-webkit-transform: scale(1.1);}
			.cardBackground:after {position: absolute;top: 0;bottom: 0;left: 0;height: 100%;z-index: 1;width: 100%;display: block;content: "";background: rgba(0,0,0,.6);}
			.cardBackground[data-animation=zooming] .card_body {padding-bottom: 30px;margin: initial;height: 100%;}
			.cardBackground .card_body {position: relative;z-index: 2;min-height: 330px;padding-top: 60px;padding-bottom: 60px;}
			.card_body {flex: 1 1 auto;padding: 1.5rem;}
			.cardBackground .card_body .content_foot {position: absolute;bottom: 10px;text-align: left;color:white;}
			.card .card_title { margin-bottom: .5rem; }
		</style>
{/literal}

{*		<button type="button" class="btn btn-primary">Primary</button>*}
{*		<button type="button" class="btn btn-secondary">Secondary</button>*}
{*		<button type="button" class="btn btn-success">Success</button>*}
{*		<button type="button" class="btn btn-danger">Danger</button>*}
{*		<button type="button" class="btn btn-warning">Warning</button>*}
{*		<button type="button" class="btn btn-info">Info</button>*}
{*		<button type="button" class="btn btn-light">Light</button>*}
{*		<button type="button" class="btn btn-dark">Dark</button>*}
{*		<button type="button" class="btn btn-link">Link</button>*}

{*		{cmp class="theme\dev\widgets\NeonJsFiddle" activeTab="result"}*}
{*		{/cmp}*}
{*		{oi}*}
{*        {htmlExample}*}
{*			<button type="button" class="btn btn-primary">Primary</button>*}
{*			<button type="button" class="btn btn-secondary">Secondary</button>*}
{*			<button type="button" class="btn btn-success">Success</button>*}
{*			<button type="button" class="btn btn-danger">Danger</button>*}
{*			<button type="button" class="btn btn-warning">Warning</button>*}
{*			<button type="button" class="btn btn-info">Info</button>*}
{*			<button type="button" class="btn btn-light">Light</button>*}
{*			<button type="button" class="btn btn-dark">Dark</button>*}
{*			<button type="button" class="btn btn-link">Link</button>*}
{*        {/htmlExample}*}

{*		<div class="row mbm">*}
{*			<div class="col">*}
{*				<button class="btn btn-primary _shadow">btn btn-primary _shadow mrs</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-primary">btn btn-primary</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-default">btn btn-default</button>*}
{*			</div>*}
{*			<div class="col">*}

{*				<button class="btn btn-default _shadow" >btn btn-default _shadow</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-secondary _shadow" >btn btn-secondary _shadow</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-secondary btn-outline" >Here is a button outline</button>*}
{*			</div>*}
{*			<div class="col">*}
{*				<button class="btn btn-primary btn-outline" >Here is a button outline</button>*}
{*			</div>*}
{*		</div>*}

{*		<div class="row">*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>*}
{*					<a href="javascript:;" class="card_body">*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1568576157197-72cd17d47eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1999&q=80"></div>*}
{*					<a href="javascript:;" class="card_body">*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>*}
{*					<a href="javascript:;" class="card_body">*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*			<div class="col ">*}
{*				<div class="card cardBackground" data-animation="zooming">*}
{*					<div class="card_background" style="background-image: url('https://images.unsplash.com/photo-1463438690606-f6778b8c1d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80"></div>*}
{*					<a class="card_body" href="javascript:;" >*}
{*						<div class="content_foot">*}
{*							<h6 class="text-white opacity-8">Spectrum</h6>*}
{*							<h5 class="card_title">Data Virtualization</h5>*}
{*						</div>*}
{*					</a>*}
{*				</div>*}
{*			</div>*}
{*		</div>*}

{*		<section class="section section-secondary">*}
{*			<div class="shell">*}
{*				<h1>h1. Typography</h1>*}
{*				<h2>h1. Typography</h2>*}
{*				<h3>h1. Typography</h3>*}
{*				<h4>h1. Typography</h4>*}
{*				<h5>h1. Typography</h5>*}
{*				<h6>h1. Typography</h6>*}
{*			</div>*}
{*		</section>*}
{*		<h1 style="font-size:50px; letter-spacing: 1px;color: black;"><span style="font-weight:700">new</span><span style="font-weight:300;padding-left:3px;" class="text-success" data-toggle="typed" data-options='{ "strings": ["thinking", "ideas", "tomorrow", "icon^5000"] }'></span></h1>*}

{*        {cmpy} THINGS {/cmpy}*}

{*	{c cmp="NeonColumns" }*}
{*		{c cmp="NeonColumn"}*}
{*			{c cmp='p'}hello{/c}*}
{*		{/c}*}
{*	{/c}*}

{*		{NeonColumns}*}
{*			{NeonCol}*}
{*	            {NeonColumns}*}
{*		            {NeonCol}*}
{*						<p>Hello!! col 1</p>*}
{*		            {/NeonCol}*}
{*		            {NeonCol}*}
{*						<p>Hello!! col 2</p>*}
{*		            {/NeonCol}*}
{*	            {/NeonColumns}*}
{*				<p>Hello!! col 1</p>*}
{*			{/NeonCol}*}
{*	        {NeonCol}*}
{*				<p>Hello!! col 2</p>*}
{*	        {/NeonCol}*}
{*		{/NeonColumns}*}
{*{NeonColumns}HELLO{NeonColumns}*}

        {editor id="dropzone1"}{/editor}
{*        {editor id="dropzone2"}*}
{*	        <!-- cmp:NeonColumns -->*}
{*	        <div class="row" style="padding:10px;">*}
{*		        <!-- cmp:NeonColumn -->*}
{*		        <div class="col" style="padding:10px;">*}
{*			        <!-- cmp:NeonThing -->*}
{*			        <div>HERE IS A THING</div>*}
{*			        <!-- /cmp:NeonThing -->*}
{*		        </div>*}
{*		        <!-- /cmp:NeonColumn -->*}
{*		        <!-- cmp:NeonColumn -->*}
{*		        <div class="col" style="padding:10px;">*}
{*			        <!-- cmp:NeonThing -->*}
{*			        <div>HERE IS A THING</div>*}
{*			        <!-- /cmp:NeonThing -->*}
{*			        <!-- cmp:NeonThing -->*}
{*			        <div>HERE IS A THING</div>*}
{*			        <!-- /cmp:NeonThing -->*}
{*		        </div>*}
{*		        <!-- /cmp:NeonColumn -->*}
{*	        </div>*}
{*	        <!-- /cmp:NeonColumns -->*}
{*        {/editor}*}

{*		<div>*}
{*			<h1>Trash hand</h1>*}

{*			<div class="caveat">*}
{*				Working hard since 2008*}
{*			</div>*}

{*			<div class="trashhand">*}
{*				Working hard since 2008*}
{*			</div>*}
{*		</div>*}

	</div><!-- /.main -->
{/block}