require 'spec_helper'
describe 'cowsay' do
    it { should contain_class('cowsay') }
    it { is_expected.to compile }
    it { is_expected.to have_resource_count(1) }
    it { is_expected.to contain_package('cowsay') }
  end
