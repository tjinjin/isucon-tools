#
# Cookbook Name:: mackerel
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
execute 'setup mackerel apt repo' do
  command <<-EOS
  curl -fsSL https://mackerel.io/assets/files/scripts/setup-apt.sh | sh
  EOS
  not_if { File.exist?("/etc/yum.repos.d/mackerel.repo") }
end

package 'mackerel-agent'
package 'mackerel-agent-plugins'
