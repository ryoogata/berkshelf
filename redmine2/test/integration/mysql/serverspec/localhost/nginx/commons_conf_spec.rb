require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'nginx::commons_conf' do
  context file('/etc/nginx/nginx.conf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

  context file('/etc/nginx/sites-available/default') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

end

