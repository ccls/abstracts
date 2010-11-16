require 'test_helper'

class AbstractTest < ActiveSupport::TestCase
#	assert_should_belong_to :subject

	assert_should_require_attribute_length( :response_classification_day_14,
		:maximum => 2 )
	assert_should_require_attribute_length( :response_classification_day_28,
		:maximum => 2 )
	assert_should_require_attribute_length( :response_classification_day_7,
		:maximum => 2 )
	assert_should_require_attribute_length( :response_blasts_units_day_14,
		:maximum => 15 )
	assert_should_require_attribute_length( :response_blasts_units_day_28,
		:maximum => 15 )
	assert_should_require_attribute_length( :response_blasts_units_day_7,
		:maximum => 15 )
	assert_should_require_attribute_length( :marrow_biopsy_diagnosis,
		:maximum => 65000 )
	assert_should_require_attribute_length( :marrow_aspirate_diagnosis,
		:maximum => 65000 )
	assert_should_require_attribute_length( :csf_white_blood_count_text,
		:maximum => 65000 )
	assert_should_require_attribute_length( :csf_red_blood_count_text,
		:maximum => 250 )
	assert_should_require_attribute_length( :blasts_are_present,
		:maximum => 250 )
	assert_should_require_attribute_length( :peripheral_blood_in_csf,
		:maximum => 250 )
	assert_should_require_attribute_length( :csf_comment,
		:maximum => 65000 )
	assert_should_require_attribute_length( :chemo_protocol_report_found,
		:maximum => 250 )
	assert_should_require_attribute_length( :chemo_protocol_name,
		:maximum => 250 )
	assert_should_require_attribute_length( :chemo_protocol_agent_description,
		:maximum => 65000 )
	assert_should_require_attribute_length( :response_CD10_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD10_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD13_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD13_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD14_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD14_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD15_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD15_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD19_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD19_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD19CD10_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD19CD10_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD1a_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD2a_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD20_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD20_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD3a_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD3_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD33_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD33_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD34_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD34_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD4a_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD5a_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD56_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD61_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD7a_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_CD8a_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :chest_imaging_report_found,
		:maximum => 5 )
	assert_should_require_attribute_length( :mediastial_mass_present,
		:maximum => 18 )
	assert_should_require_attribute_length( :chest_imaging_comment,
		:maximum => 65000 )
	assert_should_require_attribute_length( :received_chest_CT,
		:maximum => 50 )
	assert_should_require_attribute_length( :chest_CT_taken_on,
		:maximum => 50 )
	assert_should_require_attribute_length( :chest_CT_medmass_present,
		:maximum => 50 )
	assert_should_require_attribute_length( :cytogen_report_found,
		:maximum => 5 )
	assert_should_require_attribute_length( :conventional_karyotype_results,
		:maximum => 250 )
	assert_should_require_attribute_length( :normal_cytogen,
		:maximum => 5 )
	assert_should_require_attribute_length( :is_cytogen_hosp_fish_t1221_done,
		:maximum => 5 )
	assert_should_require_attribute_length( :is_karyotype_normal,
		:maximum => 5 )
	assert_should_require_attribute_length( :cytogen_comment,
		:maximum => 65000 )
	assert_should_require_attribute_length( :discharge_summary,
		:maximum => 65000 )
	assert_should_require_attribute_length( :diagnosis_is_ALL,
		:maximum => 20 )
	assert_should_require_attribute_length( :diagnosis_ALL_type,
		:maximum => 20 )
	assert_should_require_attribute_length( :diagnosis_is_CML,
		:maximum => 20 )
	assert_should_require_attribute_length( :diagnosis_is_CLL,
		:maximum => 20 )
	assert_should_require_attribute_length( :diagnosis_is_AML,
		:maximum => 20 )
	assert_should_require_attribute_length( :diagnosis_AML_type,
		:maximum => 20 )
	assert_should_require_attribute_length( :diagnosis_is_other,
		:maximum => 40 )
	assert_should_require_attribute_length( :flow_cyto_report_found,
		:maximum => 5 )
	assert_should_require_attribute_length( :flow_cyto_cd10,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_igM,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_igM_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_BM_kappa,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_BM_kappa_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_BM_lambda,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_BM_lambda_text,
		:maximum => 50 )
	assert_should_require_attribute_length( "flow_cyto_CD10+19",
		:maximum => 10 )
	assert_should_require_attribute_length( "flow_cyto_CD10+19_text",
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd10_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd19,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd19_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd20,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd20_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd21,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd21_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd22,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd22_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd23,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd23_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd24,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd24_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd40,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd40_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_surface_ig,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_surface_ig_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_CD1a,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_CD1a_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_CD2,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_CD2_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_CD3,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_CD3_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_CD4,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_CD4_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_CD5,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_CD5_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_CD7,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_CD7_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_CD8,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_CD8_text,
		:maximum => 50 )
	assert_should_require_attribute_length( "flow_cyto_CD3+CD4",
		:maximum => 10 )
	assert_should_require_attribute_length( "flow_cyto_CD3+CD4_text",
		:maximum => 50 )
	assert_should_require_attribute_length( "flow_cyto_CD3+CD8",
		:maximum => 10 )
	assert_should_require_attribute_length( "flow_cyto_CD3+CD8_text",
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd11b,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd11b_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd11c,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd11c_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd13,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd13_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd15,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd15_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd33,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd33_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd41,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd41_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cdw65,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cdw65_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd34,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd34_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd61,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd61_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd14,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd14_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_glycoA,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_glycoA_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd16,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd16_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd56,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd56_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd57,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd57_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd9,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd9_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd25,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd25_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd38,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd38_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd45,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd45_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_cd71,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_cd71_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_tdt,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_tdt_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_hladr,
		:maximum => 10 )
	assert_should_require_attribute_length( :flow_cyto_hladr_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_1_name,
		:maximum => 20 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_1,
		:maximum => 4 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_1_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_2_name,
		:maximum => 20 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_2,
		:maximum => 4 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_2_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_3_name,
		:maximum => 20 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_3,
		:maximum => 4 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_3_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_4_name,
		:maximum => 20 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_4,
		:maximum => 4 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_4_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_5_name,
		:maximum => 20 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_5,
		:maximum => 4 )
	assert_should_require_attribute_length( :flow_cyto_other_marker_5_text,
		:maximum => 50 )
	assert_should_require_attribute_length( :flow_cyto_remarks,
		:maximum => 65000 )
	assert_should_require_attribute_length( :Tdt_often_found_flow_cytometry,
		:maximum => 5 )
	assert_should_require_attribute_length( :tdt_report_found,
		:maximum => 5 )
	assert_should_require_attribute_length( :tdt_positive_or_negative,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_comment_day_7,
		:maximum => 65000 )
	assert_should_require_attribute_length( :response_comment_day_14,
		:maximum => 65000 )
	assert_should_require_attribute_length( :hospital_fish_results,
		:maximum => 250 )
	assert_should_require_attribute_length( :UCB_fish_results,
		:maximum => 50 )
	assert_should_require_attribute_length( :response_HLADR_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_HLADR_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :histo_report_found,
		:maximum => 5 )
#	assert_should_require_attribute_length( :#histo_report_results,Memo,null,,,
	assert_should_require_attribute_length( :response_other1_value_day_14,
		:maximum => 4 )
	assert_should_require_attribute_length( :response_other1_value_day_7,
		:maximum => 4 )
	assert_should_require_attribute_length( :response_other2_value_day_14,
		:maximum => 4 )
	assert_should_require_attribute_length( :response_other2_value_day_7,
		:maximum => 4 )
	assert_should_require_attribute_length( :response_other3_value_day_14,
		:maximum => 4 )
	assert_should_require_attribute_length( :response_other4_value_day_14,
		:maximum => 4 )
	assert_should_require_attribute_length( :response_other5_value_day_14,
		:maximum => 4 )
	assert_should_require_attribute_length( :h_and_p_reports_found,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_neuro,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_other_soft_2,
		:maximum => 5 )
	assert_should_require_attribute_length( :vital_status,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_gingival,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_leukemic_skin,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_lymph,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_spleen,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_testicle,
		:maximum => 5 )
	assert_should_require_attribute_length( :physical_other_soft,
		:maximum => 5 )
	assert_should_require_attribute_length( :ploidy_report_found,
		:maximum => 5 )
	assert_should_require_attribute_length( :is_hypodiploid,
		:maximum => 5 )
	assert_should_require_attribute_length( :is_hyperdiploid,
		:maximum => 5 )
	assert_should_require_attribute_length( :is_diploid,
		:maximum => 5 )
	assert_should_require_attribute_length( :DNA_index,
		:maximum => 5 )
	assert_should_require_attribute_length( :other_DNA_measure,
		:maximum => 15 )
	assert_should_require_attribute_length( :ploidy_comment,
		:maximum => 100 )
	assert_should_require_attribute_length( :response_comment,
		:maximum => 65000 )
	assert_should_require_attribute_length( :response_other1_name_day_14,
		:maximum => 25 )
	assert_should_require_attribute_length( :response_other1_name_day_7,
		:maximum => 25 )
	assert_should_require_attribute_length( :response_other2_name_day_14,
		:maximum => 25 )
	assert_should_require_attribute_length( :response_other2_name_day_7,
		:maximum => 25 )
	assert_should_require_attribute_length( :response_other3_name_day_14,
		:maximum => 25 )
	assert_should_require_attribute_length( :response_other4_name_day_14,
		:maximum => 25 )
	assert_should_require_attribute_length( :response_other5_name_day_14,
		:maximum => 25 )
	assert_should_require_attribute_length( :FAB_classification,
		:maximum => 50 )
	assert_should_require_attribute_length( :diagnosis_ICDO_description,
		:maximum => 55 )
	assert_should_require_attribute_length( :diagnosis_ICDO_number,
		:maximum => 50 )
	assert_should_require_attribute_length( :cytogen_t1221,
		:maximum => 9 )
	assert_should_require_attribute_length( :cytogen_inv16,
		:maximum => 9 )
	assert_should_require_attribute_length( :cytogen_t119,
		:maximum => 9 )
	assert_should_require_attribute_length( :cytogen_t821,
		:maximum => 9 )
	assert_should_require_attribute_length( :cytogen_t1517,
		:maximum => 9 )
	assert_should_require_attribute_length( :cytogen_is_hyperdiploidy,
		:maximum => 5 )
	assert_should_require_attribute_length( :cytogen_chromosome_number,
		:maximum => 3 )
	assert_should_require_attribute_length( :cytogen_other_trans_1,
		:maximum => 35 )
	assert_should_require_attribute_length( :cytogen_other_trans_2,
		:maximum => 35 )
	assert_should_require_attribute_length( :cytogen_other_trans_3,
		:maximum => 35 )
	assert_should_require_attribute_length( :cytogen_t922,
		:maximum => 50 )
	assert_should_require_attribute_length( :cytogen_other_trans_4,
		:maximum => 35 )
	assert_should_require_attribute_length( :cytogen_other_trans_5,
		:maximum => 35 )
	assert_should_require_attribute_length( :response_fab_subtype,
		:maximum => 15 )
	assert_should_require_attribute_length( :response_tdt_day_14,
		:maximum => 10 )
	assert_should_require_attribute_length( :response_tdt_day_7,
		:maximum => 10 )
	assert_should_require_attribute_length( :abstract_version_description,
		:maximum => 250 )

end
