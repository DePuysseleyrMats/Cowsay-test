require 'spec_helper'
describe 'init' do
    it { should contain_class('init') }
    it { is_expected.to compile }
    it { is_expected.to have_resource_count(1) }
    it { is_expected.to contain_package('ntp') }
  end
