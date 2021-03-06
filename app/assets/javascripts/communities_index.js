$(function(){

  var invalidInput = function(field){
      $(field).css("border-color", "red")
    }

  // Appends an x to popup window #modal-popup
  var appendX = function(){
    $("#modal-popup").append("<a class='close-reveal-modal'>&#215;</a>")
  }

  // Return id from url
  var getId = function(url){
    return url.match(/\d+/)[0]
  }

  // Removes modal popup of the screen
  var removePopup = function(){
    $("#modal-popup").foundation("reveal", "close");
  }

  var populatePopup = function(content){
    $("#modal-popup").html(content);
    appendX();
  }

  var createCommunity = function(url, data){
    $.ajax({
      url: url,
      data: data,
      method: "POST", 
      success: function(serverResponse, status, request){
        var name = serverResponse.name
        var description = serverResponse.description
        if (serverResponse.no) {
          $('form').append("Both name and description are required.")
        }
        else{
       
          $('#communities-list').prepend(
            '<a href= "/communities/' + serverResponse.id + '">\
          <div class ="tutorial-list medium-10 medium-offset columns">\
                <li>\
                  <p class="tut-title">' + name + '</p>\
                  <p class="tut-description">' + description + '</p>\
                </li>\
              </a>')
          removePopup();
        }
        }
      })
    }

  $(document).on("click", ".create-community-link", function(e){
      e.preventDefault();
      var url = $(this).attr("href");
      $.get(url, function(serverResponse, status, request){
        populatePopup(serverResponse);
        appendX();
      })
    })

  $(document).on('submit', "#community-add", function(e){
    e.preventDefault();
      console.log("hello world")
      
      var url = $(this).attr("action");
      var data = $(this).serialize()
      createCommunity(url, data);

    })


// })


})