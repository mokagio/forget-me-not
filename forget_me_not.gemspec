# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fmn/version'

Gem::Specification.new do |spec|
  spec.name          = "forget_me_not"
  spec.version       = FMN::VERSION
  spec.authors       = ["Giovanni Lodi"]
  spec.email         = ["giovanni.lodi42@gmail.com"]
  spec.summary       = %q{A smart, contextualised todo list. Designed to live in your terminal, and to be in your face.
}
  spec.description   = %q{A smart, contextualised todo list. Designed to live in your terminal, and to be in your face.}
  spec.homepage      = "https://github.com/mokagio/forget-me-not"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables << 'fmn'
  spec.require_paths = ["lib"]
  spec.add_dependency 'commander', '~> 4.3.4'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
