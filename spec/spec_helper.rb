require '/rspec-puppet'
require '/rspec-puppet/spec_helper'


RSpec.configure do |c|
  c.module_path = './manifests'
  c.manifest_dir = './manifests'

end
