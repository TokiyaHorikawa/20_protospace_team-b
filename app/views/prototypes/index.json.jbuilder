json.array! @prototypes do |prototype|
  json.name            prototype.user.name
  json.title           prototype.title
  json.posted_date     prototype.posted_date
  json.id              prototype.id
  json.user_id         prototype.user_id
  # json.content_id      prototype.captured_images
end
