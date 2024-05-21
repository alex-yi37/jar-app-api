class Jar < ApplicationRecord
  validates :display_name, :design_type, presence: true
end
