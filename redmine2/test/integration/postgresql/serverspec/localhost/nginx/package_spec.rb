require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'nginx::package' do
  context package('nginx') do
    it { should be_installed }
  end

  context service('nginx') do
    it { should be_enabled }
  end

end

