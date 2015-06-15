# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara_api_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "capybara_api_helpers"
  spec.version       = CapybaraApiHelpers::VERSION
  spec.authors       = ["Jon Evans"]
  spec.email         = ["jle@foraker.com"]
  spec.summary       = %q{Ease testing of JSON APIs with Capybara and rspec.}
  spec.description   = %q{Testing APIs with Capybara isn't a great idea, but this makes it easier if you want to anyway.}
  spec.homepage      = "https://github.com/foraker/capybara_api_helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
