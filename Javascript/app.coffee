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
						desc: 'The site is sent to you in a manner of your choosing.',
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

.controller 'certController', ($scope)->
	$scope.certifications = [{
		name: "Body Language for Leaders",
		month: 1,
		year: 2017
		},
		{
		name: "Project Management Fundamentals",
		month: 1,
		year: 2017
		},
		{
		name: "Statistics Fundamentls",
		month: 1,
		year: 2017
		},
		{
		name: "Creating Interactive Dashboards in Tableau",
		month: 12,
		year: 2016
		},
		{
		name: "Tableau 9 Essential Training",
		month: 12,
		year: 2016
		},
		{
		name: "Introduction to R",
		month: 6,
		year: 2015
		},
		{
		name: "Try R",
		month: 11,
		year: 2014
		},
		{
		name: "Shaping up with Angular.js",
		month: 7,
		year: 2014
		},
		{
		name: "Assembling Sass part 2",
		month: 1,
		year: 2014
		},
		{
		name: "Assembling Sass",
		month: 1,
		year: 2014
		},
		{
		name: "CSS-Cross Country",
		month: 12,
		year: 2013
		},
		{
		name: "CoffeeScript",
		month: 12,
		year: 2013
		},
		{
		name: "Front-end formations",
		month: 12,
		year: 2013
		},
		{
		name: "Journey into Mobile",
		month: 12,
		year: 2013
		},
		{
		name: "Try jQuery",
		month: 11,
		year: 2013
		},
		{
		name: "jQuery: The return flight",
		month: 11,
		year: 2013
		}]