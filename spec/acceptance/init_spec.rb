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
  apply_manifest_opts = {
  :catch_failures => true,
  # I seem to need this otherwise Puppet doesn't pick up the required modules. 
  :modulepath     => '/etc/puppetlabs/puppet/modules/',
  :debug          => true,
  }

  describe 'the mymodule class' do
  describe 'given default params' do
    it 'should return successfully' do
      expect(apply_manifest('../../manifests/init.pp', apply_manifest_opts).exit_code).to be_zero
    end
  end
  end


  describe package('wget') do
    it { is_expected.to be_installed }
  end
