#
# Cookbook Name:: shelby
# Recipe:: vagrant
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# These are items specific to the Shelby vagrant box

require_recipe "shelby::common"

# install rvm for the vagrant user
node['rvm']['user_installs'] = [
  { 'user'          => 'vagrant',
    'default_ruby'  => node['shelby']['user_default_ruby'],
    'rubies'        => node['shelby']['user_rubies']
  }
]
require_recipe "rvm::user"

require_recipe "shelby::rails"
require_recipe "shelby::postfix"

# we need NFS for better-performing Vagrant shared folders
package "nfs-common" do
  action :install
end

# delete the persistent interfaces file to avoid host-only networking
# problems when re-packaging the box
file "/etc/udev/rules.d/70-persistent-net.rules" do
  action :delete
  ignore_failure true
end