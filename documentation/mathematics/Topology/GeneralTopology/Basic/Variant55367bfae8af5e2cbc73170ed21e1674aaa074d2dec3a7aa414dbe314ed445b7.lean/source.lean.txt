-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RealTendstoPowLogDivPowAtTop.Variant7e3e2b8f84e6c170051a6474272455bed2432e6fddac5660072318b9b4eda7ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e3e2b8f84e6c170051a6474272455bed2432e6fddac5660072318b9b4eda7ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RealTendstoPowLogDivPowAtTop.Variant7e3e2b8f84e6c170051a6474272455bed2432e6fddac5660072318b9b4eda7ec","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7e3e2b8f84e6c170051a6474272455bed2432e6fddac5660072318b9b4eda7ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Continuity


namespace GRWTSK.Topology.GeneralTopology.RealTendstoPowLogDivPowAtTop.Variant7e3e2b8f84e6c170051a6474272455bed2432e6fddac5660072318b9b4eda7ec

open Filter Real

/-- log^b x / x^a goes to zero at infinity if a is positive. -/
theorem Real.tendsto_pow_log_div_pow_atTop (a : ℝ) (b : ℝ) (ha : 0 < a) :
    Filter.Tendsto (fun x ↦ log x ^ b / x^a) Filter.atTop (nhds 0) := by
  apply Asymptotics.isLittleO_iff_tendsto' _|>.mp <| isLittleO_log_rpow_rpow_atTop _ ha
  filter_upwards [eventually_gt_atTop 0] with x hx
  intro h
  rw [rpow_eq_zero hx.le ha.ne.symm] at h
  exfalso
  linarith
