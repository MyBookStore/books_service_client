require 'spec_helper'
describe BooksServiceClient::ServiceUrls do
  include BooksServiceClient::ServiceUrls

  let(:root_url) { 'localhost:3004' }
  before do
    allow(BooksServiceClient::Configuration).to receive(:site).and_return(root_url)
  end

  it 'should return books url' do
    expect(all_books_url).to eql("#{root_url}/books")
  end
end