class Speak < ActiveRecord::Base
	belongs_to :user
	belongs_to :language
  accepts_nested_attributes_for :user

	validates :user_id, presence: true
  validates :language_id, presence: true
  validates :level, presence: true

  def language_name
    language && language.name
  end
end