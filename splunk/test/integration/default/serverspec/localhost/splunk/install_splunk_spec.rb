require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'splunk::install_splunk' do
  context file('/tmp/splunk.rpm') do
    it {
      should be_file
      should be_mode 644
      should be_owned_by 'root'
    }
  end

  context package('splunk') do
    it { should be_installed }
  end

  context service('splunk') do
    it { should be_enabled }
  end

end

