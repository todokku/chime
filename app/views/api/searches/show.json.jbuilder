json.set! :users do
  json.array! @user_matches do |user|
    json.extract! user, :username
  end
end

json.set! :tracks do
  json.array! @track_matches do |track|
    json.extract! track, :title, :slug, :img_url
    json.user track.user.username
  end
end