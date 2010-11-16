class CreateAbstracts < ActiveRecord::Migration
	def self.up
		create_table :abstracts do |t|
			t.integer  :subject_id							#, :null => false
			t.integer  :response_day14or28_flag
			t.integer  :received_bone_marrow_biopsy
			t.integer  :received_h_and_p
			t.integer  :received_other_reports
			t.integer  :received_discharge_summary
			t.integer  :received_other_reports
			t.integer  :received_chemo_protocol
			t.integer  :received_resp_to_therapy
			t.text     :received_specify_other_reports
			t.integer  :received_bone_marrow_aspirate
			t.integer  :received_flow_cytometry
			t.integer  :received_ploidy
			t.integer  :received_hla_typing
			t.integer  :received_cytogenetics
			t.integer  :received_cbc
			t.integer  :received_csf
			t.integer  :received_chest_xray
			t.integer  :response_report_found_day_14
			t.integer  :response_report_found_day_28
			t.integer  :response_report_found_day_7
			t.datetime :response_report_on_day_14
			t.datetime :response_report_on_day_28
			t.datetime :response_report_on_day_7
			t.string   :response_classification_day_14, :limit => 2
			t.string   :response_classification_day_28, :limit => 2
			t.string   :response_classification_day_7,  :limit => 2
			t.integer  :response_blasts_day_14
			t.integer  :response_blasts_day_28
			t.integer  :response_blasts_day_7
			t.string   :response_blasts_units_day_14, :limit => 15
			t.string   :response_blasts_units_day_28, :limit => 15
			t.string   :response_blasts_units_day_7,  :limit => 15
			t.integer  :response_in_remission_day_14
			t.integer  :marrow_biopsy_report_found
			t.datetime :marrow_biopsy_on
			t.text     :marrow_biopsy_diagnosis
			t.integer  :marrow_aspirate_report_found
			t.datetime :marrow_aspirate_taken_on
			t.text     :marrow_aspirate_diagnosis
			t.integer  :response_marrow_kappa_day_14
			t.integer  :response_marrow_kappa_day_7
			t.integer  :response_marrow_lambda_day_14
			t.integer  :response_marrow_lambda_day_7
			t.integer  :cbc_report_found
			t.datetime :cbc_report_on
			t.decimal  :cbc_white_blood_count
			t.integer  :cbc_percent_blasts
			t.integer  :cbc_number_blasts
			t.decimal  :cbc_hemoglobin_level
			t.integer  :cbc_platelet_count
			t.integer  :cerebrospinal_fluid_report_found
			t.datetime :csf_report_on
			t.integer  :csf_white_blood_count
			t.text     :csf_white_blood_count_text
			t.integer  :csf_red_blood_count
			t.string   :csf_red_blood_count_text
			t.string   :blasts_are_present
			t.integer  :number_of_blasts
			t.string   :peripheral_blood_in_csf
			t.text     :csf_comment
			t.string   :chemo_protocol_report_found
			t.integer  :patient_on_chemo_protocol
			t.string   :chemo_protocol_name
			t.text     :chemo_protocol_agent_description
			t.string   :response_CD10_day_14, :limit => 10
			t.string   :response_CD10_day_7,  :limit => 10
			t.string   :response_CD13_day_14, :limit => 10
			t.string   :response_CD13_day_7,  :limit => 10
			t.string   :response_CD14_day_14, :limit => 10
			t.string   :response_CD14_day_7,  :limit => 10
			t.string   :response_CD15_day_14, :limit => 10
			t.string   :response_CD15_day_7,  :limit => 10
			t.string   :response_CD19_day_14, :limit => 10
			t.string   :response_CD19_day_7,  :limit => 10
			t.string   :response_CD19CD10_day_14, :limit => 10
			t.string   :response_CD19CD10_day_7,  :limit => 10
			t.string   :response_CD1a_day_14, :limit => 10
			t.string   :response_CD2a_day_14, :limit => 10
			t.string   :response_CD20_day_14, :limit => 10
			t.string   :response_CD20_day_7,  :limit => 10
			t.string   :response_CD3a_day_14, :limit => 10
			t.string   :response_CD3_day_7,   :limit => 10
			t.string   :response_CD33_day_14, :limit => 10
			t.string   :response_CD33_day_7,  :limit => 10
			t.string   :response_CD34_day_14, :limit => 10
			t.string   :response_CD34_day_7,  :limit => 10
			t.string   :response_CD4a_day_14, :limit => 10
			t.string   :response_CD5a_day_14, :limit => 10
			t.string   :response_CD56_day_14, :limit => 10
			t.string   :response_CD61_day_14, :limit => 10
			t.string   :response_CD7a_day_14, :limit => 10
			t.string   :response_CD8a_day_14, :limit => 10
			t.integer  :response_day30_is_in_remission
			t.string   :chest_imaging_report_found, :limit => 5
			t.datetime :chest_imaging_report_on
			t.string   :mediastial_mass_present, :limit => 18
			t.text     :chest_imaging_comment
			t.string   :received_chest_CT, :limit => 50
			t.string   :chest_CT_taken_on, :limit => 50
			t.string   :chest_CT_medmass_present, :limit => 50
#			t.datetime :created_at	# TODO created_at used by rails
			t.integer  :created_by
			t.integer  :cytogen_trisomy10
			t.integer  :cytogen_trisomy17
			t.integer  :cytogen_trisomy21
			t.integer  :is_down_syndrome_phenotype
			t.integer  :cytogen_trisomy4
			t.integer  :cytogen_trisomy5
			t.string   :cytogen_report_found, :limit => 5
			t.datetime :cytogen_report_on
			t.string   :conventional_karyotype_results
			t.string   :normal_cytogen, :limit => 5
			t.string   :is_cytogen_hosp_fish_t1221_done, :limit => 5
			t.string   :is_karyotype_normal, :limit => 5
			t.integer  :number_normal_metaphase_karyotype
			t.integer  :number_metaphase_tested_karyotype
			t.text     :cytogen_comment
			t.boolean  :is_verification_complete
			t.text     :discharge_summary
			t.integer  :diagnosis_is_B_ALL
			t.integer  :diagnosis_is_T_ALL
			t.string   :diagnosis_is_ALL,   :limit => 20
			t.string   :diagnosis_ALL_type, :limit => 20
			t.string   :diagnosis_is_CML,   :limit => 20
			t.string   :diagnosis_is_CLL,   :limit => 20
			t.string   :diagnosis_is_AML,   :limit => 20
			t.string   :diagnosis_AML_type, :limit => 20
			t.string   :diagnosis_is_other, :limit => 40
			t.string   :flow_cyto_report_found, :limit => 5
			t.integer  :received_flow_cyto_day_14
			t.integer  :received_flow_cyto_day_7
			t.datetime :flow_cyto_report_on
			t.datetime :response_flow_cyto_day_14_on
			t.datetime :response_flow_cyto_day_7_on
			t.string   :flow_cyto_cd10, :limit => 10
			t.string   :flow_cyto_igM,  :limit => 10
			t.string   :flow_cyto_igM_text, :limit => 50
			t.string   :flow_cyto_BM_kappa, :limit => 10
			t.string   :flow_cyto_BM_kappa_text, :limit => 50
			t.string   :flow_cyto_BM_lambda, :limit => 10
			t.string   :flow_cyto_BM_lambda_text, :limit => 50
			t.string   "flow_cyto_CD10+19", :limit => 10
			t.string   "flow_cyto_CD10+19_text", :limit => 50
			t.string   :flow_cyto_cd10_text, :limit => 50
			t.string   :flow_cyto_cd19, :limit => 10
			t.string   :flow_cyto_cd19_text, :limit => 50
			t.string   :flow_cyto_cd20, :limit => 10
			t.string   :flow_cyto_cd20_text, :limit => 50
			t.string   :flow_cyto_cd21, :limit => 10
			t.string   :flow_cyto_cd21_text, :limit => 50
			t.string   :flow_cyto_cd22, :limit => 10
			t.string   :flow_cyto_cd22_text, :limit => 50
			t.string   :flow_cyto_cd23, :limit => 10
			t.string   :flow_cyto_cd23_text, :limit => 50
			t.string   :flow_cyto_cd24, :limit => 10
			t.string   :flow_cyto_cd24_text, :limit => 50
			t.string   :flow_cyto_cd40, :limit => 10
			t.string   :flow_cyto_cd40_text, :limit => 50
			t.string   :flow_cyto_surface_ig, :limit => 10
			t.string   :flow_cyto_surface_ig_text, :limit => 50
			t.string   :flow_cyto_CD1a, :limit => 10
			t.string   :flow_cyto_CD1a_text, :limit => 50
			t.string   :flow_cyto_CD2, :limit => 10
			t.string   :flow_cyto_CD2_text, :limit => 50
			t.string   :flow_cyto_CD3, :limit => 10
			t.string   :flow_cyto_CD3_text, :limit => 50
			t.string   :flow_cyto_CD4, :limit => 10
			t.string   :flow_cyto_CD4_text, :limit => 50
			t.string   :flow_cyto_CD5, :limit => 10
			t.string   :flow_cyto_CD5_text, :limit => 50
			t.string   :flow_cyto_CD7, :limit => 10
			t.string   :flow_cyto_CD7_text, :limit => 50
			t.string   :flow_cyto_CD8, :limit => 10
			t.string   :flow_cyto_CD8_text, :limit => 50
			t.string   "flow_cyto_CD3+CD4", :limit => 10
			t.string   "flow_cyto_CD3+CD4_text", :limit => 50
			t.string   "flow_cyto_CD3+CD8", :limit => 10
			t.string   "flow_cyto_CD3+CD8_text", :limit => 50
			t.string   :flow_cyto_cd11b, :limit => 10
			t.string   :flow_cyto_cd11b_text, :limit => 50
			t.string   :flow_cyto_cd11c, :limit => 10
			t.string   :flow_cyto_cd11c_text, :limit => 50
			t.string   :flow_cyto_cd13, :limit => 10
			t.string   :flow_cyto_cd13_text, :limit => 50
			t.string   :flow_cyto_cd15, :limit => 10
			t.string   :flow_cyto_cd15_text, :limit => 50
			t.string   :flow_cyto_cd33, :limit => 10
			t.string   :flow_cyto_cd33_text, :limit => 50
			t.string   :flow_cyto_cd41, :limit => 10
			t.string   :flow_cyto_cd41_text, :limit => 50
			t.string   :flow_cyto_cdw65, :limit => 10
			t.string   :flow_cyto_cdw65_text, :limit => 50
			t.string   :flow_cyto_cd34, :limit => 10
			t.string   :flow_cyto_cd34_text, :limit => 50
			t.string   :flow_cyto_cd61, :limit => 10
			t.string   :flow_cyto_cd61_text, :limit => 50
			t.string   :flow_cyto_cd14, :limit => 10
			t.string   :flow_cyto_cd14_text, :limit => 50
			t.string   :flow_cyto_glycoA, :limit => 10
			t.string   :flow_cyto_glycoA_text, :limit => 50
			t.string   :flow_cyto_cd16, :limit => 10
			t.string   :flow_cyto_cd16_text, :limit => 50
			t.string   :flow_cyto_cd56, :limit => 10
			t.string   :flow_cyto_cd56_text, :limit => 50
			t.string   :flow_cyto_cd57, :limit => 10
			t.string   :flow_cyto_cd57_text, :limit => 50
			t.string   :flow_cyto_cd9, :limit => 10
			t.string   :flow_cyto_cd9_text, :limit => 50
			t.string   :flow_cyto_cd25, :limit => 10
			t.string   :flow_cyto_cd25_text, :limit => 50
			t.string   :flow_cyto_cd38, :limit => 10
			t.string   :flow_cyto_cd38_text, :limit => 50
			t.string   :flow_cyto_cd45, :limit => 10
			t.string   :flow_cyto_cd45_text, :limit => 50
			t.string   :flow_cyto_cd71, :limit => 10
			t.string   :flow_cyto_cd71_text, :limit => 50
			t.string   :flow_cyto_tdt, :limit => 10
			t.string   :flow_cyto_tdt_text, :limit => 50
			t.string   :flow_cyto_hladr, :limit => 10
			t.string   :flow_cyto_hladr_text, :limit => 50
			t.string   :flow_cyto_other_marker_1_name, :limit => 20
			t.string   :flow_cyto_other_marker_1, :limit => 4
			t.string   :flow_cyto_other_marker_1_text, :limit => 50
			t.string   :flow_cyto_other_marker_2_name, :limit => 20
			t.string   :flow_cyto_other_marker_2, :limit => 4
			t.string   :flow_cyto_other_marker_2_text, :limit => 50
			t.string   :flow_cyto_other_marker_3_name, :limit => 20
			t.string   :flow_cyto_other_marker_3, :limit => 4
			t.string   :flow_cyto_other_marker_3_text, :limit => 50
			t.string   :flow_cyto_other_marker_4_name, :limit => 20
			t.string   :flow_cyto_other_marker_4, :limit => 4
			t.string   :flow_cyto_other_marker_4_text, :limit => 50
			t.string   :flow_cyto_other_marker_5_name, :limit => 20
			t.string   :flow_cyto_other_marker_5, :limit => 4
			t.string   :flow_cyto_other_marker_5_text, :limit => 50
			t.text     :flow_cyto_remarks
			t.string   :Tdt_often_found_flow_cytometry, :limit => 5
			t.string   :tdt_report_found, :limit => 5
			t.datetime :tdt_report_on
			t.string   :tdt_positive_or_negative, :limit => 10
			t.integer  :tdt_numerical_result
			t.boolean  :tdt_found_in_flow_cyto_chart
			t.boolean  :tdt_found_in_separate_report
			t.text     :response_comment_day_7
			t.text     :response_comment_day_14
			t.integer  :cytogen_karyotype_done
			t.integer  :cytogen_hospital_fish_done
			t.string   :hospital_fish_results
			t.integer  :cytogen_UCB_fish_done
			t.string   :UCB_fish_results, :limit => 50
			t.string   :response_HLADR_day_14, :limit => 10
			t.string   :response_HLADR_day_7, :limit => 10
			t.string   :histo_report_found, :limit => 5
			t.datetime :histo_report_on
#			histo_report_results,Memo,null,,,		#	TODO what's a Memo
			t.datetime :diagnosed_on
			t.datetime :treatment_began_on
			t.integer  :response_is_inconclusive_day_14
			t.integer  :response_is_inconclusive_day_21
			t.integer  :response_is_inconclusive_day_28
			t.integer  :response_is_inconclusive_day_7
			t.integer  :abstracted_by
			t.datetime :abstracted_on
			t.integer  :reviewed_by
			t.datetime :reviewed_on
			t.integer  :data_entry_by
			t.datetime :data_entry_done_on
			t.integer  :abstract_version_number
			t.integer  :flow_cyto_num_results_available
			t.string   :response_other1_value_day_14, :limit => 4
			t.string   :response_other1_value_day_7,  :limit => 4
			t.string   :response_other2_value_day_14, :limit => 4
			t.string   :response_other2_value_day_7,  :limit => 4
			t.string   :response_other3_value_day_14, :limit => 4
			t.string   :response_other4_value_day_14, :limit => 4
			t.string   :response_other5_value_day_14, :limit => 4
			t.string   :h_and_p_reports_found, :limit => 5
			t.integer  :received_discharge_summary
			t.boolean  :is_h_and_p_report_found
			t.datetime :h_and_p_reports_on
			t.string   :physical_neuro, :limit => 5
			t.string   :physical_other_soft_2, :limit => 5
			t.string   :vital_status, :limit => 5
			t.datetime :dod
			t.integer  :discharge_summary_found
			t.string   :physical_gingival, :limit => 5
			t.string   :physical_leukemic_skin, :limit => 5
			t.string   :physical_lymph, :limit => 5
			t.string   :physical_spleen, :limit => 5
			t.string   :physical_testicle, :limit => 5
			t.string   :physical_other_soft, :limit => 5
			t.string   :ploidy_report_found, :limit => 5
			t.datetime :ploidy_report_on
			t.string   :is_hypodiploid, :limit => 5
			t.string   :is_hyperdiploid, :limit => 5
			t.string   :is_diploid, :limit => 5
			t.string   :DNA_index, :limit => 5
			t.string   :other_DNA_measure, :limit => 15
			t.string   :ploidy_comment, :limit => 100
			t.integer  :hepatomegaly_present
			t.integer  :splenomegaly_present
			t.text     :response_comment
			t.string   :response_other1_name_day_14, :limit => 25
			t.string   :response_other1_name_day_7,  :limit => 25
			t.string   :response_other2_name_day_14, :limit => 25
			t.string   :response_other2_name_day_7,  :limit => 25
			t.string   :response_other3_name_day_14, :limit => 25
			t.string   :response_other4_name_day_14, :limit => 25
			t.string   :response_other5_name_day_14, :limit => 25
			t.string   :FAB_classification, :limit => 50
			t.string   :diagnosis_ICDO_description, :limit => 55
			t.string   :diagnosis_ICDO_number, :limit => 50
			t.string   :cytogen_t1221, :limit => 9
			t.string   :cytogen_inv16, :limit => 9
			t.string   :cytogen_t119,  :limit => 9
			t.string   :cytogen_t821,  :limit => 9
			t.string   :cytogen_t1517, :limit => 9
			t.string   :cytogen_is_hyperdiploidy,  :limit => 5
			t.string   :cytogen_chromosome_number, :limit => 3
			t.string   :cytogen_other_trans_1, :limit => 35
			t.string   :cytogen_other_trans_2, :limit => 35
			t.string   :cytogen_other_trans_3, :limit => 35
			t.string   :cytogen_t922, :limit => 50
			t.string   :cytogen_other_trans_4, :limit => 35
			t.string   :cytogen_other_trans_5, :limit => 35
			t.string   :response_fab_subtype, :limit => 15
			t.string   :response_tdt_day_14, :limit => 10
			t.string   :response_tdt_day_7,  :limit => 10
			t.string   :abstract_version_description
			t.integer  :abstract_version_id
			t.timestamps
		end
	end

	def self.down
		drop_table :abstracts
	end
end
