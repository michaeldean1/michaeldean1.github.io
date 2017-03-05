app = angular.module 'app', []

.controller 'DevController', ($scope)->
	$scope.stage = [{
						name: 'Wireframes and Fonts',
						desc: 'Where you can pick the various layouts for the different pages, and choose as many fonts as you want to have on your site.',
						img: 'Images/wire-min.jpg'
					},
					{
						name: 'Colour Scheme and Logo Design',
						desc: 'You can pick what colours you want to base your site around, you can also provide me with a logo, or you can have me design one.',
						img: 'Images/colour-min.jpg'
					},
					{
						name: 'Initial Designs',
						desc: 'Five designs are made for the pages using your selected; fonts, colours and layouts. You can make as many changes to these as needed, in order to make the site the one you want.',
						img: 'Images/layout-min.jpg'
					},
					{
						name: 'Images',
						desc: 'Images are placed onto the site, I have access to images that are free for commercial use. Or you can provide me with images, just make sure that you have permission for me to use them.',
						img: 'Images/camera-min.jpg'
					},
					{
						name: 'Demonstration',
						desc: 'The site is demonstrated for 72 hours for you to view and ensure that it meets all your needs.',
						img: 'Images/watch-min.jpg'
					},
					{
						name: 'Submission',
						desc: 'The site is sent to you in a manner of your choosing, with payment expected on the first of the month.',
						img: 'Images/letter-min.jpg'
					}]
	
.controller 'langController', ($scope)->
	year = new Date()
	year = year.getYear()
	fiveyears = year - 112	#Five years as of 2017
	$scope.language = [{
		name:	'HTML5',
		years: 	fiveyears
		},
		{
		name: 	'CSS3',
		years: 	fiveyears
		},
		{
		name: 	'Sass',
		years: 	fiveyears - 2
		},
		{
		name: 	'Javascript',
		years: 	fiveyears - 1
		},
		{
		name: 	'Coffeescript',
		years: 	fiveyears - 2
		},
		{
		name: 	'AngularJS',
		years: 	fiveyears - 2
		},
		{
		name: 	'JQuery',
		years: 	fiveyears - 2
		},
		{
		name: 	'Bootstrap',
		years: fiveyears - 3
		},
		{
		name: 	'VBA',
		years: 	fiveyears - 3
		}]