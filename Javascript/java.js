$(document).ready(function() {
  return $("p").each(function() {
    var str;
    str = $(this).html();
    if (str.length > 75) {
      str = str.substring(0, 44) + "<span class='character'>" + str.substring(45, 76) + "</span>" + str.substring(76, str.length);
    }
    return $(this).html(str);
  });
});
