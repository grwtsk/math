-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineSupport.Variantcb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceFourNineSupport.Variantcb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","mathematical_subject":"Foundations.Unclassified","original_sha256":"cb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/four-nine-native/author-support-audit-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFourNineSupport

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineSupport.Variantcb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8

set_option linter.hashCommand false
#check RH16FourNineSupport.mobius_nine_mul_zero
#print axioms RH16FourNineSupport.mobius_nine_mul_zero
#check RH16FourNineSupport.squarefreeWeightSum_subtract_four_nine
#print axioms RH16FourNineSupport.squarefreeWeightSum_subtract_four_nine
#check RH16FourNineSupport.squarefreeWeightSum_four_thirds
#print axioms RH16FourNineSupport.squarefreeWeightSum_four_thirds
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
