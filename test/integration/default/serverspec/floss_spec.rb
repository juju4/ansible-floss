require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end


describe command('pip3 freeze') do
  its(:stdout) { should match /floss/ }
  its(:exit_status) { should eq 0 }
end

describe file('/usr/local/bin/floss.py') do
  it { should be_file }
  it { should be_mode 755 }
  its(:size) { should > 0 }
end

describe file('/usr/local/bin/floss') do
  it { should be_file }
  it { should be_mode 755 }
  its(:size) { should > 0 }
end
