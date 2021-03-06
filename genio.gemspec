#
#   Copyright 2013 PayPal Inc.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
#
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genio/version'

Gem::Specification.new do |spec|
  spec.name          = "genio"
  spec.version       = Genio::VERSION
  spec.authors       = ["PayPal"]
  spec.email         = ["DL-PP-Platform-Ruby-SDK@ebay.com"]

  spec.summary       = %q{Genio is an extensible tool that can generate code to consume APIs in multiple programming languages based on API specification formats: JSON-Schema/WSDL/WADL}
  spec.description   = %q{Genio is an extensible tool that can generate code to consume APIs in multiple programming languages based on API specification formats: JSON-Schema/WSDL/WADL}
  spec.homepage      = "https://github.com/paypal/genio"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = Dir["{lib,templates,bin}/**/*"] + [ "README.md", "LICENSE.txt" ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "genio-parser", "~> 1.0"
  spec.add_dependency "activesupport"
  spec.add_dependency "tilt"
  spec.add_dependency "erubis"
  spec.add_dependency "thor"
  # spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
