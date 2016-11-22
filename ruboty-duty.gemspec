# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/duty/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-duty"
  spec.version       = Ruboty::Duty::VERSION
  spec.authors       = ["blooper05"]
  spec.email         = ["legend.of.blooper@gmail.com"]

  spec.summary       = %q{A duty management plugin for Ruboty}
  spec.description   = %q{A duty management plugin for Ruboty}
  spec.homepage      = "https://github.com/blooper05/ruboty-duty"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
