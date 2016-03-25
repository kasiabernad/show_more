Gem::Specification.new do |s|
  s.name        = 'show_more'
  s.version     = '0.1.0'
  s.date        = '2016-03-07'
  s.summary     = "ShowMore"
  s.description = "A simple gem to creating show more button"
  s.authors     = ["Kasia Kasprzak"]
  s.email       = 'kasia.k@nukomeet.com'
  s.files       = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.test_files  = s.files.grep(%r{^(test)/})
  s.executables << 'show_more'
  s.homepage    =
    'http://rubygems.org/gems/show_more'
  s.license       = 'MIT'
  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "minitest"
  s.add_development_dependency "rake", "~> 10.0"
end