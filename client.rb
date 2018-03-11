#
# Example Chef Client Config File
#
# We recommend using Opscode's chef cookbook for managing chef itself,
# instead of using this file. It is provided as an example.

log_level        :info
log_location     STDOUT
chef_server_url  'https://chef.k8s.internal/organizations/my_org'
validation_client_name  "my_org-validator"
validation_key '/etc/chef/my_org-validator.pem'
ssl_verify_mode :verify_none
