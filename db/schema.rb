# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110118210521) do

  create_table "abstracts", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "response_day14or28_flag"
    t.integer  "received_bone_marrow_biopsy"
    t.integer  "received_h_and_p"
    t.integer  "received_other_reports"
    t.integer  "received_discharge_summary"
    t.integer  "received_chemo_protocol"
    t.integer  "received_resp_to_therapy"
    t.text     "received_specify_other_reports"
    t.integer  "received_bone_marrow_aspirate"
    t.integer  "received_flow_cytometry"
    t.integer  "received_ploidy"
    t.integer  "received_hla_typing"
    t.integer  "received_cytogenetics"
    t.integer  "received_cbc"
    t.integer  "received_csf"
    t.integer  "received_chest_xray"
    t.integer  "response_report_found_day_14"
    t.integer  "response_report_found_day_28"
    t.integer  "response_report_found_day_7"
    t.date     "response_report_on_day_14"
    t.date     "response_report_on_day_28"
    t.date     "response_report_on_day_7"
    t.string   "response_classification_day_14",    :limit => 2
    t.string   "response_classification_day_28",    :limit => 2
    t.string   "response_classification_day_7",     :limit => 2
    t.integer  "response_blasts_day_14"
    t.integer  "response_blasts_day_28"
    t.integer  "response_blasts_day_7"
    t.string   "response_blasts_units_day_14",      :limit => 15
    t.string   "response_blasts_units_day_28",      :limit => 15
    t.string   "response_blasts_units_day_7",       :limit => 15
    t.integer  "response_in_remission_day_14"
    t.integer  "marrow_biopsy_report_found"
    t.date     "marrow_biopsy_on"
    t.text     "marrow_biopsy_diagnosis"
    t.integer  "marrow_aspirate_report_found"
    t.date     "marrow_aspirate_taken_on"
    t.text     "marrow_aspirate_diagnosis"
    t.integer  "response_marrow_kappa_day_14"
    t.integer  "response_marrow_kappa_day_7"
    t.integer  "response_marrow_lambda_day_14"
    t.integer  "response_marrow_lambda_day_7"
    t.integer  "cbc_report_found"
    t.date     "cbc_report_on"
    t.integer  "cbc_white_blood_count",             :limit => 10,  :precision => 10, :scale => 0
    t.integer  "cbc_percent_blasts"
    t.integer  "cbc_number_blasts"
    t.integer  "cbc_hemoglobin_level",              :limit => 10,  :precision => 10, :scale => 0
    t.integer  "cbc_platelet_count"
    t.integer  "cerebrospinal_fluid_report_found"
    t.date     "csf_report_on"
    t.integer  "csf_white_blood_count"
    t.text     "csf_white_blood_count_text"
    t.integer  "csf_red_blood_count"
    t.string   "csf_red_blood_count_text"
    t.string   "blasts_are_present"
    t.integer  "number_of_blasts"
    t.string   "peripheral_blood_in_csf"
    t.text     "csf_comment"
    t.integer  "chemo_protocol_report_found"
    t.integer  "patient_on_chemo_protocol"
    t.string   "chemo_protocol_name"
    t.text     "chemo_protocol_agent_description"
    t.string   "response_cd10_day_14",              :limit => 10
    t.string   "response_cd10_day_7",               :limit => 10
    t.string   "response_cd13_day_14",              :limit => 10
    t.string   "response_cd13_day_7",               :limit => 10
    t.string   "response_cd14_day_14",              :limit => 10
    t.string   "response_cd14_day_7",               :limit => 10
    t.string   "response_cd15_day_14",              :limit => 10
    t.string   "response_cd15_day_7",               :limit => 10
    t.string   "response_cd19_day_14",              :limit => 10
    t.string   "response_cd19_day_7",               :limit => 10
    t.string   "response_cd19cd10_day_14",          :limit => 10
    t.string   "response_cd19cd10_day_7",           :limit => 10
    t.string   "response_cd1a_day_14",              :limit => 10
    t.string   "response_cd2a_day_14",              :limit => 10
    t.string   "response_cd20_day_14",              :limit => 10
    t.string   "response_cd20_day_7",               :limit => 10
    t.string   "response_cd3a_day_14",              :limit => 10
    t.string   "response_cd3_day_7",                :limit => 10
    t.string   "response_cd33_day_14",              :limit => 10
    t.string   "response_cd33_day_7",               :limit => 10
    t.string   "response_cd34_day_14",              :limit => 10
    t.string   "response_cd34_day_7",               :limit => 10
    t.string   "response_cd4a_day_14",              :limit => 10
    t.string   "response_cd5a_day_14",              :limit => 10
    t.string   "response_cd56_day_14",              :limit => 10
    t.string   "response_cd61_day_14",              :limit => 10
    t.string   "response_cd7a_day_14",              :limit => 10
    t.string   "response_cd8a_day_14",              :limit => 10
    t.integer  "response_day30_is_in_remission"
    t.integer  "chest_imaging_report_found"
    t.date     "chest_imaging_report_on"
    t.integer  "mediastinal_mass_present"
    t.text     "chest_imaging_comment"
    t.integer  "received_chest_ct"
    t.date     "chest_ct_taken_on"
    t.integer  "chest_ct_medmass_present"
    t.integer  "user_id"
    t.integer  "cytogen_trisomy10"
    t.integer  "cytogen_trisomy17"
    t.integer  "cytogen_trisomy21"
    t.integer  "is_down_syndrome_phenotype"
    t.integer  "cytogen_trisomy4"
    t.integer  "cytogen_trisomy5"
    t.integer  "cytogen_report_found"
    t.date     "cytogen_report_on"
    t.string   "conventional_karyotype_results"
    t.string   "normal_cytogen",                    :limit => 5
    t.string   "is_cytogen_hosp_fish_t1221_done",   :limit => 5
    t.string   "is_karyotype_normal",               :limit => 5
    t.integer  "number_normal_metaphase_karyotype"
    t.integer  "number_metaphase_tested_karyotype"
    t.text     "cytogen_comment"
    t.boolean  "is_verification_complete"
    t.text     "discharge_summary"
    t.integer  "diagnosis_is_b_all"
    t.integer  "diagnosis_is_t_all"
    t.integer  "diagnosis_is_all"
    t.integer  "diagnosis_all_type_id"
    t.integer  "diagnosis_is_cml"
    t.integer  "diagnosis_is_cll"
    t.integer  "diagnosis_is_aml"
    t.integer  "diagnosis_aml_type_id"
    t.integer  "diagnosis_is_other"
    t.integer  "flow_cyto_report_found"
    t.integer  "received_flow_cyto_day_14"
    t.integer  "received_flow_cyto_day_7"
    t.date     "flow_cyto_report_on"
    t.date     "response_flow_cyto_day_14_on"
    t.date     "response_flow_cyto_day_7_on"
    t.string   "flow_cyto_cd10",                    :limit => 10
    t.string   "flow_cyto_igm",                     :limit => 10
    t.string   "flow_cyto_igm_text",                :limit => 50
    t.string   "flow_cyto_bm_kappa",                :limit => 10
    t.string   "flow_cyto_bm_kappa_text",           :limit => 50
    t.string   "flow_cyto_bm_lambda",               :limit => 10
    t.string   "flow_cyto_bm_lambda_text",          :limit => 50
    t.string   "flow_cyto_cd10_19",                 :limit => 10
    t.string   "flow_cyto_cd10_19_text",            :limit => 50
    t.string   "flow_cyto_cd10_text",               :limit => 50
    t.string   "flow_cyto_cd19",                    :limit => 10
    t.string   "flow_cyto_cd19_text",               :limit => 50
    t.string   "flow_cyto_cd20",                    :limit => 10
    t.string   "flow_cyto_cd20_text",               :limit => 50
    t.string   "flow_cyto_cd21",                    :limit => 10
    t.string   "flow_cyto_cd21_text",               :limit => 50
    t.string   "flow_cyto_cd22",                    :limit => 10
    t.string   "flow_cyto_cd22_text",               :limit => 50
    t.string   "flow_cyto_cd23",                    :limit => 10
    t.string   "flow_cyto_cd23_text",               :limit => 50
    t.string   "flow_cyto_cd24",                    :limit => 10
    t.string   "flow_cyto_cd24_text",               :limit => 50
    t.string   "flow_cyto_cd40",                    :limit => 10
    t.string   "flow_cyto_cd40_text",               :limit => 50
    t.string   "flow_cyto_surface_ig",              :limit => 10
    t.string   "flow_cyto_surface_ig_text",         :limit => 50
    t.string   "flow_cyto_cd1a",                    :limit => 10
    t.string   "flow_cyto_cd1a_text",               :limit => 50
    t.string   "flow_cyto_cd2",                     :limit => 10
    t.string   "flow_cyto_cd2_text",                :limit => 50
    t.string   "flow_cyto_cd3",                     :limit => 10
    t.string   "flow_cyto_cd3_text",                :limit => 50
    t.string   "flow_cyto_cd4",                     :limit => 10
    t.string   "flow_cyto_cd4_text",                :limit => 50
    t.string   "flow_cyto_cd5",                     :limit => 10
    t.string   "flow_cyto_cd5_text",                :limit => 50
    t.string   "flow_cyto_cd7",                     :limit => 10
    t.string   "flow_cyto_cd7_text",                :limit => 50
    t.string   "flow_cyto_cd8",                     :limit => 10
    t.string   "flow_cyto_cd8_text",                :limit => 50
    t.string   "flow_cyto_cd3_cd4",                 :limit => 10
    t.string   "flow_cyto_cd3_cd4_text",            :limit => 50
    t.string   "flow_cyto_cd3_cd8",                 :limit => 10
    t.string   "flow_cyto_cd3_cd8_text",            :limit => 50
    t.string   "flow_cyto_cd11b",                   :limit => 10
    t.string   "flow_cyto_cd11b_text",              :limit => 50
    t.string   "flow_cyto_cd11c",                   :limit => 10
    t.string   "flow_cyto_cd11c_text",              :limit => 50
    t.string   "flow_cyto_cd13",                    :limit => 10
    t.string   "flow_cyto_cd13_text",               :limit => 50
    t.string   "flow_cyto_cd15",                    :limit => 10
    t.string   "flow_cyto_cd15_text",               :limit => 50
    t.string   "flow_cyto_cd33",                    :limit => 10
    t.string   "flow_cyto_cd33_text",               :limit => 50
    t.string   "flow_cyto_cd41",                    :limit => 10
    t.string   "flow_cyto_cd41_text",               :limit => 50
    t.string   "flow_cyto_cdw65",                   :limit => 10
    t.string   "flow_cyto_cdw65_text",              :limit => 50
    t.string   "flow_cyto_cd34",                    :limit => 10
    t.string   "flow_cyto_cd34_text",               :limit => 50
    t.string   "flow_cyto_cd61",                    :limit => 10
    t.string   "flow_cyto_cd61_text",               :limit => 50
    t.string   "flow_cyto_cd14",                    :limit => 10
    t.string   "flow_cyto_cd14_text",               :limit => 50
    t.string   "flow_cyto_glycoa",                  :limit => 10
    t.string   "flow_cyto_glycoa_text",             :limit => 50
    t.string   "flow_cyto_cd16",                    :limit => 10
    t.string   "flow_cyto_cd16_text",               :limit => 50
    t.string   "flow_cyto_cd56",                    :limit => 10
    t.string   "flow_cyto_cd56_text",               :limit => 50
    t.string   "flow_cyto_cd57",                    :limit => 10
    t.string   "flow_cyto_cd57_text",               :limit => 50
    t.string   "flow_cyto_cd9",                     :limit => 10
    t.string   "flow_cyto_cd9_text",                :limit => 50
    t.string   "flow_cyto_cd25",                    :limit => 10
    t.string   "flow_cyto_cd25_text",               :limit => 50
    t.string   "flow_cyto_cd38",                    :limit => 10
    t.string   "flow_cyto_cd38_text",               :limit => 50
    t.string   "flow_cyto_cd45",                    :limit => 10
    t.string   "flow_cyto_cd45_text",               :limit => 50
    t.string   "flow_cyto_cd71",                    :limit => 10
    t.string   "flow_cyto_cd71_text",               :limit => 50
    t.string   "flow_cyto_tdt",                     :limit => 10
    t.string   "flow_cyto_tdt_text",                :limit => 50
    t.string   "flow_cyto_hladr",                   :limit => 10
    t.string   "flow_cyto_hladr_text",              :limit => 50
    t.string   "flow_cyto_other_marker_1_name",     :limit => 20
    t.string   "flow_cyto_other_marker_1",          :limit => 4
    t.string   "flow_cyto_other_marker_1_text",     :limit => 50
    t.string   "flow_cyto_other_marker_2_name",     :limit => 20
    t.string   "flow_cyto_other_marker_2",          :limit => 4
    t.string   "flow_cyto_other_marker_2_text",     :limit => 50
    t.string   "flow_cyto_other_marker_3_name",     :limit => 20
    t.string   "flow_cyto_other_marker_3",          :limit => 4
    t.string   "flow_cyto_other_marker_3_text",     :limit => 50
    t.string   "flow_cyto_other_marker_4_name",     :limit => 20
    t.string   "flow_cyto_other_marker_4",          :limit => 4
    t.string   "flow_cyto_other_marker_4_text",     :limit => 50
    t.string   "flow_cyto_other_marker_5_name",     :limit => 20
    t.string   "flow_cyto_other_marker_5",          :limit => 4
    t.string   "flow_cyto_other_marker_5_text",     :limit => 50
    t.text     "flow_cyto_remarks"
    t.integer  "tdt_often_found_flow_cytometry"
    t.integer  "tdt_report_found"
    t.date     "tdt_report_on"
    t.integer  "tdt_positive_or_negative"
    t.integer  "tdt_numerical_result"
    t.boolean  "tdt_found_in_flow_cyto_chart"
    t.boolean  "tdt_found_in_separate_report"
    t.text     "response_comment_day_7"
    t.text     "response_comment_day_14"
    t.integer  "cytogen_karyotype_done"
    t.integer  "cytogen_hospital_fish_done"
    t.string   "hospital_fish_results"
    t.integer  "cytogen_ucb_fish_done"
    t.string   "ucb_fish_results",                  :limit => 50
    t.string   "response_hladr_day_14",             :limit => 10
    t.string   "response_hladr_day_7",              :limit => 10
    t.string   "histo_report_found",                :limit => 5
    t.date     "histo_report_on"
    t.text     "histo_report_results"
    t.date     "diagnosed_on"
    t.date     "treatment_began_on"
    t.integer  "response_is_inconclusive_day_14"
    t.integer  "response_is_inconclusive_day_21"
    t.integer  "response_is_inconclusive_day_28"
    t.integer  "response_is_inconclusive_day_7"
    t.integer  "abstractor_id"
    t.date     "abstracted_on"
    t.integer  "reviewer_id"
    t.date     "reviewed_on"
    t.date     "data_entry_done_on"
    t.integer  "flow_cyto_num_results_available"
    t.string   "response_other1_value_day_14",      :limit => 4
    t.string   "response_other1_value_day_7",       :limit => 4
    t.string   "response_other2_value_day_14",      :limit => 4
    t.string   "response_other2_value_day_7",       :limit => 4
    t.string   "response_other3_value_day_14",      :limit => 4
    t.string   "response_other4_value_day_14",      :limit => 4
    t.string   "response_other5_value_day_14",      :limit => 4
    t.integer  "h_and_p_reports_found"
    t.boolean  "is_h_and_p_report_found"
    t.date     "h_and_p_reports_on"
    t.string   "physical_neuro",                    :limit => 5
    t.string   "physical_other_soft_2",             :limit => 5
    t.integer  "vital_status_id"
    t.date     "dod"
    t.integer  "discharge_summary_found"
    t.string   "physical_gingival",                 :limit => 5
    t.string   "physical_leukemic_skin",            :limit => 5
    t.string   "physical_lymph",                    :limit => 5
    t.string   "physical_spleen",                   :limit => 5
    t.string   "physical_testicle",                 :limit => 5
    t.string   "physical_other_soft",               :limit => 5
    t.integer  "ploidy_report_found"
    t.date     "ploidy_report_on"
    t.string   "is_hypodiploid",                    :limit => 5
    t.string   "is_hyperdiploid",                   :limit => 5
    t.string   "is_diploid",                        :limit => 5
    t.string   "dna_index",                         :limit => 5
    t.string   "other_dna_measure",                 :limit => 15
    t.string   "ploidy_comment",                    :limit => 100
    t.integer  "hepatomegaly_present"
    t.integer  "splenomegaly_present"
    t.text     "response_comment"
    t.string   "response_other1_name_day_14",       :limit => 25
    t.string   "response_other1_name_day_7",        :limit => 25
    t.string   "response_other2_name_day_14",       :limit => 25
    t.string   "response_other2_name_day_7",        :limit => 25
    t.string   "response_other3_name_day_14",       :limit => 25
    t.string   "response_other4_name_day_14",       :limit => 25
    t.string   "response_other5_name_day_14",       :limit => 25
    t.string   "fab_classification",                :limit => 50
    t.string   "diagnosis_icdo_description",        :limit => 55
    t.string   "diagnosis_icdo_number",             :limit => 50
    t.string   "cytogen_t1221",                     :limit => 9
    t.string   "cytogen_inv16",                     :limit => 9
    t.string   "cytogen_t119",                      :limit => 9
    t.string   "cytogen_t821",                      :limit => 9
    t.string   "cytogen_t1517",                     :limit => 9
    t.string   "cytogen_is_hyperdiploidy",          :limit => 5
    t.string   "cytogen_chromosome_number",         :limit => 3
    t.string   "cytogen_other_trans_1",             :limit => 35
    t.string   "cytogen_other_trans_2",             :limit => 35
    t.string   "cytogen_other_trans_3",             :limit => 35
    t.string   "cytogen_t922",                      :limit => 50
    t.string   "cytogen_other_trans_4",             :limit => 35
    t.string   "cytogen_other_trans_5",             :limit => 35
    t.string   "response_fab_subtype",              :limit => 15
    t.string   "response_tdt_day_14",               :limit => 10
    t.string   "response_tdt_day_7",                :limit => 10
    t.integer  "abstract_version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "height_at_diagnosis"
    t.float    "weight_at_diagnosis"
    t.string   "hyperdiploidy_by"
  end

  create_table "pages", :force => true do |t|
    t.integer  "position"
    t.integer  "parent_id"
    t.boolean  "hide_menu",  :default => false
    t.string   "path"
    t.string   "title_en"
    t.string   "title_es"
    t.string   "menu_en"
    t.string   "menu_es"
    t.text     "body_en"
    t.text     "body_es"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["parent_id"], :name => "index_pages_on_parent_id"
  add_index "pages", ["path"], :name => "index_pages_on_path", :unique => true

  create_table "roles", :force => true do |t|
    t.integer  "position"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], :name => "index_roles_on_name", :unique => true

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "user_invitations", :force => true do |t|
    t.integer  "sender_id"
    t.string   "email"
    t.string   "token"
    t.datetime "accepted_at"
    t.integer  "recipient_id"
    t.text     "message"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.string   "sn"
    t.string   "displayname"
    t.string   "mail",            :default => "", :null => false
    t.string   "telephonenumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["sn"], :name => "index_users_on_sn"
  add_index "users", ["uid"], :name => "index_users_on_uid", :unique => true

end
