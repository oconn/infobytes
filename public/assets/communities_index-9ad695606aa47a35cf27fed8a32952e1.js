$(function(){var t=function(){$("#modal-popup").append("<a class='close-reveal-modal'>&#215;</a>")},n=function(){$("#modal-popup").foundation("reveal","close")},o=function(n){$("#modal-popup").html(n),t()},e=function(t,o){$.ajax({url:t,data:o,method:"POST",success:function(t){var o=t.name,e=t.description;t.no?$("form").append("Both name and description are required."):($("#communities-list").prepend('<a href= "/communities/'+t.id+'">          <div class ="tutorial-list medium-10 medium-offset columns">                <li>                  <p class="tut-title">'+o+'</p>                  <p class="tut-description">'+e+"</p>                </li>              </a>"),n())}})};$(document).on("click",".create-community-link",function(n){n.preventDefault();var e=$(this).attr("href");$.get(e,function(n){o(n),t()})}),$(document).on("submit","#community-add",function(t){t.preventDefault(),console.log("hello world");var n=$(this).attr("action"),o=$(this).serialize();e(n,o)})});