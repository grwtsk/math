-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarePrimitiveBalance.Variant307110785638096a706492068d1b755666b50bbcc208a74af6bf0802ea28022d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"307110785638096a706492068d1b755666b50bbcc208a74af6bf0802ea28022d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarePrimitiveBalance.Variant307110785638096a706492068d1b755666b50bbcc208a74af6bf0802ea28022d","mathematical_subject":"Foundations.Unclassified","original_sha256":"307110785638096a706492068d1b755666b50bbcc208a74af6bf0802ea28022d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-square-primitive-balance/ImportClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarePrimitiveBalance

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarePrimitiveBalance.Variant307110785638096a706492068d1b755666b50bbcc208a74af6bf0802ea28022d

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
