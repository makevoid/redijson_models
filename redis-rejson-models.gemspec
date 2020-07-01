lib = File.expand_path('./lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "redis_rejson_models/version"

Gem::Specification.new do |spec|
  spec.platform    = Gem::Platform::RUBY
  spec.name        = 'redis_rejson_models'
  # spec.version     = RedisRejsonModels::VERSION
  spec.version     = '0.9.5'
  spec.summary     = 'Document-like ORM based on Redis key value store'
  spec.description = 'Document-like ORM based on Redis key value store - previously named redis_rejson_models - uses Redis Re-JSON for full json manipulation'

  spec.authors       = ["@makevoid (Francesco Canessa)"]
  spec.email         = ["makevoid@gmail.com"]
  spec.homepage      = 'http://makevoid.com'
  spec.license       = "Unlicense"

  spec.files        = Dir['Readme.md', 'Rakefile', 'lib/*']
  spec.require_path = 'lib'

  spec.add_dependency 'redis',              '~> 4.2.1'
  # spec.add_dependency 'virtus',           '~> 1.0.5'
  spec.add_dependency 'shallow_attributes', '~> 0.9.5'
  spec.add_dependency 'dry-inflector',      '~> 0.2.0'
  spec.add_dependency 'rejson-rb',          '~> 1.0.1'
  # spec.add_dependency('redis_rejson',     '~> 0.2.0') # old dependency, swapped with rejson-rb which is much more full featured
end
