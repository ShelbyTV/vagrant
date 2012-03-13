#
# Cookbook Name:: shelby
# Recipe:: rails
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# These are items for any box that will run the shelby rails app

# install additional packages required by the shelby rails app
package "libcurl4-gnutls-dev" do
	action :install
end

require_recipe "shelby::memcached-pre"

# invoke recipes to install all necessary components
require_recipe "git"
require_recipe "redis::server"
require_recipe "memcached"
require_recipe "mongodb::10gen_repo"
require_recipe "mongodb"