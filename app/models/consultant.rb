class Consultant < ActiveRecord::Base
  validates :label, presence: true
end
