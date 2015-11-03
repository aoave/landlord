require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postrgres db library
require "active_record" # the ORM
require "pry" # for debugging

require_relative "connection" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "../models/apartment" # require the Student class definition that we defined in the models/student.rb file
require_relative "../models/tenant"
# This will put us into a state of the pry REPL, in which we've established a connection
# with the wdi database and have defined the Student Class as an
# ActiveRecord::Base class.
binding.pry

Apartment.destroy_all
Tenant.destroy_all



Apartment.create(
[
  {address: '123 MainSt', monthly_rent: 700, sqft: 700, num_beds:2, num_baths: 1},
  {address: '123 Main St', monthly_rent: 600, sqft: 500, num_beds: 1, num_baths: 1},
  {address: '123 Main St', monthly_rent: 500, sqft: 400, num_beds: 1, num_baths: 1}
  ]
  )

Tenant.create(
[{name: 'Kelly', age: 24, gender: 'f', apartment_id: 1},
  {name: 'Domo', age: 26, gender: 'm', apartment_id: 2},
  {name: 'Dimtri', age: 26, gender: 'm', apartment_id: 1},
  {name: 'Dima', age: 26, gender: 'm', apartment_id: 2},
  {name: 'Dumirtu', age: 26, gender: 'm', apartment_id: 3},
  {name: 'Mitea', age: 21, gender: 'f' },
  {name: 'Rachel', age: 21, gender: 'f'},
  {name: 'Brittney', age: 21, gender: 'f'},
  {name: 'Sarah', age: 21, gender: 'f'}
  ])
