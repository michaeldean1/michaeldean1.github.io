$(document).ready ->
	charcount = ->
		$("p:not(:has(*))").each ->
			str = $(@).html()
			if str.length > 75 then str = str.substring(0,44) + "<span class='character'>" + str.substring(44,76) + "</span>" + str.substring(76, str.length) 
			$(@).html str
			return
		return
	year = new Date()
	year = year.getYear()
	year = year - 112
	$(".howlong").html year
	#charcount()		