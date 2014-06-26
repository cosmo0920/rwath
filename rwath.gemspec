# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rwath/version'

Gem::Specification.new do |spec|
  spec.name          = "rwath"
  spec.version       = Rwath::VERSION
  spec.authors       = ["cosmo0920"]
  spec.email         = ["cosmo0920.wp@gamil.com"]
  spec.summary       = %q{Wrapper gem for Swath(Smart Word Analysis for THai).}
  spec.description   = %q{RWath is ruby wrapper gem for Swath(Smart Word Analysis for THai).}
  spec.homepage      = "https://github.com/cosmo0920/rwath"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
