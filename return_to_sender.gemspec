# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'return_to_sender/version'

Gem::Specification.new do |spec|
  spec.name          = "return_to_sender"
  spec.version       = ReturnToSender::VERSION
  spec.authors       = ["Arild Shirazi"]
  spec.email         = ["as4@eshirazi.com"]

  spec.summary       = %q{Email Address Validation Made Simple}
  spec.description   = %q{Why yet another email validator (YAEV)? Well, this one
does not depend on incomplete regular expressions to do the job (see the blog
post). It also tries to go beyond simple validation and provides some nice
Google-style "did you mean?" functionality. I hope you find it useful.}.gsub "\n", ' '
  spec.homepage      = "https://github.com/ashirazi/return_to_sender"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
