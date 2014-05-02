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
      expect(File).to exist("../test-project/app.rb")
    end
    
    it 'Creates the hello world controller' do
      expect(File).to exist("../test-project/controllers/sample.rb")
    end
    
    it 'Creates the hello world rspec test' do
      expect(File).to exist("../test-project/spec/sample_spec.rb")      
    end
    
    it 'Sets up coverage report rake task' do
      expect(File).to exist("../test-project/Rakefile")
      File.read("../test-project/Rakefile").should include "COVERAGE"
      expect(File).to exist("../test-project/spec/test_helper.rb")
      File.read("../test-project/spec/test_helper.rb").should include "SimpleCov"
    end
    
    it 'Configures sinatra-reloader in dev' do
      expect(File).to exist("../test-project/config/development.rb")
      File.read("../test-project/config/development.rb").should include "reloader"
    end
    
    it 'Initializes the git repo' do
      expect(File).to exist("../test-project/.git/index")
    end
  end  
end
