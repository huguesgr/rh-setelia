class Event < ActiveRecord::Base
  default_scope { order('date DESC') }

  belongs_to :user

  validates :description, presence: true
  validates :date, presence: true
end
