#	Abstract model
class Abstract < ActiveRecord::Base

	belongs_to :subject, :counter_cache => true

	with_options :allow_blank => true do |b|
		b.with_options :maximum => 2 do |o|
			o.validates_length_of( :response_classification_day_14 )
			o.validates_length_of( :response_classification_day_28 )
			o.validates_length_of( :response_classification_day_7 )
		end
		b.with_options :maximum => 3 do |o|
			o.validates_length_of( :cytogen_chromosome_number )
		end
		b.with_options :maximum => 4 do |o|
			o.validates_length_of( :flow_cyto_other_marker_1 )
			o.validates_length_of( :flow_cyto_other_marker_2 )
			o.validates_length_of( :flow_cyto_other_marker_3 )
			o.validates_length_of( :flow_cyto_other_marker_4 )
			o.validates_length_of( :flow_cyto_other_marker_5 )
			o.validates_length_of( :response_other1_value_day_14 )
			o.validates_length_of( :response_other1_value_day_7 )
			o.validates_length_of( :response_other2_value_day_14 )
			o.validates_length_of( :response_other2_value_day_7 )
			o.validates_length_of( :response_other3_value_day_14 )
			o.validates_length_of( :response_other4_value_day_14 )
			o.validates_length_of( :response_other5_value_day_14 )
		end
		b.with_options :maximum => 5 do |o|
			o.validates_length_of( :normal_cytogen )
			o.validates_length_of( :is_cytogen_hosp_fish_t1221_done )
			o.validates_length_of( :is_karyotype_normal )
			o.validates_length_of( :physical_neuro )
			o.validates_length_of( :physical_other_soft_2 )
			o.validates_length_of( :physical_gingival )
			o.validates_length_of( :physical_leukemic_skin )
			o.validates_length_of( :physical_lymph )
			o.validates_length_of( :physical_spleen )
			o.validates_length_of( :physical_testicle )
			o.validates_length_of( :physical_other_soft )
			o.validates_length_of( :is_hypodiploid )
			o.validates_length_of( :is_hyperdiploid )
			o.validates_length_of( :is_diploid )
			o.validates_length_of( :dna_index )
			o.validates_length_of( :cytogen_is_hyperdiploidy )
		end
		b.with_options :maximum => 9 do |o|
			o.validates_length_of( :cytogen_t1221 )
			o.validates_length_of( :cytogen_inv16 )
			o.validates_length_of( :cytogen_t119 )
			o.validates_length_of( :cytogen_t821 )
			o.validates_length_of( :cytogen_t1517 )
		end
		b.with_options :maximum => 10 do |o|
			o.validates_length_of( :response_cd10_day_14 )
			o.validates_length_of( :response_cd10_day_7 )
			o.validates_length_of( :response_cd13_day_14 )
			o.validates_length_of( :response_cd13_day_7 )
			o.validates_length_of( :response_cd14_day_14 )
			o.validates_length_of( :response_cd14_day_7 )
			o.validates_length_of( :response_cd15_day_14 )
			o.validates_length_of( :response_cd15_day_7 )
			o.validates_length_of( :response_cd19_day_14 )
			o.validates_length_of( :response_cd19_day_7 )
			o.validates_length_of( :response_cd19cd10_day_14 )
			o.validates_length_of( :response_cd19cd10_day_7 )
			o.validates_length_of( :response_cd1a_day_14 )
			o.validates_length_of( :response_cd2a_day_14 )
			o.validates_length_of( :response_cd20_day_14 )
			o.validates_length_of( :response_cd20_day_7 )
			o.validates_length_of( :response_cd3a_day_14 )
			o.validates_length_of( :response_cd3_day_7 )
			o.validates_length_of( :response_cd33_day_14 )
			o.validates_length_of( :response_cd33_day_7 )
			o.validates_length_of( :response_cd34_day_14 )
			o.validates_length_of( :response_cd34_day_7 )
			o.validates_length_of( :response_cd4a_day_14 )
			o.validates_length_of( :response_cd5a_day_14 )
			o.validates_length_of( :response_cd56_day_14 )
			o.validates_length_of( :response_cd61_day_14 )
			o.validates_length_of( :response_cd7a_day_14 )
			o.validates_length_of( :response_cd8a_day_14 )
			o.validates_length_of( :flow_cyto_cd10 )
			o.validates_length_of( :flow_cyto_igm )
			o.validates_length_of( :flow_cyto_bm_kappa )
			o.validates_length_of( :flow_cyto_bm_lambda )
			o.validates_length_of( :flow_cyto_cd10_19 )
			o.validates_length_of( :flow_cyto_cd19 )
			o.validates_length_of( :flow_cyto_cd20 )
			o.validates_length_of( :flow_cyto_cd21 )
			o.validates_length_of( :flow_cyto_cd22 )
			o.validates_length_of( :flow_cyto_cd23 )
			o.validates_length_of( :flow_cyto_cd24 )
			o.validates_length_of( :flow_cyto_cd40 )
			o.validates_length_of( :flow_cyto_surface_ig )
			o.validates_length_of( :flow_cyto_cd1a )
			o.validates_length_of( :flow_cyto_cd2 )
			o.validates_length_of( :flow_cyto_cd3 )
			o.validates_length_of( :flow_cyto_cd4 )
			o.validates_length_of( :flow_cyto_cd5 )
			o.validates_length_of( :flow_cyto_cd7 )
			o.validates_length_of( :flow_cyto_cd8 )
			o.validates_length_of( :flow_cyto_cd3_cd4 )
			o.validates_length_of( :flow_cyto_cd3_cd8 )
			o.validates_length_of( :flow_cyto_cd11b )
			o.validates_length_of( :flow_cyto_cd11c )
			o.validates_length_of( :flow_cyto_cd13 )
			o.validates_length_of( :flow_cyto_cd15 )
			o.validates_length_of( :flow_cyto_cd33 )
			o.validates_length_of( :flow_cyto_cd41 )
			o.validates_length_of( :flow_cyto_cdw65 )
			o.validates_length_of( :flow_cyto_cd34 )
			o.validates_length_of( :flow_cyto_cd61 )
			o.validates_length_of( :flow_cyto_cd14 )
			o.validates_length_of( :flow_cyto_glycoa )
			o.validates_length_of( :flow_cyto_cd16 )
			o.validates_length_of( :flow_cyto_cd56 )
			o.validates_length_of( :flow_cyto_cd57 )
			o.validates_length_of( :flow_cyto_cd9 )
			o.validates_length_of( :flow_cyto_cd25 )
			o.validates_length_of( :flow_cyto_cd38 )
			o.validates_length_of( :flow_cyto_cd45 )
			o.validates_length_of( :flow_cyto_cd71 )
			o.validates_length_of( :flow_cyto_tdt )
			o.validates_length_of( :flow_cyto_hladr )
			o.validates_length_of( :response_hladr_day_14 )
			o.validates_length_of( :response_hladr_day_7 )
			o.validates_length_of( :response_tdt_day_14 )
			o.validates_length_of( :response_tdt_day_7 )
		end
		b.with_options :maximum => 15 do |o|
			o.validates_length_of( :response_blasts_units_day_14 )
			o.validates_length_of( :response_blasts_units_day_28 )
			o.validates_length_of( :response_blasts_units_day_7 )
			o.validates_length_of( :other_dna_measure )
			o.validates_length_of( :response_fab_subtype )
		end
		b.with_options :maximum => 20 do |o|
			o.validates_length_of( :flow_cyto_other_marker_1_name )
			o.validates_length_of( :flow_cyto_other_marker_2_name )
			o.validates_length_of( :flow_cyto_other_marker_3_name )
			o.validates_length_of( :flow_cyto_other_marker_4_name )
			o.validates_length_of( :flow_cyto_other_marker_5_name )
		end
		b.with_options :maximum => 25 do |o|
			o.validates_length_of( :response_other1_name_day_14 )
			o.validates_length_of( :response_other1_name_day_7 )
			o.validates_length_of( :response_other2_name_day_14 )
			o.validates_length_of( :response_other2_name_day_7 )
			o.validates_length_of( :response_other3_name_day_14 )
			o.validates_length_of( :response_other4_name_day_14 )
			o.validates_length_of( :response_other5_name_day_14 )
		end
		b.with_options :maximum => 35 do |o|
			o.validates_length_of( :cytogen_other_trans_1 )
			o.validates_length_of( :cytogen_other_trans_2 )
			o.validates_length_of( :cytogen_other_trans_3 )
			o.validates_length_of( :cytogen_other_trans_4 )
			o.validates_length_of( :cytogen_other_trans_5 )
		end
		b.with_options :maximum => 50 do |o|
			o.validates_length_of( :flow_cyto_igm_text )
			o.validates_length_of( :flow_cyto_bm_kappa_text )
			o.validates_length_of( :flow_cyto_bm_lambda_text )
			o.validates_length_of( :flow_cyto_cd10_19_text )
			o.validates_length_of( :flow_cyto_cd10_text )
			o.validates_length_of( :flow_cyto_cd19_text )
			o.validates_length_of( :flow_cyto_cd20_text )
			o.validates_length_of( :flow_cyto_cd21_text )
			o.validates_length_of( :flow_cyto_cd22_text )
			o.validates_length_of( :flow_cyto_cd23_text )
			o.validates_length_of( :flow_cyto_cd24_text )
			o.validates_length_of( :flow_cyto_cd40_text )
			o.validates_length_of( :flow_cyto_surface_ig_text )
			o.validates_length_of( :flow_cyto_cd1a_text )
			o.validates_length_of( :flow_cyto_cd2_text )
			o.validates_length_of( :flow_cyto_cd3_text )
			o.validates_length_of( :flow_cyto_cd4_text )
			o.validates_length_of( :flow_cyto_cd5_text )
			o.validates_length_of( :flow_cyto_cd7_text )
			o.validates_length_of( :flow_cyto_cd8_text )
			o.validates_length_of( :flow_cyto_cd3_cd4_text )
			o.validates_length_of( :flow_cyto_cd3_cd8_text )
			o.validates_length_of( :flow_cyto_cd11b_text )
			o.validates_length_of( :flow_cyto_cd11c_text )
			o.validates_length_of( :flow_cyto_cd13_text )
			o.validates_length_of( :flow_cyto_cd15_text )
			o.validates_length_of( :flow_cyto_cd33_text )
			o.validates_length_of( :flow_cyto_cd41_text )
			o.validates_length_of( :flow_cyto_cdw65_text )
			o.validates_length_of( :flow_cyto_cd34_text )
			o.validates_length_of( :flow_cyto_cd61_text )
			o.validates_length_of( :flow_cyto_cd14_text )
			o.validates_length_of( :flow_cyto_glycoa_text )
			o.validates_length_of( :flow_cyto_cd16_text )
			o.validates_length_of( :flow_cyto_cd56_text )
			o.validates_length_of( :flow_cyto_cd57_text )
			o.validates_length_of( :flow_cyto_cd9_text )
			o.validates_length_of( :flow_cyto_cd25_text )
			o.validates_length_of( :flow_cyto_cd38_text )
			o.validates_length_of( :flow_cyto_cd45_text )
			o.validates_length_of( :flow_cyto_cd71_text )
			o.validates_length_of( :flow_cyto_tdt_text )
			o.validates_length_of( :flow_cyto_hladr_text )
			o.validates_length_of( :flow_cyto_other_marker_1_text )
			o.validates_length_of( :flow_cyto_other_marker_2_text )
			o.validates_length_of( :flow_cyto_other_marker_3_text )
			o.validates_length_of( :flow_cyto_other_marker_4_text )
			o.validates_length_of( :flow_cyto_other_marker_5_text )
			o.validates_length_of( :ucb_fish_results )
			o.validates_length_of( :fab_classification )
			o.validates_length_of( :diagnosis_icdo_number )
			o.validates_length_of( :cytogen_t922 )
		end
		b.with_options :maximum => 55 do |o|
			o.validates_length_of( :diagnosis_icdo_description )
		end
		b.with_options :maximum => 100 do |o|
			o.validates_length_of( :ploidy_comment )
		end
		b.with_options :maximum => 250 do |o|
			o.validates_length_of( :csf_red_blood_count_text )
			o.validates_length_of( :blasts_are_present )
			o.validates_length_of( :peripheral_blood_in_csf )
			o.validates_length_of( :chemo_protocol_report_found )
			o.validates_length_of( :chemo_protocol_name )
			o.validates_length_of( :conventional_karyotype_results )
			o.validates_length_of( :hospital_fish_results )
			o.validates_length_of( :hyperdiploidy_by )
		end
		b.with_options :maximum => 65000 do |o|
			o.validates_length_of( :marrow_biopsy_diagnosis )
			o.validates_length_of( :marrow_aspirate_diagnosis )
			o.validates_length_of( :csf_white_blood_count_text )
			o.validates_length_of( :csf_comment )
			o.validates_length_of( :chemo_protocol_agent_description )
			o.validates_length_of( :chest_imaging_comment )
			o.validates_length_of( :cytogen_comment )
			o.validates_length_of( :discharge_summary )
			o.validates_length_of( :flow_cyto_remarks )
			o.validates_length_of( :response_comment_day_7 )
			o.validates_length_of( :response_comment_day_14 )
			o.validates_length_of( :histo_report_results )
			o.validates_length_of( :response_comment )
		end
	end

	attr_accessor :current_user
	attr_accessor :weight_units, :height_units
	attr_accessor :patid

	validate :valid_patid, :on => :create

	before_create :set_subject
	before_create :set_user
	before_save   :convert_height_to_cm
	before_save   :convert_weight_to_kg

	def ignorable_columns
#	should add the entry_1_by_id and entry_2_by_id fields when they exist
		@@ignorable_columns ||= ['id','created_at','updated_at']
	end

	def comparable_attributes
		attributes.reject {|k,v| ignorable_columns.include?(k)}
	end

	def is_the_same_as?(another_abstract)
		aa = Abstract.find(another_abstract)
		(self.comparable_attributes.diff(aa.comparable_attributes)).blank?
	end

	def diff(another_abstract)
		aa = Abstract.find(another_abstract)
		self.comparable_attributes.diff(aa.comparable_attributes)
	end

	def self.search(params={})
		AbstractSearch.new(params).abstracts
	end

protected

	def convert_height_to_cm
		if( !height_units.nil? && height_units.match(/in/i) )
			self.height_units = nil
			self.height_at_diagnosis *= 2.54
		end
	end

	def convert_weight_to_kg
		if( !weight_units.nil? && weight_units.match(/lb/i) )
			self.weight_units = nil
			self.weight_at_diagnosis /= 2.2046
		end
	end

	#	Set user if given
	def set_user
		self.user_id = current_user.try(:id)||0
	end

	def set_subject
		unless patid.blank?
			self.subject_id = Subject.search(:patid => patid, :types => 'Case').first.id
		end
	end

	def valid_patid
		unless patid.blank?
			subjects = Subject.search(:patid => patid, :types => 'Case',:paginate => false)
			if subjects.length == 1
				self.subject_id = subjects.first.id
			else
				errors.add(:patid,"#{patid} matches #{subjects.length} case subjects")
			end
		end
	end

end
