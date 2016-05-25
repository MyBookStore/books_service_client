require 'books_service_client/service.rb'
require 'json'

class ServiceSpec
    describe BooksServiceClient do
      let(:service) { BooksServiceClient::Service.new }
      describe '#get_all_books' do
          let(:output) {service.all_books}

      it 'gets the list of books' do
        BooksServiceClient::Configuration.site = "localhost:3000"
        expect(JSON.parse (output)).to eq({})
      end
      end
    end
end