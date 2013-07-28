class TodoList < ActiveRecord::Base

	has_and_belongs_to_many :biz_feats
	has_and_belongs_to_many :biz_types

	validates :contact_email, presence: true

	before_validation :ensure_hours_are_seasonal_has_boolean
	validates :hours_are_seasonal, inclusion: { in: [true, false] }

	before_validation :ensure_fixme_flag_has_boolean
	validates :fixme_flag, inclusion: { in: [true, false] }

	before_validation :ensure_done_has_boolean
	validates :done, inclusion: { in: [true, false] }

	def all_active_tasks
		active_tasks = []

		self.where(done: false).find_in_batches do |batch|
			active_tasks = active_tasks + batch
		end

		active_tasks
	end

	private

	def ensure_hours_are_seasonal_has_boolean
		if hours_are_seasonal.nil?
			hours_are_seasonal = false
		end
	end

	def ensure_fixme_flag_has_boolean
		if fixme_flag.nil?
			fixme_flag = false
		end
	end

	def ensure_done_has_boolean
		if done.nil?
			done = false
		end
	end

end
