# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nazrin/kaminari/version'

Gem::Specification.new do |spec|
  spec.name          = 'nazrin-kaminari'
  spec.version       = Nazrin::Kaminari::VERSION
  spec.authors       = ['Tomohiro Suwa']
  spec.email         = ['neoen.gsn@gmail.com']

  spec.summary       = 'Kaminari generator for nazrin'
  spec.description   = 'Kaminari generator for nazrin'
  spec.homepage      = 'https://github.com/tsuwatch/nazrin-kaminari'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'kaminari-core', '>= 1.0.0'
  spec.add_dependency 'nazrin', '>= 2.0.0.rc2'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rspec'
end
