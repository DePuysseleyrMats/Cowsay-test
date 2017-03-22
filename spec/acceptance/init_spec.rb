require 'spec_helper_acceptance'

# describe 'cowsaytest' do
#  let(:manifest) {
#    <<-EOS
#      include cowsaytest
#    EOS
#  }
#  it 'should apply without errors' do
#    apply_manifest(manifest, :catch_failures => true)
#end

  describe package('wget') do
    it { is_expected.to be_installed }
  end
