# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'haml2handlebars/version'

Gem::Specification.new do |s|
  s.name        = 'haml2handlebars'
  s.version     = Haml2Handlebars::VERSION
  s.authors     = ['Elia Schito', 'Micah Geisel']
  s.email       = ['perlelia@gmail.com', 'micah@botandrose.com']
  s.homepage    = ''
  s.summary     = %q{Convert Haml templates to Handlebars!}
  s.description = %q{Converts Haml templates to Handlebars templates using the official Haml::Engine}

  s.rubyforge_project = 'haml2handlebars'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"

  s.add_runtime_dependency     'haml', '~> 3.1.3'
  s.add_development_dependency 'rspec', '~> 2.0'
  s.add_development_dependency 'rake'
end
