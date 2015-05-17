# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'euphoria/version'

Gem::Specification.new do |spec|
  spec.name          = "euphoria"
  spec.version       = Euphoria::VERSION
  spec.authors       = ["paul brunache"]
  spec.email         = ["paulbrunache@gmail.com"]

  spec.summary       = %q{Yet another grid framework for the web built with components from flexbox}

  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "sass-rails", "~> 5.0.1"
  spec.add_development_dependency "coffee-rails", "~> 4.1.0"
  spec.add_development_dependency "font-awesome-rails", "~> 4.3.0.0"
end
