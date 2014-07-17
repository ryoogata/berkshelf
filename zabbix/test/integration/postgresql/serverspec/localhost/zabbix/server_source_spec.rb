require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::server_source' do
  context package('fping') do
    it { should be_installed }
  end

  context package('iksemel-devel') do
    it { should be_installed }
  end

  context package('iksemel-utils') do
    it { should be_installed }
  end

  context package('net-snmp-libs') do
    it { should be_installed }
  end

  context package('net-snmp-devel') do
    it { should be_installed }
  end

  context package('openssl-devel') do
    it { should be_installed }
  end

  context package('redhat-lsb') do
    it { should be_installed }
  end

  context package('php-pear') do
    it { should be_installed }
  end

  context package('libcurl-devel') do
    it { should be_installed }
  end

  context package('php-mysql') do
    it { should be_installed }
  end

  context package('php-gd') do
    it { should be_installed }
  end

  context package('php-bcmath') do
    it { should be_installed }
  end

  context package('php-mbstring') do
    it { should be_installed }
  end

  context package('php-xml') do
    it { should be_installed }
  end

  context file('/etc/init.d/zabbix_server') do
    it {
      should be_file
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/etc/zabbix/zabbix_server.conf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

  context service('zabbix_server') do
    it { should be_enabled }
  end

end

