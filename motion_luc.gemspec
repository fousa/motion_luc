# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |gem|
  gem.name          = "motion_luc"
  gem.version       = MotionLuc::VERSION
  gem.authors       = ["Jelle Vandebeeck"]
  gem.email         = ["jelle@fousa.be"]
  gem.description   = %q{Different kind of utilities for RubyMotion the way I use it.}
  gem.summary       = %q{Different kind of utilities for RubyMotion the way I use it.}
  gem.homepage      = "http://github.com/fousa/motion_luc/"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
end
