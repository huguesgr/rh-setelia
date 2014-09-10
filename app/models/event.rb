class Event < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :date, presence: true
end
