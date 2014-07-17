require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'nginx::default' do
  context service('nginx') do
    it { should be_running }
  end

end

