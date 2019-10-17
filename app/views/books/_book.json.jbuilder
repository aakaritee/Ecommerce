json.extract! book, :id, :title, :author, :publisher, :description, :date_published, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
