# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'sprockets/jsrender/version'

Gem::Specification.new do |s|
  s.name        = 'sprockets-jsrender'
  s.version     = Sprockets::JSRender::VERSION
  s.authors     = ['Enrico Rubboli']
  s.email       = ['enrico@rubbo.li']
  s.homepage    = 'http://github.com/dn2k/sprockets-jsrender'
  s.summary     = %q{Sprockets Tilt jsrender/jsview templates}
  s.description = %q{Sprockets tilt support for jsrender/jsview with Rails 3.1 new asset pipeline}

  s.rubyforge_project = "sprockets-jsrender"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'actionpack', '~> 3.1'
end
