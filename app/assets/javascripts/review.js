$(function(){
  function buildHTML(review){
    let html = `<div class = "Review-box">
                  <div class = "Review-box__title">
                    ${review.title}
                    ${review.genre_name}
                    ${review.point}
                  </div>
                  <div class = "Review-box__text">
                    ${review.text}
                  </div>
                </div>`
  }
  $('#new_review').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    console.log(formData)
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
      $('.Input-box__title-form').val('');
      $('.Input-box__text-form').val('');
      $('.Input-box__submit-btn').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})