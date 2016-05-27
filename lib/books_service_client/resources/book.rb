module BooksServiceClient
  class Book

    def initialize book_data
      @book_data = book_data
    end

    def title
      @book_data['title']
    end

    def id
      @book_data['id']
    end

    def author
      @book_data['author']
    end

    def no_of_copies
      @book_data['no_of_copies']
    end

    def price
      @book_data['price']
    end
  end
end