require 'spec_helper_acceptance'

describe 'Cowsay-test' do
  let(:manifest) {
    <<-EOS
      include ::Cowsay-test
    EOS
  }
  it 'should apply without errors' do
    apply_manifest(manifest, :catch_failures => true)
end

  describe package('ntp') do
    it { is_expected.to be_installed }
  end
end
