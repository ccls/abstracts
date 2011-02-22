class AddCbcPercentBlastsKnownToAbstracts < ActiveRecord::Migration
	def self.up
		add_column :abstracts, :cbc_percent_blasts_known, :boolean, :default => false
	end

	def self.down
		remove_column :abstracts, :cbc_percent_blasts_known
	end
end
