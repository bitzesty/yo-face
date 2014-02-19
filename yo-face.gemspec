# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yo/face/version'

Gem::Specification.new do |spec|
  spec.name          = "yo-face"
  spec.version       = Yo::Face::VERSION
  spec.authors       = ["Matthew Ford"]
  spec.email         = ["matt@bitzesty.com"]
  spec.description   = %q{Stock Avatars}
  spec.summary       = %q{faces to be used as avatars}
  spec.homepage      = "http://bitzesty.com"
  spec.license       = "(c) See Facebox User license"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
