require 'spec_helper_acceptance'

describe 'init' do
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
  when 'Ubuntu'
    package_name = 'ntp'
    service_name = 'ntp'
  end
end
