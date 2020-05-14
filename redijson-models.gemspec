lib = File.expand_path('./lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "redijson_models/version"

Gem::Specification.new do |spec|
  spec.platform    = Gem::Platform::RUBY
  spec.name        = 'redijson_models'
  # spec.version     = RediJsonModels::VERSION
  spec.version     = '0.7.0'
  spec.summary     = 'Document-like ORM based on Redis key value store'
  spec.description = 'Document-like ORM based on Redis key value store - uses Redis Re-JSON for full json manipulation'

  spec.authors       = ["makevoid"]
  spec.email         = ["makevoid@gmail.com"]
  spec.homepage      = 'http://makevoid.com'
  spec.license       = "Unlicense"

  spec.files        = Dir['Readme.md', 'Rakefile', 'lib/*']
  spec.require_path = 'lib'

  spec.add_dependency('redis', '>= 3.0.0') # TODO: bump to redis 4 - requires rejson-rb redis dep bump
  spec.add_dependency('virtus', '>= 1.0.5')
  spec.add_dependency('oj', '>= 3.10.6')
  spec.add_dependency('dry-inflector', '>= 0.2.0')
  spec.add_dependency('rejson-rb', '>= 1.0.0')
end