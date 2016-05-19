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
  spec.homepage      = "http://teresinahc.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.11.2"
  spec.add_development_dependency "webmock", "~> 2.0.2"
  spec.add_runtime_dependency "faraday", "~> 0.9.2"
  spec.add_runtime_dependency "faraday_middleware", "~> 0.10.0"
end
