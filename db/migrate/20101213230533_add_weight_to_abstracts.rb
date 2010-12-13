class AddWeightToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :weight_at_diagnosis, :float
	end

	def self.down
		remove_column :abstracts, :weight_at_diagnosis
	end
end
