# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buffy/version'

Gem::Specification.new do |spec|
  spec.name          = "buffy"
  spec.version       = buffy::VERSION
  spec.authors       = ["Scott Chamberlain"]
  spec.email         = ["myrmecocystus@gmail.com"]
  spec.summary       = "A collection of command-line utilities to manage rOpenSci software onboarding submissions"
  spec.homepage      = "https://github.com/ropenscilabs/buffy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bibtex-ruby"
  spec.add_dependency "dotenv"
  spec.add_dependency "latex-decode"
  spec.add_dependency "metamatter", "~> 0.2.0"
  spec.add_dependency "octokit", "~> 4.0"
  spec.add_dependency "tilt"
  spec.add_dependency "thor", "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "webmock", "~> 1.21"
  spec.add_development_dependency "nokogiri"
end
