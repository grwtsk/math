-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThreeC.Variantf3a9c62ebc3719fd4334dc7705e9cdc1ec1d7224eb1ae83ce8e113419085a45a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3a9c62ebc3719fd4334dc7705e9cdc1ec1d7224eb1ae83ce8e113419085a45a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThreeC.Variantf3a9c62ebc3719fd4334dc7705e9cdc1ec1d7224eb1ae83ce8e113419085a45a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f3a9c62ebc3719fd4334dc7705e9cdc1ec1d7224eb1ae83ce8e113419085a45a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceSchedulingTransshipment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSchedulingTransport

/-!
# A complete finite transshipment certificate with cost four

CSE-RH16-20261007. Research direction: grwtsk contributors.
Finite proof adapters: OpenAI Codex. Adding the zero-load position one retains
exactly the original two-node readout. A first-stage flow through that position
has cost four, improving the direct two-node certificate of cost six. Its
middle row has mass one despite zero positive source mass: it belongs to the
native net-balance flow class, not the Python LP's pure positive/negative
marginal coupling class. This is no contradiction of that fixed-class dual.
Four is a transport certificate, not a sharp curvature norm or uniform
arithmetic estimate. The latter conclusions remain separate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThreeC.Variantf3a9c62ebc3719fd4334dc7705e9cdc1ec1d7224eb1ae83ce8e113419085a45a

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingTransshipment

open scoped BigOperators
open SourceSchedulingTransport

def threeC (i : Fin 3) : ℝ := i.val
def threeB (i : Fin 3) : ℝ := if i.val = 0 then 1 else if i.val = 1 then 0 else -1
def threeD (i : Fin 3) : ℝ := if i.val = 0 then 2 else 0

def subdivisionP (i j : Fin 3) : ℝ :=
  if (i.val = 0 ∧ j.val = 1) ∨ (i.val = 1 ∧ j.val = 2) then 1 else 0

def subdivisionQ (i j : Fin 3) : ℝ :=
  if i.val = 0 ∧ (j.val = 1 ∨ j.val = 2) then 1 else 0

def twoC : Fin 2 → ℝ := ![0, 2]
def twoB : Fin 2 → ℝ := ![1, -1]
def twoD : Fin 2 → ℝ := ![2, 0]

def directP (i j : Fin 2) : ℝ := if i = 0 ∧ j = 1 then 1 else 0
def directQ (i j : Fin 2) : ℝ := if i = 0 ∧ j = 1 then 2 else 0

theorem subdivision_nonneg :
    (∀ i j, 0 ≤ subdivisionP i j) ∧ (∀ i j, 0 ≤ subdivisionQ i j) := by
  constructor
  · intro i j
    unfold subdivisionP
    split_ifs <;> norm_num
  · intro i j
    unfold subdivisionQ
    split_ifs <;> norm_num

theorem subdivision_source_balance :
    ∀ i, threeB i = (∑ j, subdivisionP i j) - ∑ j, subdivisionP j i := by
  intro i
  fin_cases i <;> simp only [Fin.sum_univ_three]
  all_goals norm_num [threeB, subdivisionP, Fin.isValue]

theorem subdivision_induced_drift :
    inducedDrift threeC threeD subdivisionP = ![2, -1, -1] := by
  funext j
  fin_cases j <;> simp only [inducedDrift, Fin.sum_univ_three]
  all_goals norm_num [threeC, threeD, subdivisionP, Fin.isValue, Matrix.cons_val_two]

theorem subdivision_drift_balance :
    ∀ j, inducedDrift threeC threeD subdivisionP j =
      (∑ k, subdivisionQ j k) - ∑ k, subdivisionQ k j := by
  intro j
  rw [subdivision_induced_drift]
  fin_cases j <;> simp only [Fin.sum_univ_three]
  all_goals norm_num [subdivisionQ, Fin.isValue, Matrix.cons_val_two]

theorem subdivision_affine_totals :
    mass threeB = 0 ∧ firstMoment threeC threeB threeD = 0 := by
  simp only [mass, firstMoment, Fin.sum_univ_three]
  norm_num [threeC, threeB, threeD, Fin.isValue]

/-- The middle row explicitly violates the pure-coupling positive marginal. -/
theorem subdivision_not_pure_coupling :
    (∑ j, subdivisionP (1 : Fin 3) j) ≠ max (threeB 1) 0 := by
  simp only [Fin.sum_univ_three]
  norm_num [subdivisionP, threeB, Fin.isValue]

/-- The zero-load midpoint changes the certificate and preserves the complete readout. -/
theorem three_node_readout_eq_two (f g : ℝ → ℝ) :
    readout threeC threeB threeD f g = readout twoC twoB twoD f g := by
  simp [readout, threeC, threeB, threeD, twoC, twoB, twoD,
    Fin.sum_univ_three, Fin.sum_univ_two, Fin.isValue]

theorem subdivision_cost_four : transportCost threeC subdivisionP subdivisionQ = 4 := by
  simp only [transportCost, Fin.sum_univ_three]
  norm_num [threeC, subdivisionP, subdivisionQ, Fin.isValue]

theorem direct_cost_six : transportCost twoC directP directQ = 6 := by
  norm_num [transportCost, twoC, directP, directQ, Fin.sum_univ_two]

theorem subdivision_cost_gain :
    transportCost twoC directP directQ - transportCost threeC subdivisionP subdivisionQ = 2 := by
  rw [direct_cost_six, subdivision_cost_four]
  norm_num

/-- The same global analytic hypotheses give the original readout the improved certificate. -/
theorem transshipment_readout_abs_le (f g : ℝ → ℝ) (L : ℝ)
    (ht : ∀ x y, |f x - f y - (x - y) * g y| ≤ L * (x - y) ^ 2 / 2)
    (hg : ∀ x y, |g x - g y| ≤ L * |x - y|) :
    |readout twoC twoB twoD f g| ≤ L * 4 := by
  rw [← three_node_readout_eq_two f g]
  have hbound := two_stage_abs_le threeC threeB threeD f g subdivisionP subdivisionQ L
    subdivision_nonneg.1 subdivision_nonneg.2 subdivision_source_balance
    subdivision_drift_balance (fun i j => ht (threeC i) (threeC j))
    (fun j k => hg (threeC j) (threeC k))
  simpa only [subdivision_cost_four] using hbound

/-- The original fixed pairing itself is one signed Taylor remainder, with bound two. -/
theorem direct_pairing_abs_le (f g : ℝ → ℝ) (L : ℝ)
    (ht : ∀ x y, |f x - f y - (x - y) * g y| ≤ L * (x - y) ^ 2 / 2) :
    |readout twoC twoB twoD f g| ≤ L * 2 := by
  have hidentity : readout twoC twoB twoD f g = -(f 2 - f 0 - 2 * g 0) := by
    norm_num [readout, twoC, twoB, twoD, Fin.sum_univ_two]
    ring
  rw [hidentity, abs_neg]
  have hnum : L * (2 : ℝ) ^ 2 / 2 = L * 2 := by ring
  simpa only [sub_zero, hnum] using ht 2 0

end FormalResearch.RiemannHypothesis.SourceSchedulingTransshipment
