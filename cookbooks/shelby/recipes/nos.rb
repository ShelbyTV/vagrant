#
# Cookbook Name:: shelby
# Recipe:: nos
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Recipe specific to the real Shelby servers (for now just staging)

# install rvm for the nos user with 1.9.2 as the default ruby
node['rvm']['user_installs'] = [
  { 'user'          => 'nos',
    'default_ruby'  => '1.9.2'
  }
]
require_recipe "rvm::user"

# install passenger and configure for nginx
node['rvm_passenger']['rvm_ruby'] = "#{node['rvm']['default_rvm']}"
require_recipe "rvm_passenger::nginx"

require_recipe "shelby::rails"