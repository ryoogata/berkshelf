require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'munin::server' do
  context package('munin') do
    it { should be_installed }
  end

  context file('/etc/cron.d/munin') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

  context file('/etc/munin/munin.conf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

  context file('/etc/munin/munin-conf.d') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/etc/munin/htpasswd.users') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'munin'
    }
  end

  context file('/var/www/html/munin') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'munin'
    }
  end

end

