# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redpen_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "redpen_ruby"
  spec.version       = RedpenRuby::VERSION
  spec.authors       = ["Akino Murasame"]
  spec.email         = ["akino.murasame@gmail.com"]
  spec.summary       = %q{Ruby wrapper for redpen: a text inspection tool.}
  spec.description   = %q{RedPen Ruby is a Ruby wrapper for redpen: a text inspection tool.}
  spec.homepage      = "https://github.com/akinomurasame/redpen_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
