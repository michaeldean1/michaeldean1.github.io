$(document).ready ->
	$("p").each ->
		str = $(@).html()
		if str.length > 75 then str = str.substring(0,44) + "<span class='character'>" + str.substring(45,76) + "</span>" + str.substring(76, str.length) 
		$(@).html str