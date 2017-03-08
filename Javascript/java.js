$(document).ready(function() {
  var charcount, year;
  charcount = function() {
    $("p:not(:has(*))").each(function() {
      var str;
      str = $(this).html();
      if (str.length > 75) {
        str = str.substring(0, 44) + "<span class='character'>" + str.substring(44, 76) + "</span>" + str.substring(76, str.length);
      }
      $(this).html(str);
    });
  };
  year = new Date();
  year = year.getYear();
  year = year - 112;
  return $(".howlong").html(year);
});
