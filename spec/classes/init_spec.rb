require 'spec_helper'
describe 'cowsay' do
	  it { is_expected.to have_resource_count(1) }
	  it { is_expected.to have_resource_count(100) }
end

