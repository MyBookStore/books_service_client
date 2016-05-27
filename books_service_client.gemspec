# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'books_service_client/version'

Gem::Specification.new do |spec|
  spec.name          = "books_service_client"
  spec.version       = BooksServiceClient::VERSION
  spec.authors       = "Simran Pal"
  spec.email         = "some_email@email.com"

  spec.summary       = 'Some Summary'
  spec.description   = 'Some Description'
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
