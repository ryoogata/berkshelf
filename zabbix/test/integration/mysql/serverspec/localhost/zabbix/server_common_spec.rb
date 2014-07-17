require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::server_common' do
  context user('zabbix') do
    it {
      should exist
    }
  end

  context file('/opt/zabbix/externalscripts') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'zabbix'
    }
  end

  context file('/opt/zabbix/server_include') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'zabbix'
    }
  end

  context file('/opt/zabbix/AlertScriptsPath') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'zabbix'
    }
  end

end

