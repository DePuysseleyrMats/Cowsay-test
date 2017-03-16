require 'spec_helper_acceptance'

describe 'init' do
  it 'should apply without errors' do
    apply_manifest(manifest, :catch_failures => true)
  end
end
