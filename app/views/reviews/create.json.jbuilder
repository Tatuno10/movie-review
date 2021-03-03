  json.title  @review.text
  json.user_id  @review.user_id
  json.review  @review.text
  json.point @review.point
  json.genre_name @review.genre.name
  json.user_name @review.user.name