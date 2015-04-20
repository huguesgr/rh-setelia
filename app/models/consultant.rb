class Consultant < ActiveRecord::Base
  default_scope { order('label ASC') }

  has_many :users, dependent: :nullify

  validates :label, presence: true
end
