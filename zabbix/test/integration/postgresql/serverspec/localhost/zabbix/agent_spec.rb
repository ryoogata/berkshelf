require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::agent' do
  context file('/etc/zabbix/zabbix_agentd.conf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

end

