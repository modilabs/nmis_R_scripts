R=R CMD BATCH --no-restore --slave
all:~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/All_774_LGA.csv
test:
	Rscript tests/*.R > logs/test.log
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Water_774_NMIS_Facility.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Water_774_ALL_FACILITY_INDICATORS.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/Water_774_normalized.rds ./nmis/nmis_indicators_water_facility_level_normalized.R
	$(R) ./nmis/nmis_indicators_water_facility_level_normalized.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Education_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Health_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Water_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Local_661_Merged.csv: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Education_05_06_2012_2013_05_15_12_00_14.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Education_17_04_2012_2013_05_15_11_59_29.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Education_22_05_2012_2013_05_14_13_41_23.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Health_05_06_2012_2013_05_14_14_16_00.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Health_17_04_2012_2013_05_15_11_45_47.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Health_22_05_2012_2013_05_14_13_54_51.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Water_05_06_2012_2012_11_30_10_54_44.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Water_22_05_2012_2012_11_28_13_38_10.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Water_24_04_2012_2012_11_28_13_40_08.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Localities_05_06_2012_2013_05_24_12_25_37.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Localities_16_04_2012_2013_03_08_11_29_53.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/Localities_22_05_2012_2013_03_08_11_45_37.csv ./base_scripts/MergeDatasets.R
	$(R) ./base_scripts/MergeDatasets.R /dev/tty
: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/All_774_LGA.csv ./tests/LGALevelTests.R
	$(R) ./tests/LGALevelTests.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/output_data/external_data.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/Nigeria\ Master\ Codes_SP.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/08_Skilled_Birth.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/10_HIV_Tested.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/net\ enrollment\ NA\ fixed.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/net_enroll_JS_male\ female.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/Other\ edu\ indicators.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/dhs_2008.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/section_2.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/source_data/hh_final.rds ./base_scripts/external_data.R
	$(R) ./base_scripts/external_data.R /dev/tty
: ./base_scripts/InstallFormhub.R
	$(R) ./base_scripts/InstallFormhub.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Health_LGA_level_774.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Health_774_ALL_FACILITY_INDICATORS.rds ./nmis/nmis_indicators_health_lga_level_normalized.R
	$(R) ./nmis/nmis_indicators_health_lga_level_normalized.R /dev/tty
: ./source_scripts/Clean_LGA_State_errors.R
	$(R) ./source_scripts/Clean_LGA_State_errors.R /dev/tty
: ./source_scripts/outlier_functions.R
	$(R) ./source_scripts/outlier_functions.R /dev/tty
: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Health_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Education_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Water_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/All_774_LGA.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/lgas.csv ./tests/GeneralDataChecks.R
	$(R) ./tests/GeneralDataChecks.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Health_774_NMIS_Facility.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Health_774_ALL_FACILITY_INDICATORS.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/outlier_cleaned/Health_774_outliercleaned.rds ./nmis/nmis_indicators_health_facility_level_normalized.R
	$(R) ./nmis/nmis_indicators_health_facility_level_normalized.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/outlier_cleaned/Health_774_outliercleaned.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/999cleaned/Health_774_999Cleaned.rds ./cleaning_outliers/outlier_normalized_health.R
	$(R) ./cleaning_outliers/outlier_normalized_health.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/outputs/hand_checks/health_check.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/outputs/hand_checks/education_check.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/outputs/hand_checks/water_check.csv: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Health_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Health_PhII_RoundI&II&III_Clean_2011.10.21.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Pilot_Data_Health_Clean_2011.11.18.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Education_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Educ_Baseline_PhaseII_all_merged_cleaned_2011Nov21.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Pilot_Education_cleaned_2011Nov17.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/999cleaned/Water_661_999Cleaned_Reclassified.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Water_Baseline_PhaseII_all_merged_cleaned_2011Nov21.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Pilot_Water_cleaned_2011Aug29.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/pipeline_data_copy/nmis/data_774/Health_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/Health_774_ALL_FACILITY_INDICATORS.rds ./nmis/hand_checks.R
	$(R) ./nmis/hand_checks.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/All_774_LGA.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/lgas.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/normalized_final/Education_LGA_level_774.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/normalized_final/Water_LGA_level_113.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/normalized_final/Health_LGA_level_774.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/external_data/output_data/external_data.rds ./nmis/nmis_indicators_COMBINING_normalized.R
	$(R) ./nmis/nmis_indicators_COMBINING_normalized.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/Health_774_normalized.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Health_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Health_PhII_RoundI&II&III_Clean_2011.10.21.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Pilot_Data_Health_Clean_2011.11.18.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/lgas.csv ./normalized/normalize_health.R
	$(R) ./normalized/normalize_health.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Education_LGA_level_774.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Education_774_ALL_FACILITY_INDICATORS.rds ./nmis/nmis_indicators_education_lga_level_normalized.R
	$(R) ./nmis/nmis_indicators_education_lga_level_normalized.R /dev/tty
: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/lgas.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Matching\ result/nmis_edu.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Matching\ result/lga_edu.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Matching\ result/nmis_health.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Matching\ result/lga_health.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/nga_lgas/nga_lgas_with_corrected_id.rds ./source_scripts/NMIS_Functions.R
	$(R) ./source_scripts/NMIS_Functions.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Water_LGA_level_774.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Water_774_ALL_FACILITY_INDICATORS.rds ./nmis/nmis_indicators_water_lga_level_normalized.R
	$(R) ./nmis/nmis_indicators_water_lga_level_normalized.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/All_774_LGA.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Water_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Education_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Health_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Water_774_ALL_FACILITY_INDICATORS.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Education_774_ALL_FACILITY_INDICATORS.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Health_774_ALL_FACILITY_INDICATORS.csv: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/All_774_LGA.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Education_774_NMIS_Facility.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Education_774_ALL_FACILITY_INDICATORS.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Health_774_NMIS_Facility.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Health_774_ALL_FACILITY_INDICATORS.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Water_774_NMIS_Facility.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Water_774_ALL_FACILITY_INDICATORS.rds ./nmis/nmis_post_processing.R
	$(R) ./nmis/nmis_post_processing.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/Education_774_normalized.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Education_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Educ_Baseline_PhaseII_all_merged_cleaned_2011Nov21.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Pilot_Education_cleaned_2011Nov17.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/lgas.csv ./normalized/normalize_education.R
	$(R) ./normalized/normalize_education.R /dev/tty
: ./tests/CheckDataConsistancy.R
	$(R) ./tests/CheckDataConsistancy.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/outlier_cleaned/Education_774_outliercleaned.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/999cleaned/Education_774_999Cleaned.rds ./cleaning_outliers/outlier_normalized_education.R
	$(R) ./cleaning_outliers/outlier_normalized_education.R /dev/tty
: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/mop_up_matching_result/baseline_matching_education.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/mop_up_matching_result/baseline_matching_health.csv ./source_scripts/post_processing_functions.R
	$(R) ./source_scripts/post_processing_functions.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/999cleaned/Health_774_999Cleaned.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/Health_774_normalized.rds ./cleaning_999s/999_normalized_health.R
	$(R) ./cleaning_999s/999_normalized_health.R /dev/tty
: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/Water_774_NMIS_Facility.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/data_774/All_774_LGA.csv ./tests/WaterSpecificChecks.R
	$(R) ./tests/WaterSpecificChecks.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/Water_774_normalized.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/merged/Water_661_Merged.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Water_Baseline_PhaseII_all_merged_cleaned_2011Nov21.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/raw_data/113/Pilot_Water_cleaned_2011Aug29.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/reclassify_final_148.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/lgas.csv ./normalized/normalize_water.R
	$(R) ./normalized/normalize_water.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/999cleaned/Education_774_999Cleaned.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/Normalized/Education_774_normalized.rds ./cleaning_999s/999_normalized_education.R
	$(R) ./cleaning_999s/999_normalized_education.R /dev/tty
: ./source_scripts/Normailize_Functions.R
	$(R) ./source_scripts/Normailize_Functions.R /dev/tty
: ./source_scripts/999_functions.R
	$(R) ./source_scripts/999_functions.R /dev/tty
~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Education_774_NMIS_Facility.rds ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/Normalized/Education_774_ALL_FACILITY_INDICATORS.rds: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/outlier_cleaned/Education_774_outliercleaned.rds ./nmis/nmis_indicators_education_facility_level_normalized.R
	$(R) ./nmis/nmis_indicators_education_facility_level_normalized.R /dev/tty
: ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/source_data/nmis_lga_corrections.csv ~/Dropbox/Nigeria/Nigeria\ 661\ Baseline\ Data\ Cleaning/in_process_data/nmis/source_data/nmis_lga_mapping.csv ./source_scripts/NMIS_Utils.R
	$(R) ./source_scripts/NMIS_Utils.R /dev/tty
