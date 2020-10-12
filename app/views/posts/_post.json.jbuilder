json.extract! post, :id, :username, :email, :password, :created_at, :updated_at
json.url post_url(post, format: :json)
