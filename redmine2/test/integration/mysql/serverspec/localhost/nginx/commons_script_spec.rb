require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'nginx::commons_script' do
  context file('/usr/sbin/nxensite') do
    it {
      should be_file
      should be_mode 755
      should be_owned_by 'root'
    }
  end

  context file('/usr/sbin/nxdissite') do
    it {
      should be_file
      should be_mode 755
      should be_owned_by 'root'
    }
  end

end

