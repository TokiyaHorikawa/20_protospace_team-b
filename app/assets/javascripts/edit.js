$(function(){

   $(window).on('load',function(e)  {
    var file = e.target.files[0],
        reader = new FileReader(),
        // t = this;
        img = $(this).prev()[0]
        console.log(img)

    // 画像ファイル以外の場合は何もしない
    if(file.type.indexOf("image") < 0){
      return false;
    }
    // ファイル読み込みが完了した際のイベント登録
    reader.onload = (function(file) {
      return function(e) {
        // alert('ok');
        // .prevewの領域の中にロードした画像を表示するimageタグを追加
        $(img).attr({
                  src: e.target.result,
                  width: "100%",
                  height:"100%",
                  class: "preview",
                  title: file.name
        });
      };
    })(file);

    reader.readAsDataURL(file);
  });

$('input[type=file]').change( function(e) {
    if ($(this).attr("id") == "main"){
      $('.img-size-fix').css("display", "none");

    };

     // $('.img-size-fix').css("display", "none");
     // $(this).prev()[0].css("display", "none");
     console.log($(this).attr("id"));
  });
});

