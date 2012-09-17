# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'console-text-formatter/version'

Gem::Specification.new do |s|
  s.name        = "console-text-formatter"
  s.version     = ConsoleTextFormatter::VERSION
  s.authors     = ["cjfinc"]
  s.email       = ["cjf.inc@gmail.com"]
  s.homepage    = "https://github.com/cjfinc/console-text-formatter"
  s.summary     = %q{Simple console text formatter for ruby}
  s.description = %q{Simple console text formatter for ruby, with ability to print data hash to console}

  s.files         = `git ls-files`.split("\n")
  s.require_paths = %w(lib)
end