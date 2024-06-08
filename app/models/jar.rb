class Jar < ApplicationRecord
  # association to access owner of the jar
  belongs_to :user, optional: false
  # association to access members of the jar through the :jars_users join table
  # has_and_belongs_to_many :users
  has_and_belongs_to_many :members, class_name: 'User'
  has_many :notes

  # SO thread for listing :belongs_to associations
  # https://stackoverflow.com/questions/8371574/is-there-a-way-to-list-all-belongs-to-associations
  # use Jar.reflect_on_all_associations(:belongs_to)

  validates :display_name, :design_type, presence: true
end
