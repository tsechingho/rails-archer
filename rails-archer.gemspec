# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-archer/version'

Gem::Specification.new do |gem|
  gem.name          = 'rails-archer'
  gem.version       = Rails::Archer::VERSION
  gem.authors       = ['Tse-Ching Ho']
  gem.email         = ['tsechingho@gmail.com']
  gem.description   = %q{Rails archer shoots off a rails project with helpful tools.}
  gem.summary       = %q{Shoots off a rails project with helpful tools.}
  gem.homepage      = 'https://github.com/tsechingho/rails-archer'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'bundler', '>= 1.2'
  gem.add_dependency 'railties', '>= 3.2'
end
