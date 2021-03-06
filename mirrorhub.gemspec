# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mirrorhub/version'

Gem::Specification.new do |spec|
  spec.name          = 'mirrorhub'
  spec.version       = Mirrorhub::VERSION
  spec.authors       = ['Flipez']
  spec.email         = ['code@brauser.io']

  spec.summary       = 'library to interact with the mirrorhub api'
  spec.homepage      = 'https://github.com/mirrorhub-io/mirrorhub-ruby'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
end
