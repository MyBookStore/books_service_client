require 'books_service_client/version'
require 'books_service_client/service_urls'
require 'books_service_client/service'
require 'books_service_client/base_service'
require 'books_service_client/resources/book'

module BooksServiceClient
  class Configuration
    class << self
      attr_accessor :site , :username, :password, :timeout, :caller
    end
  end
end
