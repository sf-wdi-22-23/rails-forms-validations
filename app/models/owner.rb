class Owner < ActiveRecord::Base
  has_many :pets, dependent: :destroy
  # should we use nullify so that pets can be reassigned to different owners instead of destroyed?
  # could have an Owner called "Humane Society" to assign the pets to?
end
