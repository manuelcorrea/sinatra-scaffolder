require_relative '../spec_helper'
require 'sinatra-scaffolder/create'

describe SinatraScaffolder do
  describe :create do
    before(:all) do
      SinatraScaffolder::Create.instance.create('test-project')
    end
    
    after(:all) do
      SinatraScaffolder::Create.instance.delete('test-project')
    end

    it 'Creates the sample Sinatra app' do
      expect(File).to exist("test-project/app.rb")
    end
    
    it 'Creates the hello world controller' do
      expect(File).to exist("test-project/controllers/sample.rb")
    end
    
    it 'Creates the hello world rspec test' do
      expect(File).to exist("test-project/test/spec/sample_spec.rb")
    end
    
    it 'Sets up coverage report rake task' do
      expect(File).to exist("test-project/Rakefile")
      expect(File.read("test-project/Rakefile")).to include "COVERAGE"
      expect(File).to exist("test-project/test/test_helper.rb")
      expect(File.read("test-project/test/test_helper.rb")).to include "SimpleCov"
    end
    
    it 'Configures sinatra-reloader in dev' do
      expect(File).to exist("test-project/config/development.rb")
      expect(File.read("test-project/config/development.rb")).to include "reloader"
    end
    
    it 'Initializes the git repo' do
      expect(File).to exist("test-project/.git/index")
    end
  end  
end
