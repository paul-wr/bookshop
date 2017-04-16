json.extract! book, :id, :title, :author, :description, :cost, :image_url, :genre, :created_at, :updated_at
json.url book_url(book, format: :json)
