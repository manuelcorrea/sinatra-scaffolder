require 'thor'
require 'sinatra-scaffolder/create'

module SinatraScaffolder
  class CLI < Thor
    desc 'create [PROJECT_NAME]', 'sets up all of the files and directories necessary for Sinatra development'
    def create(project_name)
      SinatraScaffolder::Create.create project_name
    end
  end
end
