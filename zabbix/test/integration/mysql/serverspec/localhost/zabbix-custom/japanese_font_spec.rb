require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'zabbix-custom::japanese_font' do
  context package('ipa-gothic-fonts') do
    it { should be_installed }
  end

end

