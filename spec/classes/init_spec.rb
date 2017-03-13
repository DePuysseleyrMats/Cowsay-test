require 'spec_helper'
describe 'init' do
	 it { should contain_class('cowsay') }
	  it { should contain_class('fortune') }
end

