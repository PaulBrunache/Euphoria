  _  /)
                 mo / )
                 |/)\)
                  /\_
                  \__|=
                 (    )
                 __)(__
           _____/      \\_____
          |  _     ___   _   ||
          | | \     |   | \  ||
          | |  |    |   |  | ||
          | |_/     |   |_/  ||
          | | \     |   |    ||
          | |  \    |   |    ||
          | |   \. _|_. | .  ||
          |                  ||
          | Euphoria Project ||
          |                  ||
  *       | *   **    * **   |**      **
   \))ejm97/.,(//,,..,,\||(,,.,\\,.((//

# Euphoria (discontinued for now at least)


## Installation

Add this line to your application's Gemfile:

```ruby 
gem 'euphoria'

```

And then execute:

    $ bundle install

Or install it yourself by running:

    $ gem install euphoria

## Usage

TODO: 

#### Getting started

    rails g euphoria:install 
    
    -will inject the css and js into the rails asset pipeline **
    
#### Optional flags 
    
    --stylesheet  # generates all stylesheets source files used in the framework
    --js          # generates all Javascript source files used in the framework
    --all         # generates all source files used in the framework

#### Manual install
    In the application.css 
    
    //= require UI_Modules before //=require_tree	
    
    In the application.css 		
    
 	add *= require load before //=require_tree

## How to use ? 

Framework docs comming soon

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/euphoria/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
