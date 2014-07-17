require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'nginx::ohai_plugin' do
  context file('/etc/chef/ohai_plugins/nginx.rb') do
    it {
      should be_file
      should be_mode 755
      should be_owned_by 'root'
    }
  end

end

