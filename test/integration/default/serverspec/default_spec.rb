require 'serverspec'

describe package('httpd')do
  it { should be_installed }
end

describe service('httpd-default') do
  it {should be_enabled}
  it {should be_running}
end

describe port(80) do
  it {should be_listening}
end

describe command('curl http://localhost') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /Automation for the People/ }
end