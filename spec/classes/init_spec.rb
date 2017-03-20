require 'spec_helper'
describe 'Cowsay-test' do
    it { should contain_class('Cowsay-test') }
    it { is_expected.to compile }
    it { is_expected.to have_resource_count(1) }
    it { is_expected.to contain_package('ntp') }
  end
