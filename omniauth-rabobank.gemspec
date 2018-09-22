# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-rabobank/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dunya Kirkali"]
  gem.email         = ["dunyakirkali@gmail.com"]
  gem.description   = %q{Official OmniAuth strategy for Rabobank.}
  gem.summary       = %q{Official OmniAuth strategy for Rabobank.}
  gem.homepage      = "https://github.com/ahtung/omniauth-rabobank"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-rabobank"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Rabobank::VERSION

  gem.add_dependency 'omniauth', '~> 1.5'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
