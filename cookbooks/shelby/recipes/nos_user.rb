#
# Cookbook Name:: shelby
# Recipe:: nos_user
#
# Copyright 2012, Shelby.tv
#
# All rights reserved - Do Not Redistribute
#
# Recipe to create the nos user

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