json.array!(@posts) do |post|
  json.extract! post, :id, :name, :description, :counter, :user_id, :subcategory_id, :category_id
  json.url post_url(post, format: :json)
end
