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

# need QT for capybara-webkit
package "libqt4-dev" do
  action :install
end

package "libqtwebkit-dev" do
  action :install
end

# need xvfb for headless gem which allows us to run webkit headless
package "xvfb" do
  action :install
end

# need jackd1 for qt or capybara-webkit or something (complains without it)
package "jackd1" do
  action :install
end

# need imagemagick for capybara-webkit to take screenshots within headless
# browser for debugging
package "imagemagick" do
  action :install
end

require_recipe "shelby::memcached-pre"

# invoke recipes to install all necessary components
require_recipe "memcached"
require_recipe "git"
require_recipe "mongodb::10gen_repo"
require_recipe "mongodb"