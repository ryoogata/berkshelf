require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'networking_basic::default' do
  context package('lsof') do
    it { should be_installed }
  end

  context package('iptables') do
    it { should be_installed }
  end

  context package('jwhois') do
    it { should be_installed }
  end

  context package('curl') do
    it { should be_installed }
  end

  context package('wget') do
    it { should be_installed }
  end

  context package('rsync') do
    it { should be_installed }
  end

  context package('nmap') do
    it { should be_installed }
  end

  context package('traceroute') do
    it { should be_installed }
  end

  context package('ethtool') do
    it { should be_installed }
  end

  context package('iproute') do
    it { should be_installed }
  end

  context package('iputils') do
    it { should be_installed }
  end

  context package('nc') do
    it { should be_installed }
  end

  context package('tcputils') do
    it { should be_installed }
  end

  context package('tcpdump') do
    it { should be_installed }
  end

  context package('elinks') do
    it { should be_installed }
  end

  context package('lynx') do
    it { should be_installed }
  end

end

