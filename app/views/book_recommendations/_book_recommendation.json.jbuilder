json.extract! book_recommendation, :id, :title, :author, :created_at, :updated_at
json.url book_recommendation_url(book_recommendation, format: :json)
