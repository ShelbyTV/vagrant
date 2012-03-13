#
# Cookbook Name:: shelby
# Recipe:: email
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Set up an email server to queue and send mail from the Shelby rails app server

require_recipe "shelby::common"

# create the nos user
require_recipe "shelby::nos_user"

require_recipe "shelby::postfix"