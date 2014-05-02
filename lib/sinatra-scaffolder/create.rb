require 'singleton'
require 'forwardable'
require 'erb'
require 'fileutils'
require 'git'

module SinatraScaffolder
  class Create
    include Singleton
    extend SingleForwardable

    def_delegators :instance, :create
    
    def create(project_name)
      copy_template(project_name)
      init_git_repo(project_name)  
    end
    
    def delete(project_name)
      delete_template(project_name)  
    end

    def copy_template(project_name)
      appRoot = File.join(File.expand_path(File.dirname(__FILE__)),'..')
      FileUtils.cp_r("#{appRoot}/template", project_name)
      puts "Creating the #{project_name} directory"
    end  
    
    def delete_template(project_name)
      FileUtils.remove_dir(project_name)
      puts "Deleting the #{project_name} directory"
    end 
    
    def init_git_repo(project_name)
      g = Git.init(project_name)
      g.add
      g.commit("Initial Commit")
      puts "Initializing the #{project_name} repo"
    end  
  end
end
