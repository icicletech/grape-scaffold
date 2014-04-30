# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape_scaffold/version'

Gem::Specification.new do |spec|
  spec.name          = "grape-scaffold"
  spec.version       = GrapeScaffold::VERSION
  spec.authors       = ["Shrivara K S"]
  spec.email         = ["shrivara.ks@icicletech.com"]
  spec.summary       = "An API scaffold generator for Grape"
  spec.description   = "An API scaffold generator for Grape which generates controller, models and specs"
  spec.homepage      = "https://github.com/icicletech/grape_scaffold"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{lib}/**/*")
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rails', '~> 3.2.0'
end
