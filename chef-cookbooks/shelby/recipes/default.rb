#
# Cookbook Name:: shelby
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# run apt-get update if necessary
require_recipe "apt"

# install additional packages required by the shelby rails app
package "libcurl4-gnutls-dev" do
	action :install
end

# invoke recipes to install all necessary components
require_recipe "git"
require_recipe "redis"
require_recipe "memcached"
require_recipe "mongodb::10gen_repo"
require_recipe "mongodb"
# install rvm for the vagrant user with 1.9.2 as the default ruby
node['rvm']['user_installs'] = [
  { 'user'          => 'vagrant',
    'default_ruby'  => '1.9.2'
  }
]

require_recipe "rvm::user"
require_recipe "rvm::vagrant"