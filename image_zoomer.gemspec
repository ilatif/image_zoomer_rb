# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'image_zoomer/version'

Gem::Specification.new do |spec|
  spec.name          = "image_zoomer"
  spec.version       = ImageZoomer::VERSION
  spec.authors       = ["Imran Latif"]
  spec.email         = ["ilatif.bwp@gmail.com"]
  spec.summary       = %q{Image Zoomer}
  spec.description   = %q{This gem provides functionality for zooming images by using a jQuery plugin image_zoomer.}
  spec.homepage      = "http://i8ecoders.com/image_zoomer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.post_install_message = "Thanks for installing image_zoomer gem."

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
