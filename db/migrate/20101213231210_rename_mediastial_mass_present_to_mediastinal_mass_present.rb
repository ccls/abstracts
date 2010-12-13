class RenameMediastialMassPresentToMediastinalMassPresent < ActiveRecord::Migration
	def self.up
		rename_column :abstracts, :mediastial_mass_present, :mediastinal_mass_present
	end

	def self.down
		rename_column :abstracts, :mediastinal_mass_present, :mediastial_mass_present
	end
end
