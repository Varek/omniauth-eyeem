# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-eyeem/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-eyeem"
  gem.version       = Omniauth::EyeEm::VERSION
  gem.authors       = ["Varek"]
  gem.email         = ["4ndr3r13ck@googlemail.com"]
  gem.description   = "Omniauth Strategy for EyeEm"
  gem.summary       = "Omniauth Strategy for EyeEm"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]


  gem.add_dependency 'omniauth', '~> 1.1'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency "rspec", "~> 2"
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'webmock'
end
