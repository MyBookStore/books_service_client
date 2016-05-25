require 'books_service_client/base_service'
require 'books_service_client/service_urls'
module BooksServiceClient
  class Service
    include BaseService
    include ServiceUrls

    def all_books
      execute(all_books_url)
    end
  end
end
