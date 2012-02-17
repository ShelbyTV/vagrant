#
# Cookbook Name:: shelby
# Recipe:: email
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Set up an email server to queue and send mail from the Shelby rails app server

# create the nos user
require_recipe "shelby::nos_user"

# install rvm for the nos user with 1.9.2 as the default ruby
node['rvm']['user_installs'] = [
  { 'user'          => 'nos',
    'default_ruby'  => '1.9.2'
  }
]
require_recipe "rvm::user"

require_recipe "shelby::memcached-pre"
require_recipe "shelby::postfix"