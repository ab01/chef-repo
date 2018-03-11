# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "admin"
client_key               "#{current_dir}/admin.pem"
chef_server_url          "https://chef.k8s.internal/organizations/my_org"
cookbook_path            ["#{current_dir}/../cookbooks"]
ssl_verify_mode          :verify_none
knife[:supermarket_site] = 'https://supermarket.k8s.internal'
