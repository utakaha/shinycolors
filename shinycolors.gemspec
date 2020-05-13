# frozen_string_literal: true

require_relative 'lib/shinycolors/version'

Gem::Specification.new do |spec|
  spec.name          = 'shinycolors'
  spec.version       = ShinyColors::VERSION
  spec.authors       = ['iavivai']
  spec.email         = ['18yukitaka@gmail.com']
  spec.summary       = 'Rubyでシャニマスを扱えるようにするgem'
  spec.description   = <<~DESC
    shinycolorsは「アイドルマスター シャイニーカラーズ」の情報をRubyで扱えるようにするためのgemです。
  DESC
  spec.homepage      = 'https://github.com/iavivai/shinycolors'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'source_code_uri' => 'https://github.com/iavivai/shinycolors'
  }

  spec.files         = Dir['lib/**/*']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
