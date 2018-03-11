#
# Cookbook:: my_supermarket_wrapper
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

app = data_bag_item('apps', 'supermarket')

node.override['supermarket_omnibus']['chef_server_url'] = app['chef_server_url']
node.override['supermarket_omnibus']['chef_oauth2_app_id'] = app['chef_oauth2_app_id']
node.override['supermarket_omnibus']['chef_oauth2_secret'] = app['chef_oauth2_secret']
node.override['supermarket_omnibus']['config']['fqdn'] = '54.235.8.125'

include_recipe 'supermarket-omnibus-cookbook'
