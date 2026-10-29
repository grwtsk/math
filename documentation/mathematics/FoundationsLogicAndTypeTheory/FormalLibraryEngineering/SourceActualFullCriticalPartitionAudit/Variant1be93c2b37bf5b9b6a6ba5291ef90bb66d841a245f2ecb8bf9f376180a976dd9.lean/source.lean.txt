-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceActualFullCriticalPartition.Variantd6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceActualFullCriticalPartition.Variantd6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/actual-critical-tsum-native/failed-audit01/SourceActualFullCriticalPartitionAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFullCriticalPartition
import Lean

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceActualFullCriticalPartition.Variantd6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a

set_option pp.all true
set_option pp.maxDepth 100000
set_option pp.maxSteps 1000000
#check @RH16ActualFullCriticalPartition.actualFullCriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullCriticalContribution
#check @RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#check @RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#print axioms RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#check @RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#print axioms RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#check @RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#print axioms RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#check @RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
#print axioms RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
run_cmd do
  let env ← Lean.getEnv
  for name in env.allImportedModuleNames do
    Lean.logInfo m!"HEADER {name}"
