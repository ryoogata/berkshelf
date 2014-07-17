require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'postgresql::client' do
  context package('postgresql-devel') do
    it { should be_installed }
  end

end

