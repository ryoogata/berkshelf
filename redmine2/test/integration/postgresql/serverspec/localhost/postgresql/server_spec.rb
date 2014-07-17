require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'postgresql::server' do
  context file('/var/lib/pgsql/data/postgresql.conf') do
    it {
      should be_file
      should be_mode 600
      should be_owned_by 'postgres'
    }
  end

  context file('/var/lib/pgsql/data/pg_hba.conf') do
    it {
      should be_file
      should be_mode 600
      should be_owned_by 'postgres'
    }
  end

end

