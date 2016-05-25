require 'rest-client'

module BooksServiceClient
  module BaseService

    def execute url
      RestClient.get url
    end

  end
end
