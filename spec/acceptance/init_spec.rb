require 'spec_helper_acceptance'

describe 'init' do
  pp = <<-EOS
    class { 'init': }
  EOS

  apply_manifest(pp, :catch_failures => true)
  expect(apply_manifest(pp, :catch_failures => true).exit_code).to be_zero

  describe package('ntp') do
    it { is_expected.to be_installed }
  end
end
