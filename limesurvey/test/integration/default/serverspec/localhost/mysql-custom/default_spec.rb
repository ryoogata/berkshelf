require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'mysql-custom::default' do
  context file('/etc/mysql/conf.d/encoding.cnf') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

end

