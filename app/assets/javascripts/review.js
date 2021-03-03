$(function(){

  function buildHTML(review){
    let html = `<div class = "Review-box">
                  <div class = "Review-box__top">
                    <div class = "Review-box__title">
                      <span>タイトル</span>
                      ${review.title}
                    </div>
                    <div class = "Review-box__genre">
                    <span>感想の種類</span>
                      ${review.genre_name}
                    </div>
                    <div class = "Review-box__point">
                      <span>評価</span>
                      ${review.point}
                    </div>
                    <div class = "Review-box__point">
                      <span>投稿者</span>
                      ${review.user_name}
                    </div>
                    <div class = "Review-box__other ">
                      
                    </div>
                  </div>
                  <div class = "Review-box__text">
                    <span>レビュー</span>
                    ${review.review}
                  </div>
                </div>`
    return html;
  }
  $('#new-review').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.Review-list').append(html);
      $('#new-review').hide();
    })
    .fail(function(){
      alert('erorr');
    });
  })
})