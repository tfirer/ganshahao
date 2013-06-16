<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>jQuery custom scrollbar demo</title>
	<!-- style for demo and examples -->
	<!-- Custom scrollbars CSS -->
	<link href="/static/css/jquery.mCustomScrollbar.css" rel="stylesheet" />
    <link href="/static/css/main.css" rel="stylesheet" />
</head>
<body>
	<p class="links">
		<a href="http://manos.malihu.gr">malihu</a>
		<a href="http://manos.malihu.gr/jquery-custom-content-scroller">Plugin home</a>
		<a href="complete_examples.html">Plugin demo</a>
	</p>
	<hr />
	<h1>Default scrollbar with scroll buttons</h1>
	<!-- content block -->
	<div id="content_1" class="content">
		<p>Lorem ipsum dolor sit amet. Aliquam erat volutpat. Maecenas non tortor nulla, non malesuada velit.</p>
   		<p>Aliquam erat volutpat. Maecenas non tortor nulla, non malesuada velit. Nullam felis tellus, tristique nec egestas in, luctus sed diam. Suspendisse potenti. </p>
   		<p>Consectetur adipiscing elit. Nulla consectetur libero consectetur quam consequat nec tincidunt massa feugiat. Donec egestas mi turpis. Fusce adipiscing dui eu metus gravida vel facilisis ligula iaculis. Cras a rhoncus massa. Donec sed purus eget nunc placerat consequat.</p>
   		<p>Cras venenatis condimentum nibh a mollis. Duis id sapien nibh. Vivamus porttitor, felis quis blandit tincidunt, erat magna scelerisque urna, a faucibus erat nisl eget nisl. Aliquam consequat turpis id velit egestas a posuere orci semper. Mauris suscipit erat quis urna adipiscing ultricies. In hac habitasse platea dictumst. Nulla scelerisque lorem quis dui sagittis egestas.</p> 
		<p>Etiam sed massa felis, aliquam pellentesque est.</p>
    	<p>Nam eu arcu at purus tincidunt pharetra ultrices at ipsum. Mauris urna nunc, vulputate quis gravida in, pharetra id mauris. Ut sit amet mi dictum nulla lobortis adipiscing quis a nulla. Etiam diam ante, imperdiet vel scelerisque eget, venenatis non eros. Praesent ipsum sem, eleifend ut gravida eget, tristique id orci. Nam adipiscing, sem in mattis vulputate, risus libero adipiscing risus, eu molestie mi justo eget nulla.</p> 
		<p>Cras venenatis metus et urna egestas non laoreet orci rutrum. Pellentesque ullamcorper dictum nisl a tincidunt. Quisque et lacus quam, sed hendrerit mi. Mauris pretium, sapien et malesuada pulvinar, lorem leo viverra leo, et egestas mi nisl quis odio. </p>
		<p>Aliquam erat volutpat. Sed urna arcu, tempus eu vulputate adipiscing, consectetur et orci. Vivamus congue, nunc vitae fringilla convallis, libero massa lacinia lorem, id convallis mauris elit ut leo. Nulla vel odio sem. Duis lorem urna, congue vitae rutrum sed, tincidunt vel tortor. In hac habitasse platea dictumst. Nunc vitae enim ante, vitae facilisis massa. Etiam sagittis sapien at nibh fermentum consectetur convallis lacus blandit.</p>
    	<p>the end.</p>
	</div>
	<hr />
	<p>&nbsp;</p>
	<!-- Google CDN jQuery with fallback to local -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>!window.jQuery && document.write(unescape('%3Cscript src="js/minified/jquery-1.9.1.min.js"%3E%3C/script%3E'))</script>
	<!-- custom scrollbars plugin -->
	<script src="/static/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script>
		(function($){
			$(window).load(function(){
				$("#content_1").mCustomScrollbar({
					scrollButtons:{
						enable:true
					}
				});
			});
		})(jQuery);
	</script>
</body>
</html>