# frozen_string_literal: true

require_relative 'lib/dndarena/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 3.3.1'
  spec.name = 'dndarena'
  spec.version = Dndarena::VERSION
  spec.authors = ['Michael Greenly']
  spec.email = ['mgreenly@gmail.com']
  spec.summary = 'A dnd 3.5 combat simulator that calculates challenge ratings.'
  spec.files = Dir['lib/**/*.rb', 'exe/*', 'Rakefile', 'Gemfile']
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'logger', '~> 1.6', '>= 1.6.0'
end
