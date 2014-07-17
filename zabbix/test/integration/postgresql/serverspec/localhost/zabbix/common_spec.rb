require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::common' do
  context file('/etc/zabbix') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/var/log/zabbix') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'zabbix'
    }
  end

  context file('/var/run/zabbix') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'zabbix'
    }
  end

end

