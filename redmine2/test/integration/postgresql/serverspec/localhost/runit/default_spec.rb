require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'runit::default' do
  context package('rpm-build') do
    it { should be_installed }
  end

  context package('rpmdevtools') do
    it { should be_installed }
  end

  context package('tar') do
    it { should be_installed }
  end

  context package('gzip') do
    it { should be_installed }
  end

  context package('glibc-static') do
    it { should be_installed }
  end

  context file('/tmp/kitchen/cache/runit-2.1.1.tar.gz') do
    it {
      should be_file
    }
  end

end

