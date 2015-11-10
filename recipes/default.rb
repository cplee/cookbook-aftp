include_recipe 'jenkins::java'
include_recipe 'jenkins::master'

xml = File.join(Chef::Config[:file_cache_path], 'hw-config.xml')

# You could also use a `cookbook_file` or pure `file` resource to generate
# content at this path.
template xml do
  source 'hw-config.xml.erb'
end

# Create a jenkins job (default action is `:create`)
jenkins_job 'hello-world' do
  config xml
end

### Compiler and source packages for testing
include_recipe 'build-essential::default'
package 'libxml2-devel'
package 'libxslt-devel'
