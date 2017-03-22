require 'spec_helper'
describe 'cowsaytest::cowsaytest' do
    it { should contain_class('cowsaytest') }
    it { is_expected.to compile }
    it { is_expected.to have_resource_count(1) }
    ## it { is_expected.to contain_package('vim') }
  end
