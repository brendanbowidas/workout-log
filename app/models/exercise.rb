class Exercise < ActiveRecord::Base
  belongs_to :workout
  has_one :user, through: :engine
end
