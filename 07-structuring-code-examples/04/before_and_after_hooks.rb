RSpec.describe MyApp::Configuration do
  before(:example) do
    @original_env = ENV.to_hash
  end

  after(:example) do
    ENV.replace(@original_env)
  end
end

RSpec.describe 'Web interface to my thermostat' do
  before(:context) do
    WebBrowser.launch
  end

  after(:context) do
    WebBrowser.shutdown
  end
end

require 'fileutils'

RSpec.configure do |config|
  config.before(:suite) do
    # Remove leftover temporary files
    FileUtils.rm_rf('tmp')
  end
end

