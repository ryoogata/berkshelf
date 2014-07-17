require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix::agent_prebuild' do
  context package('redhat-lsb') do
    it { should be_installed }
  end

end

