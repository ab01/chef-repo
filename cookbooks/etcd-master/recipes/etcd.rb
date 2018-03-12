#
# Cookbook:: etcd-master
# Recipe:: etcd
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "users"

remote_install 'bash' do
  source "https://github.com/coreos/etcd/releases/download/v3.2.11/etcd-v3.2.11-linux-amd64.tar.gz"
  tar zxvf etcd-v3.2.11-linux-amd64.tar.gz
  cd etcd-v3.2.11-linux-amd64
  mv etcd  etcdctl /usr/bin/
end

directory '/etc/kubernetes/ssl' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

users_manage "etcd" do
 group_id 50
 action [ :remove, :create ]
end


directory '/opt/etcd' do
  owner 'etcd'
  group 'etcd'
  mode '0755'
  action :create
end
