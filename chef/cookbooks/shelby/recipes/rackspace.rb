#
# Cookbook Name:: shelby
# Recipe:: rackspace
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Recipe specific to the real Shelby rails app servers (for now just staging)

require_recipe "shelby::common"

# create the nos user
node['shelby']['user_rubies'] = ['ruby-1.9.3']
require_recipe "shelby::nos_user"

require_recipe "shelby::rails"