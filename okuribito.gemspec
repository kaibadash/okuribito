# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'okuribito/version'

Gem::Specification.new do |spec|
  spec.name          = "okuribito"
  spec.version       = Okuribito::VERSION
  spec.authors       = ["muramurasan"]
  spec.email         = ["ym.works1985@gmail.com"]

  spec.summary       = "Monitoring system of the method call"
  spec.description   = "Okuribito monitors the method call by the yaml."
  spec.homepage      = "https://github.com/muramurasan/okuribito"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4.0"
  spec.add_dependency "json", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
