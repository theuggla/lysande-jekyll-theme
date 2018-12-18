# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "lysande-jekyll-theme"
  spec.version       = "0.0.1"
  spec.authors       = ["Molly Arhammar"]
  spec.email         = ["mollyarhammar@gmail.com"]

  spec.summary       = %q{A theme for showcasing projects of different categories, good for portfolio.}
  spec.homepage      = "https://github.com/theuggla/lysande-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(_layouts|_includes|_sass|_data|example|assets|LICENSE|README|feed|favicon)/i}) }

  spec.add_development_dependency "jekyll", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
