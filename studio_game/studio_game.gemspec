Gem::Specification.new do |s|
  s.name         = "studio_game_nikita"
  s.version      = "1.0"
  s.author       = "Nikita K"
  s.email        = "***@gmail.com"
  s.homepage     = ""
  s.summary      = "A text based random hitter game with multiple players."
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.licenses     = ['MIT']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game.rb' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec', '~> 2.8', '>= 2.8.0'
end