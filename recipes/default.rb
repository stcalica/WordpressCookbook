#
# Cookbook:: cookbook_lemp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'git'

pacakge 'vim'

package 'nginx' do
  action :install
end

service 'nginx' do
  supports status: true, restart: true, reload: true
  action :enable
end

package 'mysql-server' do
  action :install
end

package 'php5-fpm' do
  action :install
end

package 'php5-mysql' do
  action :install
end
