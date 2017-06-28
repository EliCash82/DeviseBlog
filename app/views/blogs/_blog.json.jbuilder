json.extract! blog, :id, :title, :body, :thumbnail, :created_at, :updated_at
json.url blog_url(blog, format: :json)
