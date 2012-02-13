#
# Cookbook Name:: shelby
# Recipe:: nos
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Recipe specific to the real Shelby servers (for now just staging)

require_recipe "shelby::rails"

# install rvm for the nos user with 1.9.2 as the default ruby
node['rvm']['user_installs'] = [
  { 'user'          => 'nos',
    'default_ruby'  => '1.9.2'
  }
]
require_recipe "rvm::user"