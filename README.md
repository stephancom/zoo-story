Zoo Story
================
_with apologies to [Edward Albee](https://en.wikipedia.org/wiki/The_Zoo_Story)_

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
[![Build Status](https://travis-ci.org/stephancom/zoo-story.svg?branch=master)](https://travis-ci.org/stephancom/zoo-story)
[![Code Climate](https://codeclimate.com/github/stephancom/zoo-story/badges/gpa.svg)](https://codeclimate.com/github/stephancom/zoo-story)
[![Test Coverage](https://codeclimate.com/github/stephancom/zoo-story/badges/coverage.svg)](https://codeclimate.com/github/stephancom/zoo-story/coverage)

This application was built in fulfillment of a code test, spec as follows:

Please create a Rails application for keeping a catalog of zoos. The app should have the following features:
 
*  Every zoo has a name and a list of animals.
*  Every animal has a name and a species and belongs to a single zoo.
*  A user can perform standard CRUD operations (create, read, update, delete) for zoos and animals.
*  For each zoo, the user can see a list of its animals.
*  The user can see a list of all zoos with the number of unique species present in each zoo. (For example: If the Clackamas County Zoo has a monkey named Alice, a monkey named Bob, and an elephant named Zeus, then its number of species is 2.)
*  It should use a SQL data store (compatible with PostgreSQL) and run Rails version 3.2 or above.

Note the lack of authentication, authorization, or secrets setup - these was not called for in the spec.
They would likely be implemented with the Devise, Cancancan or Pundit, and Figaro gems respectively.
Todo: integration testing?

See it running at [stephancom-zoo-story](https://stephancom-zoo-story.herokuapp.com)

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.4
- Rails 4.2.5

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

= Local setup

* clone repository
* bundle
* set up database.yml
* rake db:setup

= Heroku setup steps

```
heroku create [OPTIONAL SERVER NAME]
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
heroku open
```

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

```
by: _            _
 __| |_ ___ _ __| |_  __ _ _ _    __ ___ _ __
(_-<  _/ -_) '_ \ ' \/ _` | ' \ _/ _/ _ \ '  \
/__/\__\___| .__/_||_\__,_|_||_(_)__\___/_|_|_|
           |_|              stephan@stephan.com
```

Rails Composer
-------

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

License
-------
