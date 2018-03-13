#
# Cookbook:: my_supermarket_wrapper
# Recipe:: run-notifier
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'run-notifier'

app = data_bag_item('apps', 'supermarket')

node.override['run_notifier']['slack']['enabled'] = true
node.override['run_notifier']['slack']['webhook_url'] = app['slack_api_webhook']
node.override['run_notifier']['slack']['channel'] = '#random'
node.override['run_notifier']['slack']['channel'] = 'ankitbhalla01'
