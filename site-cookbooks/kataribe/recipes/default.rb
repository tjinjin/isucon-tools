#
# Cookbook Name:: kataribe
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
pkg_version = '0.3.0'
work_path = '/tmp'
archive_file = 'linux_amd64.zip'
binary_file = 'kataribe'
deploy_path = "/usr/local/bin/#{binary_file}"

remote_file "#{work_path}/#{archive_file}" do
  source "https://github.com/matsuu/kataribe/releases/download/#{pkg_version}/#{archive_file}"
  mode '0755'
  not_if { File.exist?("#{deploy_path}") }
end

execute 'unarchive kataribe' do
  command <<-EOC
    cd #{work_path}
    unzip #{archive_file}
    mv #{binary_file} #{deploy_path}
  EOC
  not_if { File.exist?("#{deploy_path}") }
end

cookbook_file '/home/isucon/kataribe.toml'
