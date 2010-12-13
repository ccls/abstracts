class AddHeightToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :height_at_diagnosis, :float
	end

	def self.down
		remove_column :abstracts, :height_at_diagnosis
	end
end
