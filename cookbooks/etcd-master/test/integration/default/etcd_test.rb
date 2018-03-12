# # encoding: utf-8

# Inspec test for recipe etcd-master::etcd

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('etcd'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(2380), :skip do
  it { should_not be_listening }
end

describe service('etcd') do
  let(:pre_command) { 'source ~/.bashrc' }
  it { should be_running }
end
