module BooksServiceClient
  module ServiceUrls
    def all_books_url
      "#{root_url}/books"
    end

    private
    def root_url
      @root_url ||= BooksServiceClient::Configuration.site
    end
  end
end
