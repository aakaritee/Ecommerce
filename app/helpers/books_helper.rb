module BooksHelper

  def book_seller(book)
    user_signed_in? && current_user.id == book.user_id
  end

end
