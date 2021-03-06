# frozen_string_literal: true

require_relative "lib/typeking/version"

Gem::Specification.new do |spec|
  spec.name          = "typeking"
  spec.version       = Typeking::VERSION
  spec.authors       = ["AnthonyALu"]
  spec.email         = ["anthony.lu1115@gmail.com"]

  spec.summary       = "A gem to test your typing skills."
  spec.homepage      = "https://github.com/AnthonyALu/typeking"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "colorize", "~> 0.8.1"
  spec.add_dependency "artii", "~> 2.1.2"
  spec.add_dependency "tty-prompt", "~> 0.23.1"
  spec.add_dependency "random-word", "~> 2.1.1"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
