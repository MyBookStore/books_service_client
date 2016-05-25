module BooksServiceClient

  class Service
    include BaseService
    include ServiceUrls
    def initialize

    end

    def all
      execute(get_list)
    end
  end
end