#
# Cookbook Name:: shelby
# Recipe:: nos_user
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Recipe to create the nos user

# we need ruby-shadow in order to create a user using a hashed password
package "libshadow-ruby1.8" do
	action :install
end

user "nos" do
  home "/home/nos"
  shell "/bin/bash"
  password "$6$pu6KsMcI07I7$EqHrdyiY/TNrimT1Vhw/tDU5ElAQpUgWJ5GCXl9tz9xFPgil3jGnCVHuTgfDUnSU7O0ozeIhilGsLoaRpjwhm/"
  supports :manage_home => true
end

# add the nos user to the sudo group
group "sudo" do
  action :modify
  append true
  members ['nos']
end

# install rvm for the nos user
node['rvm']['user_installs'] = [
  { 'user'          => 'nos',
    'default_ruby'  => node['shelby']['user_default_ruby']
    'rubies'        => node['shelby']['user_rubies']
  }
]
require_recipe "rvm::user"