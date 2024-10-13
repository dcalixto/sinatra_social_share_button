# sinatra_social_share_button.gemspec
Gem::Specification.new do |spec|
  spec.name          = 'sinatra_social_share_button'
  spec.version       = '0.1.0'
  spec.authors       = ['dcalixto']
  spec.email         = ['calixtodaniel@example.com']
  spec.summary       = 'A Sinatra helper to generate social share buttons.'
  spec.description   = 'This gem provides helper methods to create social share buttons in a Sinatra application.'
  spec.homepage      = 'https://github.com/dcalixto/sinatra_social_share_button'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 3.0'
  spec.add_dependency 'sinatra', '~> 2.0'
end
