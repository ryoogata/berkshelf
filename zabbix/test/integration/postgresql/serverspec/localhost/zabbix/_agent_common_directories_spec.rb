require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::_agent_common_directories' do
  context file('/etc/zabbix/agent_include') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

end

