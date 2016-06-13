# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inthegra/version'

Gem::Specification.new do |spec|
  spec.name          = "inthegra"
  spec.version       = Inthegra::VERSION
  spec.authors       = ["Rafael Guimarães", "Renato Filho"]
  spec.email         = ["rafaelguimaraesweb@gmail.com", "renatosousafilho@gmail.com"]

  spec.summary       = "Inthegra"
  spec.description   = "Ruby wrapper for the STRANS-PI Inthegra API"
  spec.homepage      = "https://github.com/teresinahc/inthegra"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.0.2"
  spec.add_development_dependency "vcr", "~> 3.0.3"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.5.1"

  spec.add_runtime_dependency "faraday", "~> 0.9.2"
  spec.add_runtime_dependency "faraday_middleware", "~> 0.10.0"
end
