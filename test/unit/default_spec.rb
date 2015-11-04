require 'chefspec'
require_relative 'spec_helper'

##
##  Had to disable this test...httpd cookbook has no resources,
##   just libraries and that causes issues with chefspec
##

# describe 'aftp::default' do
#   let(:chef_run) do
#     ChefSpec::SoloRunner.converge(described_recipe)
#   end
#
#   subject { chef_run }
#
#   it { is_expected.to install_package('httpd') }
#   it { is_expected.to enable_service('httpd') }
#   it { is_expected.to start_service('httpd') }
# end
