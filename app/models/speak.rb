class Speak < ActiveRecord::Base
	belongs_to :user
	belongs_to :language

	validates :user_id, presence: true
  validates :language_id, presence: true
  validates :level, presence: true

  def language_name
    language && language.name
  end
end