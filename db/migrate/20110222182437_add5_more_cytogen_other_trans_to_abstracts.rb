class Add5MoreCytogenOtherTransToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :cytogen_other_trans_6,  :string, :limit => 35
		add_column :abstracts, :cytogen_other_trans_7,  :string, :limit => 35
		add_column :abstracts, :cytogen_other_trans_8,  :string, :limit => 35
		add_column :abstracts, :cytogen_other_trans_9,  :string, :limit => 35
		add_column :abstracts, :cytogen_other_trans_10, :string, :limit => 35
	end

	def self.down
		remove_column :abstracts, :cytogen_other_trans_6
		remove_column :abstracts, :cytogen_other_trans_7
		remove_column :abstracts, :cytogen_other_trans_8
		remove_column :abstracts, :cytogen_other_trans_9
		remove_column :abstracts, :cytogen_other_trans_10
	end
end
