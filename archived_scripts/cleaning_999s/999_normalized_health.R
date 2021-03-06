#####################################################################################################################
##Normalized Health 999 Cleaning ####################################################################################
#####################################################################################################################
source("base_scripts/InstallFormhub.R")
source('source_scripts/999_functions.R')

merged_health <- readRDS("~/Dropbox/Nigeria/Nigeria 661 Baseline Data Cleaning/in_process_data/normalized/Health_774_normalized.rds")

##knocking out 999 values
cellst(merged_health, 'num_flush_or_pour_flush_piped',
      which(merged_health$num_flush_or_pour_flush_piped > 23000), NA_integer_)

cellst(merged_health, 'num_bucket_system',
      which(merged_health$num_bucket_system > 999), NA_integer_)

cellst(merged_health, 'num_doctors_posted',
      which(merged_health$num_doctors_posted > 908), NA_integer_)

cellst(merged_health, 'num_midwives_posted',
      which(merged_health$num_midwives_posted > 980), NA_integer_)

cellst(merged_health, 'lab_technicians_active',
      which(merged_health$lab_technicians_active > 980), NA_integer_)

cellst(merged_health, 'num_junior_chews_active',
      which(merged_health$num_junior_chews_active > 980), NA_integer_)

cellst(merged_health, 'num_nursemidwives_active',
      which(merged_health$num_nursemidwives_active > 980), NA_integer_)

cellst(merged_health, 'num_nurses_active',
      which(merged_health$num_nurses_active > 980), NA_integer_)

cellst(merged_health, 'lab_technicians_posted',
      which(merged_health$lab_technicians_posted > 980), NA_integer_)

cellst(merged_health, 'pharmacists_posted',
      which(merged_health$pharmacists_posted > 980), NA_integer_)

cellst(merged_health, 'num_junior_chews_posted',
      which(merged_health$num_junior_chews_posted > 980), NA_integer_)

cellst(merged_health, 'num_chews_posted',
      which(merged_health$num_chews_posted > 980), NA_integer_)

cellst(merged_health, 'num_cho_posted',
      which(merged_health$num_cho_posted > 980), NA_integer_)

cellst(merged_health, 'num_nurses_posted',
      which(merged_health$num_nurses_posted > 980), NA_integer_)

cellst(merged_health, 'pharma_technicians_active',
      which(merged_health$pharma_technicians_active > 70), NA_integer_)

cellst(merged_health, 'num_nursemidwives_posted',
      which(merged_health$num_nursemidwives_posted > 901), NA_integer_)

cellst(merged_health, 'environmental_health_officers_posted',
      which(merged_health$environmental_health_officers_posted > 901), NA_integer_)

cellst(merged_health, 'pharma_technicians_posted',
      which(merged_health$pharma_technicians_posted > 901), NA_integer_)

cellst(merged_health, 'medical_records_officers_posted',
      which(merged_health$medical_records_officers_posted > 98), NA_integer_)

cellst(merged_health, 'pharmacists_active',
      which(merged_health$pharmacists_active > 908), NA_integer_)

cellst(merged_health, 'medical_records_officers_active',
      which(merged_health$medical_records_officers_active > 908), NA_integer_)

#output
saveRDS(merged_health, "~/Dropbox/Nigeria/Nigeria 661 Baseline Data Cleaning/in_process_data/999cleaned/Health_774_999Cleaned.rds")


