#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory '/home/isucon/.ssh'
cookbook_file '/home/isucon/.ssh/authorized_keys'
