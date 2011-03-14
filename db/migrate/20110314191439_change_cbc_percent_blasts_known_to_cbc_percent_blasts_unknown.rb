class ChangeCbcPercentBlastsKnownToCbcPercentBlastsUnknown < ActiveRecord::Migration
	def self.up
		rename_column :abstracts, :cbc_percent_blasts_known, :cbc_percent_blasts_unknown
	end

	def self.down
		rename_column :abstracts, :cbc_percent_blasts_unknown, :cbc_percent_blasts_known
	end
end
