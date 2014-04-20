# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gjar/version'

Gem::Specification.new do |spec|
  spec.name          = "gjar"
  spec.version       = Gjar::VERSION
  spec.authors       = ["mj"]
  spec.email         = ["tywf91@gmail.com"]
  spec.summary       = %q{同步jar包的工具}
  spec.description   = %q{同步jar包的工具}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
