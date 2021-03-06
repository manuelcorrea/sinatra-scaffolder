[ ![Codeship Status for manuelcorrea/sinatra-scaffolder](https://codeship.com/projects/24ff0e90-c370-0132-dd6a-4a0ff033b2c2/status?branch=master)](https://codeship.com/projects/73884)

# Sinatra Scaffolder

A set of tools for creating new webservices with Sinatra.  Allows quickly setting up a new project with all of the quality of life things we've found to ease the process of Ruby development even more.

## Installation

	$ gem install sinatra-scaffolder
    
### Usage

    $ sinatra-scaffolder create <project_name>
    
This will create go through the entire process of creating a new Sinatra project.  This includes:
* Setting up a standard Sinatra folder structure.
* Creating hello world as an example controller.
* Setting up the rspec testing framework with a test of hello world.
* Configuring sinatra-reloader to pick up any file changes and reload the webserver in dev.
* Initializing a new git repo in the project path.

Run your tests by using
    $ rake coverage

Run Guard by
    $ guard

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
