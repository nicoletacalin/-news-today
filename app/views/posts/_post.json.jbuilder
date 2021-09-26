json.extract! post, :id, :title, :views, :country, :is_breaking_news, :created_at, :updated_at
json.url post_url(post, format: :json)
