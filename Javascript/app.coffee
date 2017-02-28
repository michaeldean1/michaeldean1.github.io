app = angular.module 'app', []

.controller 'DevController', ($scope)->
	$scope.stage = {
						name: 'Wireframes and Fonts',
						desc: 'This is a description',
						img: 'Images/Logo.jpg'
					}
	
app.controller 'langController', ($scope)->
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