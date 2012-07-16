# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "serverdensity-ruby/version"

Gem::Specification.new do |s|
  s.name        = "serverdensity-ruby"
  s.version     = Serverdensity::Ruby::VERSION
  s.authors     = ["Brian Scott"]
  s.email       = ["b@bscott.me"]
  s.homepage    = ""
  s.summary     = %q{Ruby wrapper to the ServerDensity Http API}
  s.description = %q{Ruby wrapper to the ServerDensity Http API}

  s.rubyforge_project = "serverdensity-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "minitest"
  s.add_development_dependency "pry"
  s.add_runtime_dependency "httparty"
  s.add_runtime_dependency "json"
end
