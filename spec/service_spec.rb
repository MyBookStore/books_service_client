require 'books_service_client/service.rb'
require 'json'

class ServiceSpec
    describe BooksServiceClient do
      let(:service) { Service.new }
      describe '#get_all_books' do
          let(:output) {service.get_all_books}

      it 'get the list of books' do
        expect(JSON.parse (service.all)).to eq ["The Little Prince","The Little Prince","Frindle"]
      end
      end
    end
end