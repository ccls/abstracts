Factory.define :abstract do |f|
	f.updated_at Time.now	#	to make it dirty
end
Factory.define :complete_abstract, :class => 'Abstract' do |f|
	f.sequence(:subject_id){|n| n }
	f.sequence(:response_day14or28_flag){|n| n }
	f.sequence(:received_bone_marrow_biopsy){|n| n }
	f.sequence(:received_h_and_p){|n| n }
	f.sequence(:received_other_reports){|n| n }
	f.sequence(:received_discharge_summary){|n| n }
	f.sequence(:received_chemo_protocol){|n| n }
	f.sequence(:received_resp_to_therapy){|n| n }
	f.sequence(:received_specify_other_reports){|n| "#{n}"}
	f.sequence(:received_bone_marrow_aspirate){|n| n }
	f.sequence(:received_flow_cytometry){|n| n }
	f.sequence(:received_ploidy){|n| n }
	f.sequence(:received_hla_typing){|n| n }
	f.sequence(:received_cytogenetics){|n| n }
	f.sequence(:received_cbc){|n| n }
	f.sequence(:received_csf){|n| n }
	f.sequence(:received_chest_xray){|n| n }
	f.sequence(:response_report_found_day_14){|n| n }
	f.sequence(:response_report_found_day_28){|n| n }
	f.sequence(:response_report_found_day_7){|n| n }
	f.response_report_on_day_14 Time.at(rand(1270000000))
	f.response_report_on_day_28 Time.at(rand(1270000000))
	f.response_report_on_day_7 Time.at(rand(1270000000))
	f.sequence(:response_classification_day_14){|n| "#{n}"}
	f.sequence(:response_classification_day_28){|n| "#{n}"}
	f.sequence(:response_classification_day_7){|n| "#{n}"}
	f.sequence(:response_blasts_day_14){|n| n }
	f.sequence(:response_blasts_day_28){|n| n }
	f.sequence(:response_blasts_day_7){|n| n }
	f.sequence(:response_blasts_units_day_14){|n| "#{n}"}
	f.sequence(:response_blasts_units_day_28){|n| "#{n}"}
	f.sequence(:response_blasts_units_day_7){|n| "#{n}"}
	f.sequence(:response_in_remission_day_14){|n| n }
	f.sequence(:marrow_biopsy_report_found){|n| n }
	f.marrow_biopsy_on Date.jd(2440000+rand(15000))
	f.sequence(:marrow_biopsy_diagnosis){|n| "#{n}"}
	f.sequence(:marrow_aspirate_report_found){|n| n }
	f.marrow_aspirate_taken_on Date.jd(2440000+rand(15000))
	f.sequence(:marrow_aspirate_diagnosis){|n| "#{n}"}
	f.sequence(:response_marrow_kappa_day_14){|n| n }
	f.sequence(:response_marrow_kappa_day_7){|n| n }
	f.sequence(:response_marrow_lambda_day_14){|n| n }
	f.sequence(:response_marrow_lambda_day_7){|n| n }
	f.sequence(:cbc_report_found){|n| n }
	f.cbc_report_on Date.jd(2440000+rand(15000))
	f.cbc_white_blood_count rand*1000
	f.sequence(:cbc_percent_blasts){|n| n }
	f.sequence(:cbc_number_blasts){|n| n }
	f.cbc_hemoglobin_level rand*1000
	f.sequence(:cbc_platelet_count){|n| n }
	f.sequence(:cerebrospinal_fluid_report_found){|n| n }
	f.csf_report_on Date.jd(2440000+rand(15000))
	f.sequence(:csf_white_blood_count){|n| n }
	f.sequence(:csf_white_blood_count_text){|n| "#{n}"}
	f.sequence(:csf_red_blood_count){|n| n }
	f.sequence(:csf_red_blood_count_text){|n| "#{n}"}
	f.sequence(:blasts_are_present){|n| "#{n}"}
	f.sequence(:number_of_blasts){|n| n }
	f.sequence(:peripheral_blood_in_csf){|n| "#{n}"}
	f.sequence(:csf_comment){|n| "#{n}"}
	f.sequence(:chemo_protocol_report_found){|n| "#{n}"}
	f.sequence(:patient_on_chemo_protocol){|n| n }
	f.sequence(:chemo_protocol_name){|n| "#{n}"}
	f.sequence(:chemo_protocol_agent_description){|n| "#{n}"}
	f.sequence(:response_cd10_day_14){|n| "#{n}"}
	f.sequence(:response_cd10_day_7){|n| "#{n}"}
	f.sequence(:response_cd13_day_14){|n| "#{n}"}
	f.sequence(:response_cd13_day_7){|n| "#{n}"}
	f.sequence(:response_cd14_day_14){|n| "#{n}"}
	f.sequence(:response_cd14_day_7){|n| "#{n}"}
	f.sequence(:response_cd15_day_14){|n| "#{n}"}
	f.sequence(:response_cd15_day_7){|n| "#{n}"}
	f.sequence(:response_cd19_day_14){|n| "#{n}"}
	f.sequence(:response_cd19_day_7){|n| "#{n}"}
	f.sequence(:response_cd19cd10_day_14){|n| "#{n}"}
	f.sequence(:response_cd19cd10_day_7){|n| "#{n}"}
	f.sequence(:response_cd1a_day_14){|n| "#{n}"}
	f.sequence(:response_cd2a_day_14){|n| "#{n}"}
	f.sequence(:response_cd20_day_14){|n| "#{n}"}
	f.sequence(:response_cd20_day_7){|n| "#{n}"}
	f.sequence(:response_cd3a_day_14){|n| "#{n}"}
	f.sequence(:response_cd3_day_7){|n| "#{n}"}
	f.sequence(:response_cd33_day_14){|n| "#{n}"}
	f.sequence(:response_cd33_day_7){|n| "#{n}"}
	f.sequence(:response_cd34_day_14){|n| "#{n}"}
	f.sequence(:response_cd34_day_7){|n| "#{n}"}
	f.sequence(:response_cd4a_day_14){|n| "#{n}"}
	f.sequence(:response_cd5a_day_14){|n| "#{n}"}
	f.sequence(:response_cd56_day_14){|n| "#{n}"}
	f.sequence(:response_cd61_day_14){|n| "#{n}"}
	f.sequence(:response_cd7a_day_14){|n| "#{n}"}
	f.sequence(:response_cd8a_day_14){|n| "#{n}"}
	f.sequence(:response_day30_is_in_remission){|n| n }
	f.sequence(:chest_imaging_report_found){|n| "#{n}"}
	f.chest_imaging_report_on Date.jd(2440000+rand(15000))
	f.sequence(:mediastial_mass_present){|n| "#{n}"}
	f.sequence(:chest_imaging_comment){|n| "#{n}"}
	f.sequence(:received_chest_ct){|n| "#{n}"}
	f.sequence(:chest_ct_taken_on){|n| "#{n}"}
	f.sequence(:chest_ct_medmass_present){|n| "#{n}"}
	f.sequence(:user_id){|n| n }
	f.sequence(:cytogen_trisomy10){|n| n }
	f.sequence(:cytogen_trisomy17){|n| n }
	f.sequence(:cytogen_trisomy21){|n| n }
	f.sequence(:is_down_syndrome_phenotype){|n| n }
	f.sequence(:cytogen_trisomy4){|n| n }
	f.sequence(:cytogen_trisomy5){|n| n }
	f.sequence(:cytogen_report_found){|n| "#{n}"}
	f.cytogen_report_on Date.jd(2440000+rand(15000))
	f.sequence(:conventional_karyotype_results){|n| "#{n}"}
	f.sequence(:normal_cytogen){|n| "#{n}"}
	f.sequence(:is_cytogen_hosp_fish_t1221_done){|n| "#{n}"}
	f.sequence(:is_karyotype_normal){|n| "#{n}"}
	f.sequence(:number_normal_metaphase_karyotype){|n| n }
	f.sequence(:number_metaphase_tested_karyotype){|n| n }
	f.sequence(:cytogen_comment){|n| "#{n}"}
	f.is_verification_complete [true,false][rand(2)]
	f.sequence(:discharge_summary){|n| "#{n}"}
	f.sequence(:diagnosis_is_b_all){|n| n }
	f.sequence(:diagnosis_is_t_all){|n| n }
	f.sequence(:diagnosis_is_all){|n| "#{n}"}
	f.sequence(:diagnosis_all_type){|n| "#{n}"}
	f.sequence(:diagnosis_is_cml){|n| "#{n}"}
	f.sequence(:diagnosis_is_cll){|n| "#{n}"}
	f.sequence(:diagnosis_is_aml){|n| "#{n}"}
	f.sequence(:diagnosis_aml_type){|n| "#{n}"}
	f.sequence(:diagnosis_is_other){|n| "#{n}"}
	f.sequence(:flow_cyto_report_found){|n| "#{n}"}
	f.sequence(:received_flow_cyto_day_14){|n| n }
	f.sequence(:received_flow_cyto_day_7){|n| n }
	f.flow_cyto_report_on Date.jd(2440000+rand(15000))
	f.response_flow_cyto_day_14_on Date.jd(2440000+rand(15000))
	f.response_flow_cyto_day_7_on Date.jd(2440000+rand(15000))
	f.sequence(:flow_cyto_cd10){|n| "#{n}"}
	f.sequence(:flow_cyto_igm){|n| "#{n}"}
	f.sequence(:flow_cyto_igm_text){|n| "#{n}"}
	f.sequence(:flow_cyto_bm_kappa){|n| "#{n}"}
	f.sequence(:flow_cyto_bm_kappa_text){|n| "#{n}"}
	f.sequence(:flow_cyto_bm_lambda){|n| "#{n}"}
	f.sequence(:flow_cyto_bm_lambda_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd10_19){|n| "#{n}"}
	f.sequence(:flow_cyto_cd10_19_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd10_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd19){|n| "#{n}"}
	f.sequence(:flow_cyto_cd19_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd20){|n| "#{n}"}
	f.sequence(:flow_cyto_cd20_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd21){|n| "#{n}"}
	f.sequence(:flow_cyto_cd21_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd22){|n| "#{n}"}
	f.sequence(:flow_cyto_cd22_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd23){|n| "#{n}"}
	f.sequence(:flow_cyto_cd23_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd24){|n| "#{n}"}
	f.sequence(:flow_cyto_cd24_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd40){|n| "#{n}"}
	f.sequence(:flow_cyto_cd40_text){|n| "#{n}"}
	f.sequence(:flow_cyto_surface_ig){|n| "#{n}"}
	f.sequence(:flow_cyto_surface_ig_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd1a){|n| "#{n}"}
	f.sequence(:flow_cyto_cd1a_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd2){|n| "#{n}"}
	f.sequence(:flow_cyto_cd2_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd3){|n| "#{n}"}
	f.sequence(:flow_cyto_cd3_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd4){|n| "#{n}"}
	f.sequence(:flow_cyto_cd4_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd5){|n| "#{n}"}
	f.sequence(:flow_cyto_cd5_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd7){|n| "#{n}"}
	f.sequence(:flow_cyto_cd7_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd8){|n| "#{n}"}
	f.sequence(:flow_cyto_cd8_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd3_cd4){|n| "#{n}"}
	f.sequence(:flow_cyto_cd3_cd4_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd3_cd8){|n| "#{n}"}
	f.sequence(:flow_cyto_cd3_cd8_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd11b){|n| "#{n}"}
	f.sequence(:flow_cyto_cd11b_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd11c){|n| "#{n}"}
	f.sequence(:flow_cyto_cd11c_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd13){|n| "#{n}"}
	f.sequence(:flow_cyto_cd13_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd15){|n| "#{n}"}
	f.sequence(:flow_cyto_cd15_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd33){|n| "#{n}"}
	f.sequence(:flow_cyto_cd33_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd41){|n| "#{n}"}
	f.sequence(:flow_cyto_cd41_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cdw65){|n| "#{n}"}
	f.sequence(:flow_cyto_cdw65_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd34){|n| "#{n}"}
	f.sequence(:flow_cyto_cd34_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd61){|n| "#{n}"}
	f.sequence(:flow_cyto_cd61_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd14){|n| "#{n}"}
	f.sequence(:flow_cyto_cd14_text){|n| "#{n}"}
	f.sequence(:flow_cyto_glycoa){|n| "#{n}"}
	f.sequence(:flow_cyto_glycoa_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd16){|n| "#{n}"}
	f.sequence(:flow_cyto_cd16_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd56){|n| "#{n}"}
	f.sequence(:flow_cyto_cd56_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd57){|n| "#{n}"}
	f.sequence(:flow_cyto_cd57_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd9){|n| "#{n}"}
	f.sequence(:flow_cyto_cd9_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd25){|n| "#{n}"}
	f.sequence(:flow_cyto_cd25_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd38){|n| "#{n}"}
	f.sequence(:flow_cyto_cd38_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd45){|n| "#{n}"}
	f.sequence(:flow_cyto_cd45_text){|n| "#{n}"}
	f.sequence(:flow_cyto_cd71){|n| "#{n}"}
	f.sequence(:flow_cyto_cd71_text){|n| "#{n}"}
	f.sequence(:flow_cyto_tdt){|n| "#{n}"}
	f.sequence(:flow_cyto_tdt_text){|n| "#{n}"}
	f.sequence(:flow_cyto_hladr){|n| "#{n}"}
	f.sequence(:flow_cyto_hladr_text){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_1_name){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_1){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_1_text){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_2_name){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_2){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_2_text){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_3_name){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_3){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_3_text){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_4_name){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_4){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_4_text){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_5_name){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_5){|n| "#{n}"}
	f.sequence(:flow_cyto_other_marker_5_text){|n| "#{n}"}
	f.sequence(:flow_cyto_remarks){|n| "#{n}"}
	f.sequence(:tdt_often_found_flow_cytometry){|n| "#{n}"}
	f.sequence(:tdt_report_found){|n| "#{n}"}
	f.tdt_report_on Date.jd(2440000+rand(15000))
	f.sequence(:tdt_positive_or_negative){|n| "#{n}"}
	f.sequence(:tdt_numerical_result){|n| n }
	f.tdt_found_in_flow_cyto_chart [true,false][rand(2)]
	f.tdt_found_in_separate_report [true,false][rand(2)]
	f.sequence(:response_comment_day_7){|n| "#{n}"}
	f.sequence(:response_comment_day_14){|n| "#{n}"}
	f.sequence(:cytogen_karyotype_done){|n| n }
	f.sequence(:cytogen_hospital_fish_done){|n| n }
	f.sequence(:hospital_fish_results){|n| "#{n}"}
	f.sequence(:cytogen_ucb_fish_done){|n| n }
	f.sequence(:ucb_fish_results){|n| "#{n}"}
	f.sequence(:response_hladr_day_14){|n| "#{n}"}
	f.sequence(:response_hladr_day_7){|n| "#{n}"}
	f.sequence(:histo_report_found){|n| "#{n}"}
	f.histo_report_on Date.jd(2440000+rand(15000))
	f.sequence(:histo_report_results){|n| "#{n}"}
	f.diagnosed_on Date.jd(2440000+rand(15000))
	f.treatment_began_on Date.jd(2440000+rand(15000))
	f.sequence(:response_is_inconclusive_day_14){|n| n }
	f.sequence(:response_is_inconclusive_day_21){|n| n }
	f.sequence(:response_is_inconclusive_day_28){|n| n }
	f.sequence(:response_is_inconclusive_day_7){|n| n }
	f.sequence(:abstractor_id){|n| n }
	f.abstracted_on Date.jd(2440000+rand(15000))
	f.sequence(:reviewer_id){|n| n }
	f.reviewed_on Date.jd(2440000+rand(15000))
	f.data_entry_done_on Date.jd(2440000+rand(15000))
	f.sequence(:abstract_version_number){|n| n }
	f.sequence(:flow_cyto_num_results_available){|n| n }
	f.sequence(:response_other1_value_day_14){|n| "#{n}"}
	f.sequence(:response_other1_value_day_7){|n| "#{n}"}
	f.sequence(:response_other2_value_day_14){|n| "#{n}"}
	f.sequence(:response_other2_value_day_7){|n| "#{n}"}
	f.sequence(:response_other3_value_day_14){|n| "#{n}"}
	f.sequence(:response_other4_value_day_14){|n| "#{n}"}
	f.sequence(:response_other5_value_day_14){|n| "#{n}"}
	f.sequence(:h_and_p_reports_found){|n| "#{n}"}
	f.is_h_and_p_report_found [true,false][rand(2)]
	f.h_and_p_reports_on Date.jd(2440000+rand(15000))
	f.sequence(:physical_neuro){|n| "#{n}"}
	f.sequence(:physical_other_soft_2){|n| "#{n}"}
	f.sequence(:vital_status){|n| "#{n}"}
	f.dod Time.at(rand(1270000000))
	f.sequence(:discharge_summary_found){|n| n }
	f.sequence(:physical_gingival){|n| "#{n}"}
	f.sequence(:physical_leukemic_skin){|n| "#{n}"}
	f.sequence(:physical_lymph){|n| "#{n}"}
	f.sequence(:physical_spleen){|n| "#{n}"}
	f.sequence(:physical_testicle){|n| "#{n}"}
	f.sequence(:physical_other_soft){|n| "#{n}"}
	f.sequence(:ploidy_report_found){|n| "#{n}"}
	f.ploidy_report_on Date.jd(2440000+rand(15000))
	f.sequence(:is_hypodiploid){|n| "#{n}"}
	f.sequence(:is_hyperdiploid){|n| "#{n}"}
	f.sequence(:is_diploid){|n| "#{n}"}
	f.sequence(:dna_index){|n| "#{n}"}
	f.sequence(:other_dna_measure){|n| "#{n}"}
	f.sequence(:ploidy_comment){|n| "#{n}"}
	f.sequence(:hepatomegaly_present){|n| n }
	f.sequence(:splenomegaly_present){|n| n }
	f.sequence(:response_comment){|n| "#{n}"}
	f.sequence(:response_other1_name_day_14){|n| "#{n}"}
	f.sequence(:response_other1_name_day_7){|n| "#{n}"}
	f.sequence(:response_other2_name_day_14){|n| "#{n}"}
	f.sequence(:response_other2_name_day_7){|n| "#{n}"}
	f.sequence(:response_other3_name_day_14){|n| "#{n}"}
	f.sequence(:response_other4_name_day_14){|n| "#{n}"}
	f.sequence(:response_other5_name_day_14){|n| "#{n}"}
	f.sequence(:fab_classification){|n| "#{n}"}
	f.sequence(:diagnosis_icdo_description){|n| "#{n}"}
	f.sequence(:diagnosis_icdo_number){|n| "#{n}"}
	f.sequence(:cytogen_t1221){|n| "#{n}"}
	f.sequence(:cytogen_inv16){|n| "#{n}"}
	f.sequence(:cytogen_t119){|n| "#{n}"}
	f.sequence(:cytogen_t821){|n| "#{n}"}
	f.sequence(:cytogen_t1517){|n| "#{n}"}
	f.sequence(:cytogen_is_hyperdiploidy){|n| "#{n}"}
	f.sequence(:cytogen_chromosome_number){|n| "#{n}"}
	f.sequence(:cytogen_other_trans_1){|n| "#{n}"}
	f.sequence(:cytogen_other_trans_2){|n| "#{n}"}
	f.sequence(:cytogen_other_trans_3){|n| "#{n}"}
	f.sequence(:cytogen_t922){|n| "#{n}"}
	f.sequence(:cytogen_other_trans_4){|n| "#{n}"}
	f.sequence(:cytogen_other_trans_5){|n| "#{n}"}
	f.sequence(:response_fab_subtype){|n| "#{n}"}
	f.sequence(:response_tdt_day_14){|n| "#{n}"}
	f.sequence(:response_tdt_day_7){|n| "#{n}"}
	f.sequence(:abstract_version_description){|n| "#{n}"}
	f.sequence(:abstract_version_id){|n| n }
end
