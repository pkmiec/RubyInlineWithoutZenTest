# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inline/version'

Gem::Specification.new do |spec|
  spec.name          = "RubyInlineWithoutZenTest"
  spec.version       = Inline::VERSION
  spec.authors       = ["Paul Kmiec"]
  spec.email         = ["paul.kmiec@appfolio.com"]
  spec.description   = %q{See https://github.com/seattlerb/zentest/issues/28. Tired of wasting time with ZenTest.}
  spec.summary       = %q{RubyInline without the ZenTest dependency}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.requirements = [%q{A POSIX environment and a compiler for your language.}]

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  if spec.respond_to? :specification_version then
    spec.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      spec.add_development_dependency(%q<minitest>, ["~> 4.7"])
      spec.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      spec.add_development_dependency(%q<rake>, [">= 0"])
    else
      spec.add_dependency(%q<minitest>, ["~> 4.7"])
      spec.add_dependency(%q<rdoc>, ["~> 4.0"])
      spec.add_dependency(%q<rake>, [">= 0"])
    end
  else
    spec.add_dependency(%q<minitest>, ["~> 4.7"])
    spec.add_dependency(%q<rdoc>, ["~> 4.0"])
    spec.add_dependency(%q<rake>, [">= 0"])
  end
end
