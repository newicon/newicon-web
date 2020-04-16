<section>
	Spacing
	<table>
		<thead>
		<tr>
			<th>Name</th>
			<th>Size</th>
			<th>Pixels</th>
			<th class="hidden sm:table-cell"></th>
		</tr>
		</thead>
		<tbody>
        {foreach $styles.spacing as $name => $value}
			<tr>
				<td>{$name}</td>
				<td>{$value}</td>
				<td>0px</td>
				<td class="hidden sm:table-cell">
					<div class="h-4 bg-gray-400 w-{$name}"></div>
				</td>
			</tr>

        {/foreach}

		<tr>
			<td>px</td>
			<td>1px</td>
			<td>1px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-px"></div>
			</td>
		</tr>
		<tr>
			<td>1</td>
			<td>0.25rem</td>
			<td>4px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-1"></div>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>0.5rem</td>
			<td>8px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-2"></div>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td>0.75rem</td>
			<td>12px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-3"></div>
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td>1rem</td>
			<td>16px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-4"></div>
			</td>
		</tr>
		<tr>
			<td>5</td>
			<td>1.25rem</td>
			<td>20px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-5"></div>
			</td>
		</tr>
		<tr>
			<td>6</td>
			<td>1.5rem</td>
			<td>24px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-6"></div>
			</td>
		</tr>
		<tr>
			<td>8</td>
			<td>2rem</td>
			<td>32px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-8"></div>
			</td>
		</tr>
		<tr>
			<td>10</td>
			<td>2.5rem</td>
			<td>40px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-10"></div>
			</td>
		</tr>
		<tr>
			<td>12</td>
			<td>3rem</td>
			<td>48px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-12"></div>
			</td>
		</tr>
		<tr>
			<td>16</td>
			<td>4rem</td>
			<td>64px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-16"></div>
			</td>
		</tr>
		<tr>
			<td>20</td>
			<td>5rem</td>
			<td>80px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-20"></div>
			</td>
		</tr>
		<tr>
			<td>24</td>
			<td>6rem</td>
			<td>96px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-24"></div>
			</td>
		</tr>
		<tr>
			<td>32</td>
			<td>8rem</td>
			<td>128px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-32"></div>
			</td>
		</tr>
		<tr>
			<td>40</td>
			<td>10rem</td>
			<td>160px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-40"></div>
			</td>
		</tr>
		<tr>
			<td>48</td>
			<td>12rem</td>
			<td>192px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-48"></div>
			</td>
		</tr>
		<tr>
			<td>56</td>
			<td>14rem</td>
			<td>224px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-56"></div>
			</td>
		</tr>
		<tr>
			<td>64</td>
			<td>16rem</td>
			<td>256px</td>
			<td class="hidden sm:table-cell">
				<div class="h-4 bg-gray-400 w-64"></div>
			</td>
		</tr>
		</tbody>
	</table>
</section>