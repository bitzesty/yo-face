# Yo::Face

A gem for loading images for fake avatars.

## Installation

Add this line to your application's Gemfile:

    gem 'yo-face'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yo-face

## Usage

Any Gender:

    Yo::Face::Generator.new.image

Specific Gender: 

    Yo::Face::Generator.new.image('M') # or 'F'

Then load the image with `File.load`