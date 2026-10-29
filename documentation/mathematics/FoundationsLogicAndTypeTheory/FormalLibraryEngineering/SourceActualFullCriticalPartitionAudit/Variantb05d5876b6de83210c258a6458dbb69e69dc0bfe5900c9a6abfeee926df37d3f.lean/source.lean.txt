-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceActualFullCriticalPartition.Variant82d0aa05e54c354e0944aed53fbe168e1bc42c3ff01b67fe3777601c2460550e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82d0aa05e54c354e0944aed53fbe168e1bc42c3ff01b67fe3777601c2460550e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceActualFullCriticalPartition.Variant82d0aa05e54c354e0944aed53fbe168e1bc42c3ff01b67fe3777601c2460550e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"82d0aa05e54c354e0944aed53fbe168e1bc42c3ff01b67fe3777601c2460550e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/actual-critical-tsum-native/SourceActualFullCriticalPartitionAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFullCriticalPartition
import Lean

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceActualFullCriticalPartition.Variant82d0aa05e54c354e0944aed53fbe168e1bc42c3ff01b67fe3777601c2460550e

set_option linter.style.setOption false
set_option pp.all true
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
