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

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingTransshipment

open scoped BigOperators
open SourceSchedulingTransport

def threeC : Fin 3 → ℝ := ![0, 1, 2]
def threeB : Fin 3 → ℝ := ![1, 0, -1]
def threeD : Fin 3 → ℝ := ![2, 0, 0]

def subdivisionP (i j : Fin 3) : ℝ :=
  if (i = 0 ∧ j = 1) ∨ (i = 1 ∧ j = 2) then 1 else 0

def subdivisionQ (i j : Fin 3) : ℝ :=
  if i = 0 ∧ (j = 1 ∨ j = 2) then 1 else 0

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
  fin_cases i <;> norm_num [threeB, subdivisionP, Fin.sum_univ_three]

theorem subdivision_induced_drift :
    inducedDrift threeC threeD subdivisionP = ![2, -1, -1] := by
  funext j
  fin_cases j <;>
    norm_num [inducedDrift, threeC, threeD, subdivisionP, Fin.sum_univ_three]

theorem subdivision_drift_balance :
    ∀ j, inducedDrift threeC threeD subdivisionP j =
      (∑ k, subdivisionQ j k) - ∑ k, subdivisionQ k j := by
  intro j
  rw [subdivision_induced_drift]
  fin_cases j <;> norm_num [subdivisionQ, Fin.sum_univ_three]

theorem subdivision_affine_totals :
    mass threeB = 0 ∧ firstMoment threeC threeB threeD = 0 := by
  norm_num [mass, firstMoment, threeC, threeB, threeD, Fin.sum_univ_three]

/-- The middle row explicitly violates the pure-coupling positive marginal. -/
theorem subdivision_not_pure_coupling :
    (∑ j, subdivisionP (1 : Fin 3) j) ≠ max (threeB 1) 0 := by
  norm_num [subdivisionP, threeB, Fin.sum_univ_three]

/-- The zero-load midpoint changes the certificate and preserves the complete readout. -/
theorem three_node_readout_eq_two (f g : ℝ → ℝ) :
    readout threeC threeB threeD f g = readout twoC twoB twoD f g := by
  simp [readout, threeC, threeB, threeD, twoC, twoB, twoD,
    Fin.sum_univ_three, Fin.sum_univ_two]

theorem subdivision_cost_four : transportCost threeC subdivisionP subdivisionQ = 4 := by
  norm_num [transportCost, threeC, subdivisionP, subdivisionQ, Fin.sum_univ_three]

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

end FormalResearch.RiemannHypothesis.SourceSchedulingTransshipment
