lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'elastic-apm-grape-middleware'
  spec.version       = '0.1.0'
  spec.authors       = ['Sergey Besedin']
  spec.email         = ['kr3ssh@gmail.com']

  spec.summary       = %q{ElasticAPM middleware to use with Grape}
  spec.description   = %q{With cool transaction names}
  spec.homepage      = 'https://github.com/kressh/elastic-apm-grape-middleware'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'elastic-apm', '>= 0.4.4'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
end
