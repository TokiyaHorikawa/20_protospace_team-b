$(function() {

  // コメントエリアhtml生成
  function builderHTML(comment) {
    var html = `<div id="comment-list">
                  <div class="media">
                    <div class="media-left">
                      <a href="">i-con</a>
                    </div>
                    <div class="media-body">
                      <h4 class="media-heading" id="top-aligned-media">
                        ${ comment.name }
                      </h4>
                      <p>${ comment.content }</p>
                    </div>
                  </div>
                </div>`
    return html;
  }

  // サブミットボタン押す！！
  $('#new_comment').on('submit', function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    // create_path
    var href = window.location.href + '/comments'
    $.ajax({
      url: href,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      var html = builderHTML(data);
      $('#comment-area').append(html)
      // text_area空
      $('#comment_text').val('');
    })
    .fail(function() {
      alert('error');
    });
  });
});
