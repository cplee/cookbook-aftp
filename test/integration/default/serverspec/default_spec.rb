require 'serverspec'

set :backend, :exec

describe package('jenkins') do
  it { should be_installed }
end

describe package('java-1.7.0-openjdk') do
  it { should be_installed }
end

# describe service('jenkins') do
#  it { should be_enabled }
#  it { should be_running }
# end

describe port(8080) do
  it { should be_listening }
end

describe command('curl http://localhost:8080/job/hello-world/config.xml') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/hello world/) }
end
