# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taxable/version'

Gem::Specification.new do |spec|
  spec.name          = "taxable"
  spec.version       = Taxable::VERSION
  spec.authors       = ["Sajoku"]
  spec.email         = ["sajoku@me.com"]
  spec.summary       = %q{Calcute dutch taxes for vairous salaries}
  spec.description   = %q{Taxable can calculate from and to net prices based on the dutch tax construction.}
  spec.homepage      = "http://github.com/sajoku/taxable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
