class Abstract < ActiveRecord::Base

	validates_length_of( :response_classification_day_14,
		:allow_blank => true, :maximum => 2 )
	validates_length_of( :response_classification_day_28,
		:allow_blank => true, :maximum => 2 )
	validates_length_of( :response_classification_day_7,
		:allow_blank => true, :maximum => 2 )
	validates_length_of( :response_blasts_units_day_14,
		:allow_blank => true, :maximum => 15 )
	validates_length_of( :response_blasts_units_day_28,
		:allow_blank => true, :maximum => 15 )
	validates_length_of( :response_blasts_units_day_7,
		:allow_blank => true, :maximum => 15 )
	validates_length_of( :marrow_biopsy_diagnosis,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :marrow_aspirate_diagnosis,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :csf_white_blood_count_text,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :csf_red_blood_count_text,
		:allow_blank => true, :maximum => 250 )
	validates_length_of( :blasts_are_present,
		:allow_blank => true, :maximum => 250 )
	validates_length_of( :peripheral_blood_in_csf,
		:allow_blank => true, :maximum => 250 )
	validates_length_of( :csf_comment,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :chemo_protocol_report_found,
		:allow_blank => true, :maximum => 250 )
	validates_length_of( :chemo_protocol_name,
		:allow_blank => true, :maximum => 250 )
	validates_length_of( :chemo_protocol_agent_description,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :response_cd10_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd10_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd13_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd13_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd14_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd14_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd15_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd15_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd19_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd19_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd19cd10_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd19cd10_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd1a_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd2a_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd20_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd20_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd3a_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd3_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd33_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd33_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd34_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd34_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd4a_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd5a_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd56_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd61_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd7a_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_cd8a_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :chest_imaging_report_found,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :mediastial_mass_present,
		:allow_blank => true, :maximum => 18 )
	validates_length_of( :chest_imaging_comment,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :received_chest_ct,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :chest_ct_taken_on,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :chest_ct_medmass_present,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :cytogen_report_found,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :conventional_karyotype_results,
		:allow_blank => true, :maximum => 250 )
	validates_length_of( :normal_cytogen,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :is_cytogen_hosp_fish_t1221_done,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :is_karyotype_normal,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :cytogen_comment,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :discharge_summary,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :diagnosis_is_all,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :diagnosis_all_type,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :diagnosis_is_cml,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :diagnosis_is_cll,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :diagnosis_is_aml,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :diagnosis_aml_type,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :diagnosis_is_other,
		:allow_blank => true, :maximum => 40 )
	validates_length_of( :flow_cyto_report_found,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :flow_cyto_cd10,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_igm,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_igm_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_bm_kappa,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_bm_kappa_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_bm_lambda,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_bm_lambda_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd10_19,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd10_19_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd10_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd19,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd19_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd20,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd20_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd21,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd21_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd22,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd22_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd23,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd23_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd24,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd24_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd40,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd40_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_surface_ig,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_surface_ig_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd1a,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd1a_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd2,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd2_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd3,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd3_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd4,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd4_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd5,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd5_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd7_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd8,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd8_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd3_cd4,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd3_cd4_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd3_cd8,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd3_cd8_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd11b,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd11b_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd11c,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd11c_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd13,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd13_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd15,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd15_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd33,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd33_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd41,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd41_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cdw65,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cdw65_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd34,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd34_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd61,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd61_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd14_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_glycoa,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_glycoa_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd16,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd16_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd56,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd56_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd57,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd57_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd9,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd9_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd25,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd25_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd38,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd38_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd45,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd45_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_cd71,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_cd71_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_tdt,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_tdt_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_hladr,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :flow_cyto_hladr_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_other_marker_1_name,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :flow_cyto_other_marker_1,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :flow_cyto_other_marker_1_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_other_marker_2_name,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :flow_cyto_other_marker_2,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :flow_cyto_other_marker_2_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_other_marker_3_name,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :flow_cyto_other_marker_3,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :flow_cyto_other_marker_3_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_other_marker_4_name,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :flow_cyto_other_marker_4,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :flow_cyto_other_marker_4_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_other_marker_5_name,
		:allow_blank => true, :maximum => 20 )
	validates_length_of( :flow_cyto_other_marker_5,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :flow_cyto_other_marker_5_text,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :flow_cyto_remarks,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :tdt_often_found_flow_cytometry,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :tdt_report_found,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :tdt_positive_or_negative,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_comment_day_7,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :response_comment_day_14,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :hospital_fish_results,
		:allow_blank => true, :maximum => 250 )
	validates_length_of( :ucb_fish_results,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :response_hladr_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_hladr_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :histo_report_found,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :histo_report_results,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :response_other1_value_day_14,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :response_other1_value_day_7,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :response_other2_value_day_14,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :response_other2_value_day_7,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :response_other3_value_day_14,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :response_other4_value_day_14,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :response_other5_value_day_14,
		:allow_blank => true, :maximum => 4 )
	validates_length_of( :h_and_p_reports_found,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_neuro,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_other_soft_2,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :vital_status,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_gingival,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_leukemic_skin,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_lymph,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_spleen,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_testicle,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :physical_other_soft,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :ploidy_report_found,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :is_hypodiploid,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :is_hyperdiploid,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :is_diploid,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :dna_index,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :other_dna_measure,
		:allow_blank => true, :maximum => 15 )
	validates_length_of( :ploidy_comment,
		:allow_blank => true, :maximum => 100 )
	validates_length_of( :response_comment,
		:allow_blank => true, :maximum => 65000 )
	validates_length_of( :response_other1_name_day_14,
		:allow_blank => true, :maximum => 25 )
	validates_length_of( :response_other1_name_day_7,
		:allow_blank => true, :maximum => 25 )
	validates_length_of( :response_other2_name_day_14,
		:allow_blank => true, :maximum => 25 )
	validates_length_of( :response_other2_name_day_7,
		:allow_blank => true, :maximum => 25 )
	validates_length_of( :response_other3_name_day_14,
		:allow_blank => true, :maximum => 25 )
	validates_length_of( :response_other4_name_day_14,
		:allow_blank => true, :maximum => 25 )
	validates_length_of( :response_other5_name_day_14,
		:allow_blank => true, :maximum => 25 )
	validates_length_of( :fab_classification,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :diagnosis_icdo_description,
		:allow_blank => true, :maximum => 55 )
	validates_length_of( :diagnosis_icdo_number,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :cytogen_t1221,
		:allow_blank => true, :maximum => 9 )
	validates_length_of( :cytogen_inv16,
		:allow_blank => true, :maximum => 9 )
	validates_length_of( :cytogen_t119,
		:allow_blank => true, :maximum => 9 )
	validates_length_of( :cytogen_t821,
		:allow_blank => true, :maximum => 9 )
	validates_length_of( :cytogen_t1517,
		:allow_blank => true, :maximum => 9 )
	validates_length_of( :cytogen_is_hyperdiploidy,
		:allow_blank => true, :maximum => 5 )
	validates_length_of( :cytogen_chromosome_number,
		:allow_blank => true, :maximum => 3 )
	validates_length_of( :cytogen_other_trans_1,
		:allow_blank => true, :maximum => 35 )
	validates_length_of( :cytogen_other_trans_2,
		:allow_blank => true, :maximum => 35 )
	validates_length_of( :cytogen_other_trans_3,
		:allow_blank => true, :maximum => 35 )
	validates_length_of( :cytogen_t922,
		:allow_blank => true, :maximum => 50 )
	validates_length_of( :cytogen_other_trans_4,
		:allow_blank => true, :maximum => 35 )
	validates_length_of( :cytogen_other_trans_5,
		:allow_blank => true, :maximum => 35 )
	validates_length_of( :response_fab_subtype,
		:allow_blank => true, :maximum => 15 )
	validates_length_of( :response_tdt_day_14,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :response_tdt_day_7,
		:allow_blank => true, :maximum => 10 )
	validates_length_of( :abstract_version_description,
		:allow_blank => true, :maximum => 250 )

end
