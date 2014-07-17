require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'rbenv::user_install' do

  context file('/etc/profile.d/rbenv.sh') do
    it {
      should be_file
      should be_mode 755
      should be_owned_by 'root'
    }
  end

end

