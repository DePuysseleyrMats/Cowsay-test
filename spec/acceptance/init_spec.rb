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

  default_pp = <<-EOS
  class cowsaytest {
    package {'epel-release':
	    ensure   => installed,
    }
    package {'vim':
	    ensure   => installed,
 	    source => 'ftp://195.220.108.108/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/v/vim-8.0.586-1.fc27.src.rpm',
	    require => Package['epel-release'],
    }
  }
  include cowsaytest
  EOS

  describe 'cowsaytest' do
    it 'should apply without errors' do
      apply_manifest(default_pp, :catch_failures => true)
    end

  end

  describe package('vim') do
    it { is_expected.to be_installed }
  end



  describe package('wget') do
    it { is_expected.to be_installed }
  end
