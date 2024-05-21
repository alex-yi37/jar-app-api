class JarInvite < ApplicationRecord
  # adding enum to the JarInvite model so that we can access "status" from the db with named values
  # such as "pending", "accepted", "declined". In the db, these are stored as integers that we are defaulting
  # to a value of 0, but I guess by adding an enum on the model we can access a "status" field on a JarInvite instance
  # by name instead of an integer

  # following these links to implement this:
  # https://blog.saeloun.com/2022/01/05/how-to-use-enums-in-rails/
  # https://www.honeybadger.io/blog/how-to-use-enum-attributes-in-ruby-on-rails/
  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }
end
