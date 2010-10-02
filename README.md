random_record
===

Adds a 'random' method to all ActiveRecord::Base. It is the fastest and neatest way to select a random record form a database, and will even accept find conditions.

Installation
===

I guess you want to install as a plugin:
    script/plugin install git://github.com/skattyadz/random_record.git

Usage
===

class Post < ActiveRecord::Base
end

Post.random # returns a random record from the 'posts' table

Post.random(:public=>true) # returns a random, public post

Background
===

This is something I use a lot in the console when developing and debugging. Existing methods would either require loading a list of all IDs in the table to choose from, or pick a random number, then check that a record of that ID exists in the table (if not, try again until it does). Both seem silly to me. 

random_record specifies a random offset in the database table - much faster at the database level than using a random order. The ability to add conditions is the final icing on the cake.