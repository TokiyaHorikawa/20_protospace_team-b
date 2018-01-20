$(function() {
  $("#like-button1").on("click", function(e){
    e.preventDefault();
    console.log(this)
      $.ajax({
        url: location.href + "likes",
        type: "POST",
        dataType: "json",
        processData: false,
        contentType: false
      })
  })
})



















































// $(function() {

// var $heart = $("#like-button");
//   $("#like-button").on("click", function(){
//     var $likeSum = $("#like-sum")
//     like_function(#{prototype.id}, $(this), $heart, $likeSum)
//   });

//   function like_function(id, button, heart, sum) {
//     if (button.hasClass("decrement")){
//       $.ajax({
//         url: "/prototypes/" + id,
//         type: "delete",
//         data: { prototype_id: id },
//         dataType: "json"
//       })
//       .done(function(data){
//       button.removeClass("decrement").addClass("increment")
//       heart.attr("fa fa-heart")
//       sum.text(data["count"])
//       })
//     }else{
//       $.ajax({
//         url: "/prototypes",
//         type: "post",
//         data: {prototype_id: id },
//         dataType: "json"
//       })
//       .done(function(data){
//       button.removeClass("increment").addClass("decrement")
//       heart.attr("fa fa-heart")
//       sum.text(data["count"])
//       })
//     }
// }
// }



//   function buildHTML(like){
//     var html = `<div class = "container.proto-page">
//                   <div class = "container.proto-page__row.user-nav__media-right__increment">
//                     <input id = "like-button" type = "button">
//                     </input>
//                     <span>
//                      ${like.}
//                     </span>
//                   </div>
//                 </div>`
//     return html;
//   }
//   $("#like-button1".on("click", function(e){
//     e.preventDefault();
//     console.log(this)
//       $.ajax({
//         url: "/prototypes/" + id,
//         type: "delete",
//         data:
//         dataType: "json"
//         processData: false,
//         contentType: false
//   })
//   //   .done(function(data){
//   //     var html = buildHTML(data);
//   //     $(.container.proto-page__row.user-nav__media-right).append(html);
//   //   })
//   });
// })
