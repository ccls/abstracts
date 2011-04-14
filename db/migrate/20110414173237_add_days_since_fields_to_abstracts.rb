class AddDaysSinceFieldsToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :response_day_7_days_since_treatment_began,  :integer
		add_column :abstracts, :response_day_7_days_since_diagnosis,        :integer
		add_column :abstracts, :response_day_14_days_since_treatment_began, :integer
		add_column :abstracts, :response_day_14_days_since_diagnosis,       :integer
		add_column :abstracts, :response_day_28_days_since_treatment_began, :integer
		add_column :abstracts, :response_day_28_days_since_diagnosis,       :integer
	end

	def self.down
		remove_column :abstracts, :response_day_7_days_since_treatment_began
		remove_column :abstracts, :response_day_7_days_since_diagnosis
		remove_column :abstracts, :response_day_14_days_since_treatment_began
		remove_column :abstracts, :response_day_14_days_since_diagnosis
		remove_column :abstracts, :response_day_28_days_since_treatment_began
		remove_column :abstracts, :response_day_28_days_since_diagnosis
	end
end
