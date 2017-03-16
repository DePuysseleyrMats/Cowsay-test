require 'spec_helper_acceptance'

describe 'init' do
  describe package('ntp') do
    it { is_expected.to be_installed }
  end
end
