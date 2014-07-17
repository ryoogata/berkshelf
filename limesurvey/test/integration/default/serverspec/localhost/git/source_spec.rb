require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'git::source' do
  context package('expat-devel') do
    it { should be_installed }
  end

  context package('gettext-devel') do
    it { should be_installed }
  end

  context package('libcurl-devel') do
    it { should be_installed }
  end

  context package('openssl-devel') do
    it { should be_installed }
  end

  context package('perl-ExtUtils-MakeMaker') do
    it { should be_installed }
  end

  context package('zlib-devel') do
    it { should be_installed }
  end

end

