# frozen_string_literal: true

require_relative "lib/activeadmin/tiny_improvements/version"

Gem::Specification.new do |spec|
  spec.name             = "activeadmin_tiny_improvements"
  spec.version          = Activeadmin::TinyImprovements::VERSION
  spec.authors          = ["Sergey Pedan"]
  spec.email            = ["sergey.pedan@gmail.com"]
  spec.license          =  "MIT"

  spec.summary          =  "A collection of small visual improvements to classic ActiveAdmin theme"
  spec.description      = <<~HEREDOC
                            #{spec.summary}. This gem provides Sass files that you can include via Sprockets.
                          HEREDOC

  spec.homepage         =  "https://github.com/sergeypedan/#{spec.name.gsub('_', '-')}"
  spec.extra_rdoc_files = ["README.md", "CHANGELOG.md"]
  spec.rdoc_options     = ["--charset=UTF-8"]
  spec.metadata         = { "changelog_uri"     => "#{spec.homepage}/blob/master/CHANGELOG.md",
                            "documentation_uri" => "https://www.rubydoc.info/gems/#{spec.name}",
                            "homepage_uri"      => spec.homepage,
                            "source_code_uri"   => spec.homepage }

  spec.require_paths    = ["app", "lib"]

  spec.bindir           = "exe"
  spec.executables      = []
  spec.files            = Dir.chdir(File.expand_path(__dir__)) do
                            `git ls-files`.split("\n")
                              .reject { |f| %w[bin spec test].any? { |dir| f.start_with? dir } }
                              .reject { |f| f.start_with? "." }
                          end

  spec.add_runtime_dependency "railties", ">= 4"

  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "sassc", "~> 2", ">= 2.0.0"
  spec.add_development_dependency "term-ansicolor", "~> 1"
end
