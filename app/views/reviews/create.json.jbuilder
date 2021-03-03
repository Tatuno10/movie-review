  json.title  @review.title
  json.user_id  @review.user_id
  json.review  @review.review
  json.point @review.point
  json.genre_name @review.genre.name
  json.user_name @review.user.name
  json.id @review.id
  json.movie_id @movie.id