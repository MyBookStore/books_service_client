require 'books_service_client/base_service'
require 'books_service_client/service_urls'
module BooksServiceClient
  class Service
    include BaseService
    include ServiceUrls

    def initialize user
      @user = user
    end

    def all_books
      books_data = JSON.parse(execute(all_books_url))
      formatted_books_data =  books_data.inject([]) do |books,book_data|
        books << Book.new(book_data)
      end
      formatted_books_data
    end
  end
end
