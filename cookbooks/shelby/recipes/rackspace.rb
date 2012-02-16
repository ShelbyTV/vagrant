#
# Cookbook Name:: shelby
# Recipe:: rackspace
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Recipe specific to the real Shelby rails app servers (for now just staging)

# create the nos user
require_recipe "shelby::nos_user"

# install rvm for the nos user with 1.9.2 as the default ruby
node['rvm']['user_installs'] = [
  { 'user'          => 'nos',
    'default_ruby'  => '1.9.2'
  }
]
require_recipe "rvm::user"

require_recipe "shelby::rails"