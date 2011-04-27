class AddEntry1ByEntry2ByAndMergedByToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :entry_1_by_uid, :string
		add_column :abstracts, :entry_2_by_uid, :string
		add_column :abstracts, :merged_by_uid,  :string
	end

	def self.down
		remove_column :abstracts, :merged_by_uid
		remove_column :abstracts, :entry_2_by_uid
		remove_column :abstracts, :entry_1_by_uid
	end
end
