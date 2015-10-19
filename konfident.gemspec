Gem::Specification.new do |s|
  s.name        = 'konfident'
  s.version     = '0.0.0'
  s.date        = '2015-10-19'
  s.summary     = "Konfident"
  s.description = "A simple gem to check git conventions"
  s.authors     = ["Kasia Kasprzak"]
  s.email       = 'kasia.kasprzak18@gmail.com'
  s.files       = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.executables << 'konfident'
  s.homepage    =
    'http://rubygems.org/gems/konfident'
  s.license       = 'MIT'
end