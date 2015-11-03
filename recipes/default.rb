
httpd_service 'default' do
  action [:create, :start]
end

httpd_config 'aftp' do
  source 'aftp.cnf.erb'
  notifies :restart, 'httpd_service[default]'
  action :create
end

package 'git'

git '/opt/aftp' do
  repository "https://github.com/#{node[:aftp][:git_repo]}.git"
  revision  node[:aftp][:git_commit]
  action :sync
end
