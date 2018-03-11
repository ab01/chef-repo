#
# Cookbook:: my_supermarket_wrapper
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

app = data_bag_item('apps', 'supermarket')

node.override['supermarket_omnibus']['chef_server_url'] = app['chef_server_url']
node.override['supermarket_omnibus']['chef_oauth2_app_id'] = app['chef_oauth2_app_id']
node.override['supermarket_omnibus']['chef_oauth2_secret'] = app['chef_oauth2_secret']
node.override['supermarket_omnibus']['config']['fqdn'] = 'supermarket.k8s.internal'
node.override['supermarket_omnibus']['chef_oauth2_verify_ssl'] = false

node.override['chef_client']['handler']['slack']['username'] = 'ankitbhalla01'

node.override['chef_client']['handler']['slack']['webhooks']['foo']['url'] = app['slack_api_webhook']
node.override['chef_client']['handler']['slack']['webhooks']['foo']['fail_only'] = false

include_recipe 'supermarket-omnibus-cookbook'
include_recipe 'slack_handler'
