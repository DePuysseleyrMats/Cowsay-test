require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet'
require 'rspec-puppet/spec_helper'
require 'yaml'
require 'psych'

RSpec.configure do |c|
  c.module_path = './manifests'
  c.manifest_dir = './manifests'

end
