require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'munin::client' do
  context package('munin-node') do
    it { should be_installed }
  end

  context file('/etc/munin/munin-node.conf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

  context service('munin-node') do
    it { should be_enabled }
  end

end

