require_relative 'lib/tic_tac_toe/version'

Gem::Specification.new do |spec|
  spec.name          = "tic_tac_toe"
  spec.version       = TicTacToe::VERSION
  spec.authors       = ["samira-sadat48"]
  spec.email         = ["samira.sadat48@gmail.com"]

  spec.summary       = "Tic-Tac-Toe"
  spec.homepage      = "https://github.com/samira-sadat48/tic_tac_toe"
  spec.license       = "MIT"

  spec.add_development_dependency "rspec"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake"
end
