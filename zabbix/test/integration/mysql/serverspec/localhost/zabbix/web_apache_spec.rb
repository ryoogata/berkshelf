require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::web_apache' do
  context file('/opt/zabbix') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'zabbix'
    }
  end

  context user('apache') do
    it {
      should exist
    }
  end

  context package('php') do
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

  context file('/etc/httpd/sites-available/localhost.conf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
      should contain 'localhost'
    }
  end

end

