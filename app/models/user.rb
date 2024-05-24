class User < ApplicationRecord

  # association to indicate a User has many Jars through the Jar table itself
  has_many :owned_jars, class_name: 'Jar'

  # SO thread for listing :belongs_to associations
  # https://stackoverflow.com/questions/8371574/is-there-a-way-to-list-all-belongs-to-associations
  # use User.reflect_on_all_associations(:belongs_to)

  validates :username, :email, :display_name, presence: true
end
