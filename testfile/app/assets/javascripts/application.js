$(document).ready(function(){
// API Docs at:
// https://developer.spotify.com/web-api/search-item/

    consoleå.log("loaded");

    function searchByArtist(keyword) {
      var url = 'https://api.spotify.com/v1/search?q='+keyword+'&type=artist';
      return url;
    }



    function searchByTrack(keyword) {
      var url = 'https://api.spotify.com/v1/search?q='+keyword+'&type=track';
      return url;
    }

    $('body').on("click", "#submit", function(e){
        e.preventDefault ();
        var keyword = $('#search-keyword').val();
        var searchType = $('#search-type').val();
        var query, type;

        if (searchType === "artist") {
          query = searchByArtist(keyword);
          type = "artists";
        } else {
          query = searchByTrack(keyword);
          type = "tracks";
        }

        // add your ajax request here:
        $.ajax({
          type: "GET",
          dataType: "json",
          url: query,
          success: function(data){
            // debugger;
            var result = data[type].items;
            for (var i = 0; i < result.length; i++){
              $('#results').append('<li>' + result[i].name + '</li>')
            }
          }
        })

    });

});
