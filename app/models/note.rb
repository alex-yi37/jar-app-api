class Note < ApplicationRecord
  belongs_to :jar, optional: false
  belongs_to :user, optional: false
end
