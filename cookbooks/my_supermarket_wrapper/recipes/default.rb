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


#node.override['chef_client']['handler']['slack']['team'] = 'devops-teamx.slack.com'
#node.override['chef_client']['handler']['slack']['api_key'] = app['slack_api_webhook']
#node.override['chef_client']['handler']['slack']['channel'] = '#devops'

#node.override['chef_client']['handler']['slack']['username'] = 'ankitbhalla01'

#node.override['chef_client']['handler']['slack']['webhooks']['name'].push('incoming-webhook')
#node.override['chef_client']['handler']['slack']['webhooks']['incoming-webhook']['url'] = app['slack_api_webhook']
#node.override['chef_client']['handler']['slack']['webhooks']['incoming-webhook']['fail_only'] = false

#chef_gem "chef-handler-slack" do
#  action :upgrade
#end

#require 'chef/handler/slack'

#chef_handler "Chef::Handler::SlackReporting" do
#  source "chef/handler/slack"
#  arguments [
    # The name of your team registered with Slack
#    :team => node["slack-handler"]["team"],

    # Your incoming webhook token
#    :token => node["slack-handler"]["token"],

    # An existing channel
 #   :channel => node["slack-handler"]["channel"],

    # Watever.
#    :icon_emoj => node["slack-handler"]["icon_emoj"],
#  ]
#  action :nothing
#end.run_action(:enable)



include_recipe 'supermarket-omnibus-cookbook'
#include_recipe 'slack_handler'
