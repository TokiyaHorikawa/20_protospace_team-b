// $(function() {

//   // コメントエリアhtml生成
//   function builderHTML(comment) {
//     var html = `<div id="comment-list">
//                   <div class="media">
//                     <div class="media-left">
//                       <a href="/users/${ comment.user_id }">
//                         <image alt="user_icon" class="media-object" style="width: 64px; height: 64px; border-radius: 30%;" src="${ comment.avatar.url }">
//                       </a>
//                     </div>
//                     <div class="media-body">
//                       <h4 class="media-heading" id="top-aligned-media">
//                         ${ comment.name }
//                       </h4>
//                       <p>${ comment.content }</p>
//                       <div class="function-list">
//                         <div class="btn comment-btn">
//                           <a data-confirm="Are you sure?" rel="nofollow" data-method="delete" href="/prototypes/${ comment.prototype_id }/comments/${ comment.id}">削除</a>
//                         </div>
//                         <div class="btn comment-btn">
//                           <a href="/prototypes/${ comment.prototype_id }/comments/${ comment.id }/edit">編集</a>
//                         </div>
//                       </div>
//                     </div>
//                   </div>
//                 </div>`
//     return html;
//   }

//   // サブミットボタン押す！！
//   $('#new_comment').on('submit', function(e) {
//     e.preventDefault();
//     var formData = new FormData(this);
//     // create_path
//     var href = window.location.href + '/comments'
//     $.ajax({
//       url: href,
//       type: "POST",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//     .done(function(data) {
//       var html = builderHTML(data);
//       $('#comment-area').append(html)
//       // text_area空
//       $('#comment_text').val('');
//     })
//     .fail(function() {
//       alert('error');
//     });
//   });
// });
