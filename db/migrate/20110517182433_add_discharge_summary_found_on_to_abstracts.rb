class AddDischargeSummaryFoundOnToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :discharge_summary_found_on, :date
	end

	def self.down
		remove_column :abstracts, :discharge_summary_found_on
	end
end
