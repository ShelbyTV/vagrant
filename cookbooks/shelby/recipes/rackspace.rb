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

require_recipe "shelby::rails"