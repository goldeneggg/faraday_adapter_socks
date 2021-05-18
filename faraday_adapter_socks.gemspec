# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday_adapter_socks/version'

Gem::Specification.new do |spec|
  spec.name          = "faraday_adapter_socks"
  spec.version       = FaradayAdapterSocks::VERSION
  spec.authors       = ["goldeneggg"]
  spec.email         = ["jpshadowapps@gmail.com"]

  spec.summary       = %q{Faraday adapter for socks proxy}
  spec.description   = %q{FaradayAdapterSocks supports connection throughing socks proxy}
  spec.homepage      = "https://github.com/goldeneggg/faraday_adapter_socks"
  spec.licenses = ['MIT']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', ['>= 0.7.4', '< 2.0']
  spec.add_dependency "socksify", "~> 1.7"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.9"
  spec.add_development_dependency 'pry', '~> 0.12'
  spec.add_development_dependency 'pry-byebug', '~> 3.8'
  spec.add_development_dependency 'pry-doc', '~> 1.0'
  spec.add_development_dependency 'pry-theme', '~> 1.3'
end