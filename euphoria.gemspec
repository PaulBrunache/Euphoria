# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'euphoria/version'

Gem::Specification.new do |spec|
  spec.name          = "euphoria"
  spec.version       = Euphoria::VERSION
  spec.required_ruby_version = '>= 2.0'

  spec.authors       = ["paul brunache"]
  spec.email         = ["paulbrunache@gmail.com"]

  spec.summary       = %q{Custom sass templating framework for rails}

  spec.homepage      = "https://github.com/PaulBrunache/Euphoria"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency "sass-rails", "~> 5.0.1"
  spec.add_runtime_dependency "font-awesome-rails", "~> 4.3.0.0"
  spec.add_runtime_dependency "coffee-rails", "~> 4.1.0"
    
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
