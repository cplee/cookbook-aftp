describe 'aftp::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  subject { chef_run }

  it { is_expected.to enable_service('httpd') }
  it { is_expected.to start_service('httpd') }
end
