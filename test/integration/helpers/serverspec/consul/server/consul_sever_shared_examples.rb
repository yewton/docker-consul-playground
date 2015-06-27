require 'spec_helper.rb'

shared_examples "consul server" do
  describe command('/opt/consul/bin/consul members') do
    (1..3).each do |i|
      its(:stdout) { should contain "consul-server-0#{i}" }
    end
  end
end
