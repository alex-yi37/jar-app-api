class User < ApplicationRecord
  validates :username, :email, :display_name, presence: true
end
