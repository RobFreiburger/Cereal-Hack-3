class BizTypes < ActiveRecord::Base

	has_and_belongs_to_many :todo_lists

	validates :name, presence: true
	validates :name, uniqueness: { case_sensitive: false }

end