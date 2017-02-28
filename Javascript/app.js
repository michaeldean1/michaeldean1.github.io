var app;

app = angular.module('app', []).controller('DevController', function($scope) {
  return $scope.stage = {
    name: 'Wireframes and Fonts',
    desc: 'This is a description',
    img: 'Images/Logo.jpg'
  };
});

app.controller('langController', function($scope) {
  var fiveyears, year;
  year = new Date();
  year = year.getYear();
  fiveyears = year - 112;
  return $scope.language = [
    {
      name: 'HTML5',
      years: fiveyears
    }, {
      name: 'CSS3',
      years: fiveyears
    }, {
      name: 'Sass',
      years: fiveyears - 2
    }, {
      name: 'Javascript',
      years: fiveyears - 1
    }, {
      name: 'Coffeescript',
      years: fiveyears - 2
    }, {
      name: 'AngularJS',
      years: fiveyears - 2
    }, {
      name: 'JQuery',
      years: fiveyears - 2
    }, {
      name: 'Bootstrap',
      years: fiveyears - 3
    }, {
      name: 'VBA',
      years: fiveyears - 3
    }
  ];
});
