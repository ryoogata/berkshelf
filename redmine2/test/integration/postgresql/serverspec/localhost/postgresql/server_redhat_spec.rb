require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'postgresql::server_redhat' do
  context group('postgres') do
    it { should exist }
    it { should have_gid 26 }
  end

  context user('postgres') do
    it {
      should exist
      should have_uid 26
      should have_home_directory '/var/lib/pgsql'
      should have_login_shell '/bin/bash'
    }
  end

  context file('/var/lib/pgsql/data') do
    it {
      should be_directory
      should be_mode 700
      should be_owned_by 'postgres'
    }
  end

  context package('postgresql-server') do
    it { should be_installed }
  end

  context file('/etc/sysconfig/pgsql/postgresql') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

  context service('postgresql') do
    it { should be_enabled }
  end

end

