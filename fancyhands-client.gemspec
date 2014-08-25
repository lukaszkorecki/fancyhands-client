# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fancyhands/client'

Gem::Specification.new do |spec|
  spec.name          = "fancyhands-client"
  spec.version       = Fancyhands::Client::VERSION
  spec.authors       = ["Łukasz Korecki"]
  spec.email         = ["lukasz@coffeesounds.com"]
  spec.summary       = %q{Simple FancyHands client}
  spec.description   = %q{Submit custom tasks and check their status}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "simple_oauth", "~> 0.2"
  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "faraday_middleware", "~> 0.9.1"
end
