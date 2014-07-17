require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::_agent_common_service' do
  context file('/etc/init.d/zabbix_agentd') do
    it {
      should be_file
      should be_mode 754
      should be_owned_by 'root'
    }
  end

end

