var highlightTags = function(tag) {
  _.each($(".tag"), function(el) {
    if (el.innerText.match(tag) != null && el.innerText.match("<") != null) {
      $(el).addClass("highlight-yellow");      
    } else {
      $(el).removeClass("highlight-yellow");
    };
  });
}