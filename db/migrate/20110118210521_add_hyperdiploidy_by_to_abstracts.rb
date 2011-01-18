class AddHyperdiploidyByToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :hyperdiploidy_by, :string
	end

	def self.down
		remove_column :abstracts, :hyperdiploidy_by
	end
end
