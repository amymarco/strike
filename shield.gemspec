# encoding: utf-8

require File.expand_path('../lib/shield/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Juan Hernández']
  gem.email         = ['juan.hernandez@wuaki.tv']
  gem.description   = %q{Dump a mysql database with sensitive data encrypted}
  gem.summary       = %q{Dump a mysql database with sensitive data encrypted}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($\)
  gem.executables   = ['shield']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'shield'
  gem.require_paths = ['lib']
  gem.version       = Shield::VERSION

  gem.add_runtime_dependency 'rake',    '~> 0.9'
  gem.add_runtime_dependency 'my_obfuscate', '~> 0.3.7'
  gem.add_runtime_dependency 'sequel',  '~> 3.39'
  gem.add_runtime_dependency 'mysql2',  '~> 0.3.11'
  gem.add_runtime_dependency 'sqlite3'
end
