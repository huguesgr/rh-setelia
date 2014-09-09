class Speak < ActiveRecord::Base
	belongs_to :user
	belongs_to :language

  validates :level, presence: true

  LEVELS=["Débutant", "Intermédiaire", "Avancé", "Courant"]
end