$(document).ready(function() {
  var charcount, offer, year;
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
  $(".howlong").html(year);
  offer = function() {
    var M, a, b, c, d, offerMessage, offerperc, todayDay, todayMonth, todayYear;
    year = new Date();
    todayDay = year.getDate();
    todayMonth = year.getMonth();
    todayYear = year.getYear() + 1900;
    offerperc = 0;
    if (todayMonth === 11 && todayDay >= 20 || todayMonth === 12 && todayDay <= 31) {
      offerperc = 25;
    }
    a = todayYear % 19;
    b = ((11 * a) + 5) / 30;
    if (b === 0 || (b === 1 && a > 10)) {
      c = b + 1;
    } else {
      c = b;
    }
    if (c >= 1 && c <= 19) {
      M = 4;
    } else {
      M = 3;
    }
    d = Math.floor((50 - c) % 31) - 1;
    if (todayMonth === M && todayDay >= d || todayMonth === (M + 1) && todayDay <= 30) {
      offerperc = 25;
    }
    if (offerperc === 0) {
      offerMessage = "There isn't an offer on at the moment. But there will be one in the future.";
    } else {
      offerMessage = "There is an offer on at the moment, claim now and you will get " + offerperc + "% off your order.";
    }
    return $(".offer").html(offerMessage);
  };
  return offer();
});
