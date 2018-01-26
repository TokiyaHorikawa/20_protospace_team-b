$(function() {
  function appendHTML(prototype){
    var html = `<div class = "col-sm-4 col-md-3 proto-content">
                  <div class = "dropdown">
                  <ul>
                    <li>
                      <a data-method = "get" href = "/prototypes/${prototype.id}/edit">編集</a>
                    </li>
                    <li>
                      <a data-confirm="Are you sure?" rel="nofollow" data-method="delete" href="/prorotypes/${prototype.id}">削除</a>
                    </li>
                  </ul>
                  </div>
                  <div class="thumbnail">
                    <a href = "/prototypes/${prototype.id}">
                      <img src="${prototype.content}">
                    </a>
                    <div class = "caption">
                      <h3>
                        ${prototype.title}
                      </h3>
                      <div class="proto-meta">
                        <div class="proto-user">
                          <a href="/users/${prototype.user_id}">
                            ${prototype.name}
                          </a>
                        </div>
                        <div class="proto-posted">
                          ${prototype.posted_date}
                        </div>
                      </div>
                    </div>
                  </div>
                </div>`

    $('.container.proto-list').append(html);
  }


  $("#newest_btn").on('click', function(e){
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/prototypes',
      dataType: 'json',
    })
    .done(function(data){
      $('.container.proto-list').empty();
      data.forEach(function(prototype){
        appendHTML(prototype);
        console.log(prototype.content);
      });
    })
    return false;
  })
});
