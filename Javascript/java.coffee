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
	offer = ->
		year = new Date()
		todayDay = year.getDate()
		todayMonth = year.getMonth()
		todayYear = year.getYear() + 1900
		offerperc = 0
		#Christmas Offer
		if todayMonth == 11 and todayDay >=20 or todayMonth == 12 and todayDay <=31 then offerperc = 25
		#Easter Offer
		a = todayYear % 19
		b = ((11 * a) + 5) / 30
		if b == 0 or (b==1 and a > 10) then c = b + 1 else c = b
		if c >= 1 and c<=19 then M = 4 else M = 3
		d = Math.floor((50 - c) % 31) - 1	#Easter falls on the Sunday after this date unless the date is a Sunday		
		if todayMonth == M and todayDay >= d or todayMonth == (M + 1) and todayDay <=30 then offerperc = 25
		if offerperc == 0 then offerMessage = "There isn't an offer on at the moment. But there will be one in the future." else offerMessage = "There is an offer on at the moment, claim now and you will get " + offerperc + "% off your order."
		$(".offer").html offerMessage
	offer()

	