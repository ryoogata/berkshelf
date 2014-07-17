require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'build-essential::_rhel' do
  context package('autoconf') do
    it { should be_installed }
  end

  context package('bison') do
    it { should be_installed }
  end

  context package('flex') do
    it { should be_installed }
  end

  context package('gcc') do
    it { should be_installed }
  end

  context package('gcc-c++') do
    it { should be_installed }
  end

  context package('kernel-devel') do
    it { should be_installed }
  end

  context package('make') do
    it { should be_installed }
  end

  context package('m4') do
    it { should be_installed }
  end

  context package('patch') do
    it { should be_installed }
  end

end

