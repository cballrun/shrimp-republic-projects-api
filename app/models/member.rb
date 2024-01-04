class Member < ApplicationRecord
    validates_presence_of :name, :location, :description
end
  