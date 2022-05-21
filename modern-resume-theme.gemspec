lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "modern-resume-theme/version"

Gem::Specification.new do |spec|
  spec.name          = "modern-resume-theme"
  spec.version       = ModernResumeTheme::VERSION
  spec.authors       = ["Jiyang Lee"]
  spec.email         = ["jiyang.lee91@gmail.com"]

  spec.summary       = "A modern simple static resume template and theme. Powered by Jekyll and GitHub pages."
  spec.homepage      = "https://github.com/jiyang91/modern-resume-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency 'github-pages', '~> 209'
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "html-proofer", "~> 3.9"
end
