json.extract! book, :id, :title, :author, :publisher, :description, :date_published, :price, :created_at, :updated_at, :condition
json.url book_url(book, format: :json)
