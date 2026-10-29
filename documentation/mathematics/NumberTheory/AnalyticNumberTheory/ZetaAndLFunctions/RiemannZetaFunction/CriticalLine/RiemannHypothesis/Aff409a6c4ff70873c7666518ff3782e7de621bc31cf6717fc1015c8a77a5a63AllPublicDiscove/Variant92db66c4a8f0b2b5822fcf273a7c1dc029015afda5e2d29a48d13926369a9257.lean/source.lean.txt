-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetPolynomials.Variantaff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiJetPolynomials.Variantaff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/af/aff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63--AllPublicDiscovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds
import FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives
import FormalResearch.RiemannHypothesis.ThetaPhiJetPerturbation
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianThree
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion
import FormalResearch.RiemannHypothesis.ThetaTailRankThree012


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetPolynomials.Variantaff409a6c4ff70873c7666518ff3782e7de621bc31cf6717fc1015c8a77a5a63

open Lean Elab Command
run_cmd do
  let targets : Array Name := #[`FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials, `FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds, `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives, `FormalResearch.RiemannHypothesis.ThetaPhiJetPerturbation, `FormalResearch.RiemannHypothesis.ThetaPhiWronskianThree, `FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction, `FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps, `FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion, `FormalResearch.RiemannHypothesis.ThetaTailRankThree012]
  let _ ← (← getEnv).constants.foldM (init := ()) fun _ name _ => do
    let some mod ← findModuleOf? name | return ()
    if targets.contains mod && !isPrivateName name then
      logInfo m!"THETA_PUBLIC_DECL|{mod}|{name}"
    return ()
  pure ()
