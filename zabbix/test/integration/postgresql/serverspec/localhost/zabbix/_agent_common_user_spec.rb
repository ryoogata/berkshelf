require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::_agent_common_user' do
  context group('zabbix') do
    it { should exist }
  end

  context user('zabbix') do
    it {
      should exist
    }
  end

end

