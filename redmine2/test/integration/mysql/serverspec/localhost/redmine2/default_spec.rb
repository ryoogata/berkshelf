require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'redmine2::default' do
  context user('redmine') do
    it {
      should exist
      should have_home_directory '/home/redmine'
      should have_login_shell '/bin/bash'
    }
  end

  context file('/home/redmine') do
    it {
      should be_directory
      should be_mode 755
      should be_owned_by 'redmine'
    }
  end

  context file('/home/redmine/redmine') do
    it {
      should be_linked_to '/home/redmine/redmine-2.5.1'
    }
  end

  context file('/home/redmine/redmine-2.5.1/config/database.yml') do
    it {
      should be_file
      should be_mode 664
      should be_owned_by 'redmine'
      should contain 'localhost'
    }
  end

  context file('/home/redmine/redmine-2.5.1/config/configuration.yml') do
    it {
      should be_file
      should be_mode 664
      should be_owned_by 'redmine'
    }
  end

  context file('/home/redmine/redmine-2.5.1/Gemfile.local') do
    it {
      should be_file
      should be_mode 664
      should be_owned_by 'redmine'
    }
  end

  context file('/etc/nginx/sites-available/redmine') do
    it {
      should be_file
      should be_mode 777
      should be_owned_by 'nginx'
      should contain '/home/redmine/redmine'
      should contain 'localhost'
    }
  end

end

