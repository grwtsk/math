-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEndpointRecovery.Variantb51b4c5494d551499dfd20af41d70fc7d2ae8fb5557fdff27028f700b767b59e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b51b4c5494d551499dfd20af41d70fc7d2ae8fb5557fdff27028f700b767b59e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceActualEndpointRecovery.Variantb51b4c5494d551499dfd20af41d70fc7d2ae8fb5557fdff27028f700b767b59e","mathematical_subject":"Foundations.Unclassified","original_sha256":"b51b4c5494d551499dfd20af41d70fc7d2ae8fb5557fdff27028f700b767b59e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-actual-endpoint-recovery/native/SourceActualEndpointRecoveryReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEndpointRecovery

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEndpointRecovery.Variantb51b4c5494d551499dfd20af41d70fc7d2ae8fb5557fdff27028f700b767b59e

open RH16ActualEndpointRecovery
#print endpointPlus
#print axioms endpointPlus
#print endpointMinus
#print axioms endpointMinus
#print endpointCommon
#print axioms endpointCommon
#print positiveEndpoint
#print axioms positiveEndpoint
#print negativeEndpoint
#print axioms negativeEndpoint
#print invariantMixed
#print axioms invariantMixed
#print endpoint_product
#print axioms endpoint_product
#print actual_source_endpoint_recovery
#print axioms actual_source_endpoint_recovery

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
