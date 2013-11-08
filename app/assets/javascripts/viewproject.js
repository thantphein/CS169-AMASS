var h1 = $('image-div').height();
var h2 = $('info-block').height();

if (h1 > h2)
  $('info-block').height(h1);
else
  $('image-div').height(h2);