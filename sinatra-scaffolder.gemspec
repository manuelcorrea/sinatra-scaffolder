# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra-scaffolder/version'

Gem::Specification.new do |gem|
  gem.name          = "sinatra-scaffolder"
  gem.version       = SinatraScaffolder::VERSION
  gem.authors       = ["Brian Hare"]
  gem.email         = ["brian.hare@careerbuilder.com"]
  gem.description   = %q{A CLI for scaffolding a Sinatra application}
  gem.summary       = %q{A CLI for scaffolding a Sinatra application}
  gem.licenses       = ["Beerware"]

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'thor', "0.19.1"
  gem.add_dependency 'git', "1.2.9"

  gem.add_development_dependency 'guard', '2.12.5'
  gem.add_development_dependency 'guard-rspec', '4.5.0'
  gem.add_development_dependency 'simplecov', '0.9.2'
  gem.add_development_dependency 'growl', '1.0.3'
  gem.add_development_dependency 'rb-fsevent', '0.9.4'
  gem.add_development_dependency 'rake', '10.4.2'
end
