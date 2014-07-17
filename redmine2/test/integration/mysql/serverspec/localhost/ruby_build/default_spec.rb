require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'ruby_build::default' do
  context package('tar') do
    it { should be_installed }
  end

  context package('bash') do
    it { should be_installed }
  end

  context package('curl') do
    it { should be_installed }
  end

  context package('git') do
    it { should be_installed }
  end

end

