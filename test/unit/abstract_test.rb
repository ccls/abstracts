require 'test_helper'

class AbstractTest < ActiveSupport::TestCase
#	assert_should_belong_to :subject

	assert_should_not_require( :response_classification_day_14 )
	assert_should_not_require( :response_classification_day_28 )
	assert_should_not_require( :response_classification_day_7 )
	assert_should_not_require( :response_blasts_units_day_14 )
	assert_should_not_require( :response_blasts_units_day_28 )
	assert_should_not_require( :response_blasts_units_day_7 )
	assert_should_not_require( :marrow_biopsy_diagnosis )
	assert_should_not_require( :marrow_aspirate_diagnosis )
	assert_should_not_require( :csf_white_blood_count_text )
	assert_should_not_require( :csf_red_blood_count_text )
	assert_should_not_require( :blasts_are_present )
	assert_should_not_require( :peripheral_blood_in_csf )
	assert_should_not_require( :csf_comment )
	assert_should_not_require( :chemo_protocol_report_found )
	assert_should_not_require( :chemo_protocol_name )
	assert_should_not_require( :chemo_protocol_agent_description )
	assert_should_not_require( :response_cd10_day_14 )
	assert_should_not_require( :response_cd10_day_7 )
	assert_should_not_require( :response_cd13_day_14 )
	assert_should_not_require( :response_cd13_day_7 )
	assert_should_not_require( :response_cd14_day_14 )
	assert_should_not_require( :response_cd14_day_7 )
	assert_should_not_require( :response_cd15_day_14 )
	assert_should_not_require( :response_cd15_day_7 )
	assert_should_not_require( :response_cd19_day_14 )
	assert_should_not_require( :response_cd19_day_7 )
	assert_should_not_require( :response_cd19cd10_day_14 )
	assert_should_not_require( :response_cd19cd10_day_7 )
	assert_should_not_require( :response_cd1a_day_14 )
	assert_should_not_require( :response_cd2a_day_14 )
	assert_should_not_require( :response_cd20_day_14 )
	assert_should_not_require( :response_cd20_day_7 )
	assert_should_not_require( :response_cd3a_day_14 )
	assert_should_not_require( :response_cd3_day_7 )
	assert_should_not_require( :response_cd33_day_14 )
	assert_should_not_require( :response_cd33_day_7 )
	assert_should_not_require( :response_cd34_day_14 )
	assert_should_not_require( :response_cd34_day_7 )
	assert_should_not_require( :response_cd4a_day_14 )
	assert_should_not_require( :response_cd5a_day_14 )
	assert_should_not_require( :response_cd56_day_14 )
	assert_should_not_require( :response_cd61_day_14 )
	assert_should_not_require( :response_cd7a_day_14 )
	assert_should_not_require( :response_cd8a_day_14 )
	assert_should_not_require( :chest_imaging_report_found )
	assert_should_not_require( :mediastial_mass_present )
	assert_should_not_require( :chest_imaging_comment )
	assert_should_not_require( :received_chest_ct )
	assert_should_not_require( :chest_ct_taken_on )
	assert_should_not_require( :chest_ct_medmass_present )
	assert_should_not_require( :cytogen_report_found )
	assert_should_not_require( :conventional_karyotype_results )
	assert_should_not_require( :normal_cytogen )
	assert_should_not_require( :is_cytogen_hosp_fish_t1221_done )
	assert_should_not_require( :is_karyotype_normal )
	assert_should_not_require( :cytogen_comment )
	assert_should_not_require( :discharge_summary )
	assert_should_not_require( :diagnosis_is_all )
	assert_should_not_require( :diagnosis_all_type )
	assert_should_not_require( :diagnosis_is_cml )
	assert_should_not_require( :diagnosis_is_cll )
	assert_should_not_require( :diagnosis_is_aml )
	assert_should_not_require( :diagnosis_aml_type )
	assert_should_not_require( :diagnosis_is_other )
	assert_should_not_require( :flow_cyto_report_found )
	assert_should_not_require( :flow_cyto_cd10 )
	assert_should_not_require( :flow_cyto_igm )
	assert_should_not_require( :flow_cyto_igm_text )
	assert_should_not_require( :flow_cyto_bm_kappa )
	assert_should_not_require( :flow_cyto_bm_kappa_text )
	assert_should_not_require( :flow_cyto_bm_lambda )
	assert_should_not_require( :flow_cyto_bm_lambda_text )
	assert_should_not_require( :flow_cyto_cd10_19 )
	assert_should_not_require( :flow_cyto_cd10_19_text )
	assert_should_not_require( :flow_cyto_cd10_text )
	assert_should_not_require( :flow_cyto_cd19 )
	assert_should_not_require( :flow_cyto_cd19_text )
	assert_should_not_require( :flow_cyto_cd20 )
	assert_should_not_require( :flow_cyto_cd20_text )
	assert_should_not_require( :flow_cyto_cd21 )
	assert_should_not_require( :flow_cyto_cd21_text )
	assert_should_not_require( :flow_cyto_cd22 )
	assert_should_not_require( :flow_cyto_cd22_text )
	assert_should_not_require( :flow_cyto_cd23 )
	assert_should_not_require( :flow_cyto_cd23_text )
	assert_should_not_require( :flow_cyto_cd24 )
	assert_should_not_require( :flow_cyto_cd24_text )
	assert_should_not_require( :flow_cyto_cd40 )
	assert_should_not_require( :flow_cyto_cd40_text )
	assert_should_not_require( :flow_cyto_surface_ig )
	assert_should_not_require( :flow_cyto_surface_ig_text )
	assert_should_not_require( :flow_cyto_cd1a )
	assert_should_not_require( :flow_cyto_cd1a_text )
	assert_should_not_require( :flow_cyto_cd2 )
	assert_should_not_require( :flow_cyto_cd2_text )
	assert_should_not_require( :flow_cyto_cd3 )
	assert_should_not_require( :flow_cyto_cd3_text )
	assert_should_not_require( :flow_cyto_cd4 )
	assert_should_not_require( :flow_cyto_cd4_text )
	assert_should_not_require( :flow_cyto_cd5 )
	assert_should_not_require( :flow_cyto_cd5_text )
	assert_should_not_require( :flow_cyto_cd7 )
	assert_should_not_require( :flow_cyto_cd7_text )
	assert_should_not_require( :flow_cyto_cd8 )
	assert_should_not_require( :flow_cyto_cd8_text )
	assert_should_not_require( :flow_cyto_cd3_cd4 )
	assert_should_not_require( :flow_cyto_cd3_cd4_text )
	assert_should_not_require( :flow_cyto_cd3_cd8 )
	assert_should_not_require( :flow_cyto_cd3_cd8_text )
	assert_should_not_require( :flow_cyto_cd11b )
	assert_should_not_require( :flow_cyto_cd11b_text )
	assert_should_not_require( :flow_cyto_cd11c )
	assert_should_not_require( :flow_cyto_cd11c_text )
	assert_should_not_require( :flow_cyto_cd13 )
	assert_should_not_require( :flow_cyto_cd13_text )
	assert_should_not_require( :flow_cyto_cd15 )
	assert_should_not_require( :flow_cyto_cd15_text )
	assert_should_not_require( :flow_cyto_cd33 )
	assert_should_not_require( :flow_cyto_cd33_text )
	assert_should_not_require( :flow_cyto_cd41 )
	assert_should_not_require( :flow_cyto_cd41_text )
	assert_should_not_require( :flow_cyto_cdw65 )
	assert_should_not_require( :flow_cyto_cdw65_text )
	assert_should_not_require( :flow_cyto_cd34 )
	assert_should_not_require( :flow_cyto_cd34_text )
	assert_should_not_require( :flow_cyto_cd61 )
	assert_should_not_require( :flow_cyto_cd61_text )
	assert_should_not_require( :flow_cyto_cd14 )
	assert_should_not_require( :flow_cyto_cd14_text )
	assert_should_not_require( :flow_cyto_glycoa )
	assert_should_not_require( :flow_cyto_glycoa_text )
	assert_should_not_require( :flow_cyto_cd16 )
	assert_should_not_require( :flow_cyto_cd16_text )
	assert_should_not_require( :flow_cyto_cd56 )
	assert_should_not_require( :flow_cyto_cd56_text )
	assert_should_not_require( :flow_cyto_cd57 )
	assert_should_not_require( :flow_cyto_cd57_text )
	assert_should_not_require( :flow_cyto_cd9 )
	assert_should_not_require( :flow_cyto_cd9_text )
	assert_should_not_require( :flow_cyto_cd25 )
	assert_should_not_require( :flow_cyto_cd25_text )
	assert_should_not_require( :flow_cyto_cd38 )
	assert_should_not_require( :flow_cyto_cd38_text )
	assert_should_not_require( :flow_cyto_cd45 )
	assert_should_not_require( :flow_cyto_cd45_text )
	assert_should_not_require( :flow_cyto_cd71 )
	assert_should_not_require( :flow_cyto_cd71_text )
	assert_should_not_require( :flow_cyto_tdt )
	assert_should_not_require( :flow_cyto_tdt_text )
	assert_should_not_require( :flow_cyto_hladr )
	assert_should_not_require( :flow_cyto_hladr_text )
	assert_should_not_require( :flow_cyto_other_marker_1_name )
	assert_should_not_require( :flow_cyto_other_marker_1 )
	assert_should_not_require( :flow_cyto_other_marker_1_text )
	assert_should_not_require( :flow_cyto_other_marker_2_name )
	assert_should_not_require( :flow_cyto_other_marker_2 )
	assert_should_not_require( :flow_cyto_other_marker_2_text )
	assert_should_not_require( :flow_cyto_other_marker_3_name )
	assert_should_not_require( :flow_cyto_other_marker_3 )
	assert_should_not_require( :flow_cyto_other_marker_3_text )
	assert_should_not_require( :flow_cyto_other_marker_4_name )
	assert_should_not_require( :flow_cyto_other_marker_4 )
	assert_should_not_require( :flow_cyto_other_marker_4_text )
	assert_should_not_require( :flow_cyto_other_marker_5_name )
	assert_should_not_require( :flow_cyto_other_marker_5 )
	assert_should_not_require( :flow_cyto_other_marker_5_text )
	assert_should_not_require( :flow_cyto_remarks )
	assert_should_not_require( :tdt_often_found_flow_cytometry )
	assert_should_not_require( :tdt_report_found )
	assert_should_not_require( :tdt_positive_or_negative )
	assert_should_not_require( :response_comment_day_7 )
	assert_should_not_require( :response_comment_day_14 )
	assert_should_not_require( :hospital_fish_results )
	assert_should_not_require( :ucb_fish_results )
	assert_should_not_require( :response_hladr_day_14 )
	assert_should_not_require( :response_hladr_day_7 )
	assert_should_not_require( :histo_report_found )
	assert_should_not_require( :histo_report_results )
	assert_should_not_require( :response_other1_value_day_14 )
	assert_should_not_require( :response_other1_value_day_7 )
	assert_should_not_require( :response_other2_value_day_14 )
	assert_should_not_require( :response_other2_value_day_7 )
	assert_should_not_require( :response_other3_value_day_14 )
	assert_should_not_require( :response_other4_value_day_14 )
	assert_should_not_require( :response_other5_value_day_14 )
	assert_should_not_require( :h_and_p_reports_found )
	assert_should_not_require( :physical_neuro )
	assert_should_not_require( :physical_other_soft_2 )
	assert_should_not_require( :vital_status )
	assert_should_not_require( :physical_gingival )
	assert_should_not_require( :physical_leukemic_skin )
	assert_should_not_require( :physical_lymph )
	assert_should_not_require( :physical_spleen )
	assert_should_not_require( :physical_testicle )
	assert_should_not_require( :physical_other_soft )
	assert_should_not_require( :ploidy_report_found )
	assert_should_not_require( :is_hypodiploid )
	assert_should_not_require( :is_hyperdiploid )
	assert_should_not_require( :is_diploid )
	assert_should_not_require( :dna_index )
	assert_should_not_require( :other_dna_measure )
	assert_should_not_require( :ploidy_comment )
	assert_should_not_require( :response_comment )
	assert_should_not_require( :response_other1_name_day_14 )
	assert_should_not_require( :response_other1_name_day_7 )
	assert_should_not_require( :response_other2_name_day_14 )
	assert_should_not_require( :response_other2_name_day_7 )
	assert_should_not_require( :response_other3_name_day_14 )
	assert_should_not_require( :response_other4_name_day_14 )
	assert_should_not_require( :response_other5_name_day_14 )
	assert_should_not_require( :fab_classification )
	assert_should_not_require( :diagnosis_icdo_description )
	assert_should_not_require( :diagnosis_icdo_number )
	assert_should_not_require( :cytogen_t1221 )
	assert_should_not_require( :cytogen_inv16 )
	assert_should_not_require( :cytogen_t119 )
	assert_should_not_require( :cytogen_t821 )
	assert_should_not_require( :cytogen_t1517 )
	assert_should_not_require( :cytogen_is_hyperdiploidy )
	assert_should_not_require( :cytogen_chromosome_number )
	assert_should_not_require( :cytogen_other_trans_1 )
	assert_should_not_require( :cytogen_other_trans_2 )
	assert_should_not_require( :cytogen_other_trans_3 )
	assert_should_not_require( :cytogen_t922 )
	assert_should_not_require( :cytogen_other_trans_4 )
	assert_should_not_require( :cytogen_other_trans_5 )
	assert_should_not_require( :response_fab_subtype )
	assert_should_not_require( :response_tdt_day_14 )
	assert_should_not_require( :response_tdt_day_7 )
	assert_should_not_require( :abstract_version_description )


	assert_should_require_length( :response_classification_day_14,
		:maximum => 2 )
	assert_should_require_length( :response_classification_day_28,
		:maximum => 2 )
	assert_should_require_length( :response_classification_day_7,
		:maximum => 2 )
	assert_should_require_length( :response_blasts_units_day_14,
		:maximum => 15 )
	assert_should_require_length( :response_blasts_units_day_28,
		:maximum => 15 )
	assert_should_require_length( :response_blasts_units_day_7,
		:maximum => 15 )
	assert_should_require_length( :marrow_biopsy_diagnosis,
		:maximum => 65000 )
	assert_should_require_length( :marrow_aspirate_diagnosis,
		:maximum => 65000 )
	assert_should_require_length( :csf_white_blood_count_text,
		:maximum => 65000 )
	assert_should_require_length( :csf_red_blood_count_text,
		:maximum => 250 )
	assert_should_require_length( :blasts_are_present,
		:maximum => 250 )
	assert_should_require_length( :peripheral_blood_in_csf,
		:maximum => 250 )
	assert_should_require_length( :csf_comment,
		:maximum => 65000 )
	assert_should_require_length( :chemo_protocol_report_found,
		:maximum => 250 )
	assert_should_require_length( :chemo_protocol_name,
		:maximum => 250 )
	assert_should_require_length( :chemo_protocol_agent_description,
		:maximum => 65000 )
	assert_should_require_length( :response_cd10_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd10_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd13_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd13_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd14_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd14_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd15_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd15_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd19_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd19_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd19cd10_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd19cd10_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd1a_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd2a_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd20_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd20_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd3a_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd3_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd33_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd33_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd34_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd34_day_7,
		:maximum => 10 )
	assert_should_require_length( :response_cd4a_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd5a_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd56_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd61_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd7a_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_cd8a_day_14,
		:maximum => 10 )
	assert_should_require_length( :chest_imaging_report_found,
		:maximum => 5 )
	assert_should_require_length( :mediastial_mass_present,
		:maximum => 18 )
	assert_should_require_length( :chest_imaging_comment,
		:maximum => 65000 )
	assert_should_require_length( :received_chest_ct,
		:maximum => 50 )
	assert_should_require_length( :chest_ct_taken_on,
		:maximum => 50 )
	assert_should_require_length( :chest_ct_medmass_present,
		:maximum => 50 )
	assert_should_require_length( :cytogen_report_found,
		:maximum => 5 )
	assert_should_require_length( :conventional_karyotype_results,
		:maximum => 250 )
	assert_should_require_length( :normal_cytogen,
		:maximum => 5 )
	assert_should_require_length( :is_cytogen_hosp_fish_t1221_done,
		:maximum => 5 )
	assert_should_require_length( :is_karyotype_normal,
		:maximum => 5 )
	assert_should_require_length( :cytogen_comment,
		:maximum => 65000 )
	assert_should_require_length( :discharge_summary,
		:maximum => 65000 )
	assert_should_require_length( :diagnosis_is_all,
		:maximum => 20 )
	assert_should_require_length( :diagnosis_all_type,
		:maximum => 20 )
	assert_should_require_length( :diagnosis_is_cml,
		:maximum => 20 )
	assert_should_require_length( :diagnosis_is_cll,
		:maximum => 20 )
	assert_should_require_length( :diagnosis_is_aml,
		:maximum => 20 )
	assert_should_require_length( :diagnosis_aml_type,
		:maximum => 20 )
	assert_should_require_length( :diagnosis_is_other,
		:maximum => 40 )
	assert_should_require_length( :flow_cyto_report_found,
		:maximum => 5 )
	assert_should_require_length( :flow_cyto_cd10,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_igm,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_igm_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_bm_kappa,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_bm_kappa_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_bm_lambda,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_bm_lambda_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd10_19,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd10_19_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd10_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd19,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd19_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd20,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd20_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd21,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd21_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd22,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd22_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd23,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd23_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd24,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd24_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd40,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd40_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_surface_ig,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_surface_ig_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd1a,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd1a_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd2,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd2_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd3,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd3_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd4,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd4_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd5,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd5_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd7,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd7_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd8,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd8_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd3_cd4,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd3_cd4_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd3_cd8,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd3_cd8_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd11b,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd11b_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd11c,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd11c_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd13,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd13_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd15,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd15_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd33,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd33_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd41,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd41_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cdw65,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cdw65_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd34,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd34_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd61,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd61_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd14,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd14_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_glycoa,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_glycoa_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd16,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd16_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd56,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd56_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd57,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd57_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd9,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd9_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd25,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd25_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd38,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd38_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd45,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd45_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_cd71,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_cd71_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_tdt,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_tdt_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_hladr,
		:maximum => 10 )
	assert_should_require_length( :flow_cyto_hladr_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_other_marker_1_name,
		:maximum => 20 )
	assert_should_require_length( :flow_cyto_other_marker_1,
		:maximum => 4 )
	assert_should_require_length( :flow_cyto_other_marker_1_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_other_marker_2_name,
		:maximum => 20 )
	assert_should_require_length( :flow_cyto_other_marker_2,
		:maximum => 4 )
	assert_should_require_length( :flow_cyto_other_marker_2_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_other_marker_3_name,
		:maximum => 20 )
	assert_should_require_length( :flow_cyto_other_marker_3,
		:maximum => 4 )
	assert_should_require_length( :flow_cyto_other_marker_3_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_other_marker_4_name,
		:maximum => 20 )
	assert_should_require_length( :flow_cyto_other_marker_4,
		:maximum => 4 )
	assert_should_require_length( :flow_cyto_other_marker_4_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_other_marker_5_name,
		:maximum => 20 )
	assert_should_require_length( :flow_cyto_other_marker_5,
		:maximum => 4 )
	assert_should_require_length( :flow_cyto_other_marker_5_text,
		:maximum => 50 )
	assert_should_require_length( :flow_cyto_remarks,
		:maximum => 65000 )
	assert_should_require_length( :tdt_often_found_flow_cytometry,
		:maximum => 5 )
	assert_should_require_length( :tdt_report_found,
		:maximum => 5 )
	assert_should_require_length( :tdt_positive_or_negative,
		:maximum => 10 )
	assert_should_require_length( :response_comment_day_7,
		:maximum => 65000 )
	assert_should_require_length( :response_comment_day_14,
		:maximum => 65000 )
	assert_should_require_length( :hospital_fish_results,
		:maximum => 250 )
	assert_should_require_length( :ucb_fish_results,
		:maximum => 50 )
	assert_should_require_length( :response_hladr_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_hladr_day_7,
		:maximum => 10 )
	assert_should_require_length( :histo_report_found,
		:maximum => 5 )
	assert_should_require_length( :histo_report_results,
		:maximum => 65000 )
	assert_should_require_length( :response_other1_value_day_14,
		:maximum => 4 )
	assert_should_require_length( :response_other1_value_day_7,
		:maximum => 4 )
	assert_should_require_length( :response_other2_value_day_14,
		:maximum => 4 )
	assert_should_require_length( :response_other2_value_day_7,
		:maximum => 4 )
	assert_should_require_length( :response_other3_value_day_14,
		:maximum => 4 )
	assert_should_require_length( :response_other4_value_day_14,
		:maximum => 4 )
	assert_should_require_length( :response_other5_value_day_14,
		:maximum => 4 )
	assert_should_require_length( :h_and_p_reports_found,
		:maximum => 5 )
	assert_should_require_length( :physical_neuro,
		:maximum => 5 )
	assert_should_require_length( :physical_other_soft_2,
		:maximum => 5 )
	assert_should_require_length( :vital_status,
		:maximum => 5 )
	assert_should_require_length( :physical_gingival,
		:maximum => 5 )
	assert_should_require_length( :physical_leukemic_skin,
		:maximum => 5 )
	assert_should_require_length( :physical_lymph,
		:maximum => 5 )
	assert_should_require_length( :physical_spleen,
		:maximum => 5 )
	assert_should_require_length( :physical_testicle,
		:maximum => 5 )
	assert_should_require_length( :physical_other_soft,
		:maximum => 5 )
	assert_should_require_length( :ploidy_report_found,
		:maximum => 5 )
	assert_should_require_length( :is_hypodiploid,
		:maximum => 5 )
	assert_should_require_length( :is_hyperdiploid,
		:maximum => 5 )
	assert_should_require_length( :is_diploid,
		:maximum => 5 )
	assert_should_require_length( :dna_index,
		:maximum => 5 )
	assert_should_require_length( :other_dna_measure,
		:maximum => 15 )
	assert_should_require_length( :ploidy_comment,
		:maximum => 100 )
	assert_should_require_length( :response_comment,
		:maximum => 65000 )
	assert_should_require_length( :response_other1_name_day_14,
		:maximum => 25 )
	assert_should_require_length( :response_other1_name_day_7,
		:maximum => 25 )
	assert_should_require_length( :response_other2_name_day_14,
		:maximum => 25 )
	assert_should_require_length( :response_other2_name_day_7,
		:maximum => 25 )
	assert_should_require_length( :response_other3_name_day_14,
		:maximum => 25 )
	assert_should_require_length( :response_other4_name_day_14,
		:maximum => 25 )
	assert_should_require_length( :response_other5_name_day_14,
		:maximum => 25 )
	assert_should_require_length( :fab_classification,
		:maximum => 50 )
	assert_should_require_length( :diagnosis_icdo_description,
		:maximum => 55 )
	assert_should_require_length( :diagnosis_icdo_number,
		:maximum => 50 )
	assert_should_require_length( :cytogen_t1221,
		:maximum => 9 )
	assert_should_require_length( :cytogen_inv16,
		:maximum => 9 )
	assert_should_require_length( :cytogen_t119,
		:maximum => 9 )
	assert_should_require_length( :cytogen_t821,
		:maximum => 9 )
	assert_should_require_length( :cytogen_t1517,
		:maximum => 9 )
	assert_should_require_length( :cytogen_is_hyperdiploidy,
		:maximum => 5 )
	assert_should_require_length( :cytogen_chromosome_number,
		:maximum => 3 )
	assert_should_require_length( :cytogen_other_trans_1,
		:maximum => 35 )
	assert_should_require_length( :cytogen_other_trans_2,
		:maximum => 35 )
	assert_should_require_length( :cytogen_other_trans_3,
		:maximum => 35 )
	assert_should_require_length( :cytogen_t922,
		:maximum => 50 )
	assert_should_require_length( :cytogen_other_trans_4,
		:maximum => 35 )
	assert_should_require_length( :cytogen_other_trans_5,
		:maximum => 35 )
	assert_should_require_length( :response_fab_subtype,
		:maximum => 15 )
	assert_should_require_length( :response_tdt_day_14,
		:maximum => 10 )
	assert_should_require_length( :response_tdt_day_7,
		:maximum => 10 )
	assert_should_require_length( :abstract_version_description,
		:maximum => 250 )

end
