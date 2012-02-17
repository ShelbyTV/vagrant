#
# Cookbook Name:: shelby
# Recipe:: postfix
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Set up postfix with the propert configuration for Shelby

# configure and install postfix to relay to sendgrid
node[:postfix][:smtp_sasl_auth_enable] = "yes"
node[:postfix][:smtp_sasl_security_options] = "noanonymous"
node[:postfix][:smtp_use_tls]  = "no"
node[:postfix][:header_size_limit] = 4096000
node[:postfix][:relayhost]  = "[smtp.sendgrid.net]:25"
node[:postfix][:mydomain]   = "shelby.tv"

require_recipe "postfix"

node[:postfix][:smtp_sasl_user_name] = "smtp_login@shelby.tv"
node[:postfix][:smtp_sasl_passwd]    = "$h3lby"

require_recipe "postfix::sasl_auth"