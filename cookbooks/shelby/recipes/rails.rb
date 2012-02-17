#
# Cookbook Name:: shelby
# Recipe:: rails
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# These are items for any box that will run the shelby rails app

require_recipe "shelby::common"

# install additional packages required by the shelby rails app
package "libcurl4-gnutls-dev" do
	action :install
end

# libsasl2-dev and gettext required by memcached gem
package "libsasl2-dev" do
	action :install
end

package "gettext" do
	action :install
end

# invoke recipes to install all necessary components
require_recipe "git"
require_recipe "redis::server"
require_recipe "memcached"
require_recipe "mongodb::10gen_repo"
require_recipe "mongodb"