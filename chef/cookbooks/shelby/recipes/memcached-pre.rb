#
# Cookbook Name:: shelby
# Recipe:: memcached-pre
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Installs the prerequisites for the memcached gem

# libsasl2-dev and gettext required by memcached gem
package "libsasl2-dev" do
	action :install
end

package "gettext" do
	action :install
end