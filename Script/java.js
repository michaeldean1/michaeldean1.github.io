// JavaScript Document
$(document).ready(function(){
	"use strict";
	var x = setInterval(function(){
		var then = new Date("Apr 11, 2017 23:59:59");
    	var now = new Date();
		var diff = Math.round((then.getTime() - now.getTime())/1000);  //Get the difference between the two times in seconds, there are 1000 milliseconds in a second.
		if (diff < 0){
			clearInterval(x);
			$(".offer").html("There is no offer on at the moment, but dont worry another one will be here very soon.");			
		}else{
        var days_to_go = Math.floor(diff/(24*60*60));
		diff = diff - (days_to_go * 24 * 60 * 60); //Remove the correct number of Days
        var hours_to_go = Math.floor(diff/(60*60));
		diff = diff - (hours_to_go * 60 * 60); //Remove the correct number of hours
    	var minutes_to_go = Math.floor(diff/60);
		diff = diff - (minutes_to_go * 60);
    	var seconds_to_go = diff;
		$(".offer span").html("There is an offer on where you can get 50% off any order. But there are only " + days_to_go + " day(s), " + hours_to_go + " hour(s), " + minutes_to_go + " minute(s), and " + seconds_to_go + " second(s) left for this offer.");
		}
    }, 1000);
	var now = new Date();
	$(".howlong").html(now.getYear() - 112);
	
	$(".contactme").on("mouseover", function(){
		var styles = {
			cursor: "pointer",
			backgroundColor: "#7400cc"
		};
		$(this).css(styles);
		$(".contactme a").css("color", "white");
	}).on("mouseleave", function(){
		var styles = {
			cursor: "auto",
			backgroundColor: "white"
		};
		$(this).css(styles);
		$(".contactme a ").css("color", "black");
	});
});