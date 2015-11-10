require 'jenkins_api_client'

RSpec.configure do |c|
  c.formatter = 'documentation'
  c.color = true
end

describe JenkinsApi do
  before(:example) do
    @client = JenkinsApi::Client.new(server_url: 'http://127.0.0.1:8080',
                                     log_level: Logger::WARN)
  end

  it 'has job hello-world' do
    job = @client.job.list_details('hello-world')

    expect(job['name']).to eq('hello-world')
    expect(job['displayName']).to eq('hello-world')
  end
end
