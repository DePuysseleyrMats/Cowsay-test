require 'spec_helper_acceptance'

describe 'init' do
  describe 'init' do
  let(:manifest) {
    <<-EOS
      include init
    EOS
  }
  it 'should apply without errors' do
    apply_manifest(manifest, :catch_failures => true)
end
end

  describe package('ntp') do
    it { is_expected.to be_installed }
  end
end
