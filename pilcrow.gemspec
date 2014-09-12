$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'pilcrow/version'  

Gem::Specification.new do |s|
  s.name     = "pilcrow"
  s.version  = ::Pilcrow::VERSION
  s.authors  = ["Cameron Dutro"]
  s.email    = ["camertron@gmail.com"]
  s.homepage = "http://github.com/camertron"

  s.description = s.summary = "Automatically inserts pilcrow characters between words in text from STDIN. Uses ICU4J."

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true

  s.require_path = 'lib'
  s.files = Dir["{lib,spec,vendor}/**/*", "Gemfile", "History.txt", "README.md", "Rakefile", "pilcrow.gemspec"]
  s.executables << 'pilcrow'
end
