# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-upp/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-upp"
  spec.version       = VagrantPlugins::Upp::VERSION
  spec.authors       = ["Yusuke Goto"]
  spec.email         = ["u.suke.goto@gmail.com"]
  spec.summary       = spec.description
  spec.description   = %q{This Vagrant plugins call vagrant up with no provision and sandbox on}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
end
