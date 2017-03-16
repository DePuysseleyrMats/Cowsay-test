require 'spec_helper_acceptance'

describe 'apache class' do
  case fact('osfamily')
  when 'RedHat'
    package_name = 'ntp'
    service_name = 'ntp'
  when 'Debian'
    package_name = 'ntp'
    service_name = 'ntp'
  when 'FreeBSD'
    package_name = 'ntp'
    service_name = 'ntp'
  when 'Gentoo'
    package_name = 'ntp'
    service_name = 'ntp'
  end
end
