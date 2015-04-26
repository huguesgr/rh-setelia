class InternationalArea < ActiveRecord::Base
  default_scope { order('label ASC') }

  has_many :users
end
