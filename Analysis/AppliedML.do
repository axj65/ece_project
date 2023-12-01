import delimited "/Users/sayedmorteza/Downloads/Recidivism_Full_Dataset_cleaned_shreshth.csv", clear

// creating dummies for categorical variables
tab gender , generate(gender)
tab race, generate(race)
tab age_at_release, generate(age)
tab gang_affiliated, generate(gang)
tab education_level, generate(education)
tab supervision_level_first, generate(supervision)
tab dependent, generate(dependent)
tab prison_offense, generate(offense)
tab prison_years, generate(years)
tab prior_revocations_parol, generate(revocation_parole)
tab prior_revocations_probation, generate(revocation_probation)
tab condition_mh_sa, generate(condition_mh_sa)
tab condition_cog_ed, generate(condition_cog_ed)
tab condition_other, generate(condition_other)
tab violations_elec, generate(violations_elec)
tab violations_instruction, generate(violations_instruction)
tab violations_failtoreport, generate(violations_failtoreport)
tab violations_move, generate(violations_move)
tab delinquency_report, generate(delinquency)
tab program_attendances, generate(program_attendances)
tab residence_changes, generate(residence_changes)

// creating dummy for dependent variable
tab recidivism_within_3years, generate(recidivism)

// running logistic model
* running constrained model
logit recidivism2 gender2 race2 avg_days_per_drugtest-jobs_per_year residence_changes2 residence_changes3 residence_changes4 program_attendances2 program_attendances3 program_attendances4 program_attendances5 program_attendances6 program_attendances7 program_attendances8 program_attendances9 program_attendances10 program_attendances11 delinquency2 delinquency3 delinquency4 delinquency5 violations_move2 violations_failtoreport2 violations_failtoreport2 violations_instruction2 violations_elec2 condition_other1 condition_mh_sa1 condition_cog_ed1 revocation_parole2 revocation_probation2 years1 years2 years4 offense1 offense2 offense3 offense5 offense6 dependent2-dependent4 education1 education2 gang2 age2-age7 
* storing the model
estimate store Constrained_Model 
* running unconstrained model
logit recidivism2 gender2 race2 avg_days_per_drugtest-jobs_per_year years1 years2 years4 offense1 offense2 offense3 offense5 offense6 dependent2-dependent4 education1 education2 gang2 age2-age7 
* storing the model
estimate store Unconstrained_Model

// plotting the coefficients
coefplot Constrained_Model Unconstrained_Model, xline(0) keep(gender2 race2 avg* drugtest* employment* years* age*)

// saving the results to a Table
esttab R2 R1 using Rec.rtf, se aic bic r2 ar2 pr2 star nogap star(* 0.05 ** 0.01 *** 0.001) replace
