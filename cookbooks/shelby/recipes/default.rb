#
# Cookbook Name:: shelby
# Recipe:: default
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#

# Since we mostly use Chef for vagrant, the default recipe just calls the vagrant recipe
require_recipe "shelby::vagrant"