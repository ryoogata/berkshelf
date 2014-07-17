require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'munin::server_apache' do
  context file('/etc/httpd/sites-available/munin.conf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

end

