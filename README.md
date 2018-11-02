# Simple ToDo App

This ia simple ToDo App created with Ruby on Rails

Objectives of this application:

* Users should login to the App (Devise/Omniauth)
* Users can create, read, update and delete (CRUD) lists of TODOs
* Users can CRUD tasks on a list.
* Users can export their lists with their tasks to CSV and PDF files.
* Users should receive weekly email including pending tasks (using emails and BackgroundJobs with Sidekiq and Redis)
* Users can update your profile: name, email, description and photo (photo must be uploaded)
* The app must include unit tests with RSpec.


## Setup


## Clone repository

Clone the repository in your local with the next command:

    $ git clone https://github.com/IgnacioCon/RoR-To-do-list.git

## Install the dependencies

You need to install the dependencies specified in the Gemfile, to do this use the following command: 

    $ bundle install

## Create the database

Create the database with the following command:

    $ rake db:create

## Setup the tables in the database

You need to setup the migrations with the next command:

    $ rake db:migrate

## Initialize Rails server

Open a terminal in the directory where the repository was cloned and type the following command: 

    $ rails s

## Initialize Redis server

Open a second terminal, make sure it is in the same directory and enter:
   
    $ redis-server

## Intialize Sidekiq
    
Open another terminal, make sure it is in the same directory and enter: 

    $ bundle exec sidekiq -q default -q mailers

## View the application running on a browser!

And finally go to your local server with the next route on your browser

    http://localhost:3000