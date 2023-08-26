# frozen_string_literal: true

require_relative 'lib/almost_standard/version'

Gem::Specification.new do |spec|
  spec.name = 'almost_standard'
  spec.version = AlmostStandard::VERSION
  spec.authors = ['Kristina Spurgin']
  spec.email = ['kristina.spurgin@lyrasis.org']

  spec.summary = 'Inheritable linting configuration gem'
  spec.description = 'Standardrb-through-rubocop configuration for use '\
                     'across other projects'
  spec.homepage = 'https://github.com/kspurgin/almost_standard'
  spec.license = 'MIT'
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata['allowed_push_host'] =
    "TODO: Set to your gem server 'https://example.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] =
    "https://github.com/kspurgin/almost_standard/blob/main/CHANGELOG.adoc"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  #   into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) ||
        f.match(
          %r{\A(?:(?:bin|test|spec|features)/|
             \.(?:git|travis|circleci)|appveyor)}x
        )
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'bundler'
  spec.add_dependency 'rubocop'
  spec.add_dependency 'rubocop-rspec'
  spec.add_dependency 'standard'
end
