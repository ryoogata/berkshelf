require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'nginx::commons_dir' do
  context file('/etc/nginx') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/var/log/nginx') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'nginx'
    }
  end

  context file('/var/run') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/etc/nginx/sites-available') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/etc/nginx/sites-enabled') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/etc/nginx/conf.d') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

end

