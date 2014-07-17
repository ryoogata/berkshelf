require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'limesurvey::default' do
  context package('php-mbstring') do
    it { should be_installed }
  end

  context package('php-imap') do
    it { should be_installed }
  end

end

