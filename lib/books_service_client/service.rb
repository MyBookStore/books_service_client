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
      Resources::Order.new
      response = execute(:get, all_books_url, {}, @user)
      formatted_books_data = response.body['user'].inject([]) do |books, book_data|
        books << Book.new(book_data)
      end
      formatted_books_data
    end

    def get params
      response = execute(:get, get_url, params, @user)
      Book.new response.body['user']
    end
  end
end
