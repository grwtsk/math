/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Separation of the concrete Goldbach rational arcs

Distinct reduced rational centers remain separated after any integral period
lifts. The separation is at least the inverse product of the two denominators.

For the declared radius `Q / (q * (N + 1))`, the explicit sufficient condition

`2 * Q^2 < N + 1`

makes all three period lifts belonging to distinct reduced indices disjoint.
The condition is deliberately sufficient rather than claimed optimal.

This module supplies finite exact geometry only. It contains no prime-sum
approximation, singular-series estimate, minor-arc bound, or Goldbach theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation

open scoped Real
open Set Function
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs

noncomputable section

/-- The center of one integral period lift of a reduced rational center. -/
def goldbachLiftedRationalArcCenter
    (a q : ℕ) (k : ℤ) : ℝ :=
  goldbachRationalArcCenter a q + (k : ℝ)

/-- One closed interval around one integral period lift. -/
def goldbachLiftedRationalArc
    (Q N a q : ℕ) (k : ℤ) : Set ℝ :=
  Set.Icc
    (goldbachLiftedRationalArcCenter a q k -
      goldbachRationalArcRadius Q N q)
    (goldbachLiftedRationalArcCenter a q k +
      goldbachRationalArcRadius Q N q)

/-- Every indexed reduced center lies in `[0,1)`. -/
theorem goldbachRationalArcCenter_mem_Ico
    {Q a q : ℕ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q) :
    goldbachRationalArcCenter a q ∈ Set.Ico (0 : ℝ) 1 := by
  rcases (mem_goldbachRationalArcIndices).1 hindex with
    ⟨haQ, hqQ, hq, haq, hcoprime⟩
  constructor
  · exact div_nonneg (by positivity) (by positivity)
  · unfold goldbachRationalArcCenter
    rw [div_lt_one]
    · exact_mod_cast haq
    · exact_mod_cast hq

/-- Reduced positive natural fractions are unique under cross multiplication. -/
theorem goldbachReducedFraction_eq_of_cross_mul
    {a q b r : ℕ}
    (hq : 0 < q) (hr : 0 < r)
    (haq : Nat.Coprime a q) (hbr : Nat.Coprime b r)
    (hcross : a * r = b * q) :
    (a, q) = (b, r) := by
  have hq_dvd_r : q ∣ r := by
    apply haq.symm.dvd_of_dvd_mul_left
    refine ⟨b, ?_⟩
    calc
      a * r = b * q := hcross
      _ = q * b := Nat.mul_comm _ _
  have hr_dvd_q : r ∣ q := by
    apply hbr.symm.dvd_of_dvd_mul_left
    refine ⟨a, ?_⟩
    calc
      b * q = a * r := hcross.symm
      _ = r * a := Nat.mul_comm _ _
  have hqr : q = r := Nat.dvd_antisymm hq_dvd_r hr_dvd_q
  subst r
  have hab : a = b := Nat.mul_right_cancel hq hcross
  exact Prod.ext hab rfl

/-- Equality of lifted centers remembers both the reduced fraction and the
integral lift. -/
theorem goldbachLiftedRationalArcCenter_eq_iff
    {Q a q b r : ℕ} {k l : ℤ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q) :
    goldbachLiftedRationalArcCenter a q k =
        goldbachLiftedRationalArcCenter b r l ↔
      (a, q) = (b, r) ∧ k = l := by
  constructor
  · intro hcenter
    have hca := goldbachRationalArcCenter_mem_Ico ha
    have hcb := goldbachRationalArcCenter_mem_Ico hb
    have hdiff :
        ((l - k : ℤ) : ℝ) =
          goldbachRationalArcCenter a q -
            goldbachRationalArcCenter b r := by
      rw [Int.cast_sub]
      unfold goldbachLiftedRationalArcCenter at hcenter
      linarith
    have hlower : (-1 : ℝ) < ((l - k : ℤ) : ℝ) := by
      rw [hdiff]
      linarith [hca.1, hcb.2]
    have hupper : ((l - k : ℤ) : ℝ) < 1 := by
      rw [hdiff]
      linarith [hca.2, hcb.1]
    have hlowerZ : (-1 : ℤ) < l - k := by
      exact_mod_cast hlower
    have hupperZ : l - k < (1 : ℤ) := by
      exact_mod_cast hupper
    have hzero : l - k = 0 := by omega
    have hkl : k = l := by omega
    have hfraction :
        goldbachRationalArcCenter a q =
          goldbachRationalArcCenter b r := by
      unfold goldbachLiftedRationalArcCenter at hcenter
      rw [hkl] at hcenter
      linarith
    rcases (mem_goldbachRationalArcIndices).1 ha with
      ⟨haQ, hqQ, hq, haq, hcoprimeA⟩
    rcases (mem_goldbachRationalArcIndices).1 hb with
      ⟨hbQ, hrQ, hr, hbr, hcoprimeB⟩
    have hq0 : (q : ℝ) ≠ 0 := by positivity
    have hr0 : (r : ℝ) ≠ 0 := by positivity
    unfold goldbachRationalArcCenter at hfraction
    field_simp [hq0, hr0] at hfraction
    have hcross : a * r = b * q := by
      exact_mod_cast (hfraction.trans (mul_comm (q : ℝ) b))
    exact
      ⟨goldbachReducedFraction_eq_of_cross_mul
          hq hr hcoprimeA hcoprimeB hcross,
        hkl⟩
  · rintro ⟨hpair, hkl⟩
    rcases Prod.mk.inj hpair with ⟨rfl, rfl⟩
    subst l
    rfl

/-- The integral numerator controlling the difference of two lifted centers. -/
def goldbachLiftedRationalDeterminant
    (a q b r : ℕ) (k l : ℤ) : ℤ :=
  (a : ℤ) * (r : ℤ) - (b : ℤ) * (q : ℤ) +
    (k - l) * (q : ℤ) * (r : ℤ)

/-- Exact common-denominator expression for two lifted centers. -/
theorem goldbachLiftedRationalArcCenter_sub_eq
    {a q b r : ℕ} {k l : ℤ}
    (hq : 0 < q) (hr : 0 < r) :
    goldbachLiftedRationalArcCenter a q k -
        goldbachLiftedRationalArcCenter b r l =
      (goldbachLiftedRationalDeterminant a q b r k l : ℝ) /
        ((q : ℝ) * (r : ℝ)) := by
  have hq0 : (q : ℝ) ≠ 0 := by positivity
  have hr0 : (r : ℝ) ≠ 0 := by positivity
  unfold goldbachLiftedRationalArcCenter
    goldbachRationalArcCenter
    goldbachLiftedRationalDeterminant
  push_cast
  field_simp [hq0, hr0] <;> ring

/-- Distinct reduced fraction/lift data give a nonzero integral determinant. -/
theorem goldbachLiftedRationalDeterminant_ne_zero
    {Q a q b r : ℕ} {k l : ℤ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hdistinct : (a, q) ≠ (b, r) ∨ k ≠ l) :
    goldbachLiftedRationalDeterminant a q b r k l ≠ 0 := by
  rcases (mem_goldbachRationalArcIndices).1 ha with
    ⟨haQ, hqQ, hq, haq, hcoprimeA⟩
  rcases (mem_goldbachRationalArcIndices).1 hb with
    ⟨hbQ, hrQ, hr, hbr, hcoprimeB⟩
  intro hzero
  have hsub :=
    goldbachLiftedRationalArcCenter_sub_eq
      (a := a) (q := q) (b := b) (r := r)
      (k := k) (l := l) hq hr
  rw [hzero, Int.cast_zero, zero_div] at hsub
  have hcenter :
      goldbachLiftedRationalArcCenter a q k =
        goldbachLiftedRationalArcCenter b r l :=
    sub_eq_zero.mp hsub
  have heq :=
    (goldbachLiftedRationalArcCenter_eq_iff ha hb).1 hcenter
  rcases hdistinct with hpair | hkl
  · exact hpair heq.1
  · exact hkl heq.2

/-- Farey-type separation for arbitrary integral period lifts. -/
theorem goldbachLiftedRationalArcCenter_separation
    {Q a q b r : ℕ} {k l : ℤ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hdistinct : (a, q) ≠ (b, r) ∨ k ≠ l) :
    1 / ((q : ℝ) * (r : ℝ)) ≤
      |goldbachLiftedRationalArcCenter a q k -
        goldbachLiftedRationalArcCenter b r l| := by
  rcases (mem_goldbachRationalArcIndices).1 ha with
    ⟨haQ, hqQ, hq, haq, hcoprimeA⟩
  rcases (mem_goldbachRationalArcIndices).1 hb with
    ⟨hbQ, hrQ, hr, hbr, hcoprimeB⟩
  have hden : 0 < (q : ℝ) * (r : ℝ) := by positivity
  have hdet :
      goldbachLiftedRationalDeterminant a q b r k l ≠ 0 :=
    goldbachLiftedRationalDeterminant_ne_zero ha hb hdistinct
  have hdetabs :
      (1 : ℝ) ≤
        |(goldbachLiftedRationalDeterminant a q b r k l : ℝ)| := by
    rw [← Int.cast_one, ← Int.cast_abs, Int.cast_le]
    exact Int.one_le_abs hdet
  rw [goldbachLiftedRationalArcCenter_sub_eq hq hr,
    abs_div, abs_of_pos hden]
  exact (div_le_div_iff_of_pos_right hden).2 hdetabs

/-- Pair-specific radius control needed to beat the denominator-product
separation. -/
theorem goldbachRationalArcRadius_add_lt_inverse_mul
    {Q N q r : ℕ}
    (hq : 0 < q) (hr : 0 < r)
    (hscale : Q * (q + r) < N + 1) :
    goldbachRationalArcRadius Q N q +
        goldbachRationalArcRadius Q N r <
      1 / ((q : ℝ) * (r : ℝ)) := by
  have hqR : (0 : ℝ) < (q : ℝ) := by exact_mod_cast hq
  have hrR : (0 : ℝ) < (r : ℝ) := by exact_mod_cast hr
  have hNR : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hden :
      0 < (q : ℝ) * (r : ℝ) * ((N + 1 : ℕ) : ℝ) := by
    positivity
  have hscaleR :
      (Q : ℝ) * ((q : ℝ) + (r : ℝ)) <
        ((N + 1 : ℕ) : ℝ) := by
    exact_mod_cast hscale
  unfold goldbachRationalArcRadius
  calc
    (Q : ℝ) / ((q : ℝ) * ((N + 1 : ℕ) : ℝ)) +
          (Q : ℝ) / ((r : ℝ) * ((N + 1 : ℕ) : ℝ)) =
        ((Q : ℝ) * ((q : ℝ) + (r : ℝ))) /
          ((q : ℝ) * (r : ℝ) * ((N + 1 : ℕ) : ℝ)) := by
            field_simp [hqR.ne', hrR.ne', hNR.ne'] <;> ring
    _ < ((N + 1 : ℕ) : ℝ) /
          ((q : ℝ) * (r : ℝ) * ((N + 1 : ℕ) : ℝ)) :=
      div_lt_div_of_pos_right hscaleR hden
    _ = 1 / ((q : ℝ) * (r : ℝ)) := by
      field_simp [hqR.ne', hrR.ne', hNR.ne'] <;> ring

/-- The global scale condition implies the pair-specific radius inequality for
all indexed denominators. -/
theorem goldbachRationalArcRadius_add_lt_of_global_scale
    {Q N a q b r : ℕ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachRationalArcRadius Q N q +
        goldbachRationalArcRadius Q N r <
      1 / ((q : ℝ) * (r : ℝ)) := by
  rcases (mem_goldbachRationalArcIndices).1 ha with
    ⟨haQ, hqQ, hq, haq, hcoprimeA⟩
  rcases (mem_goldbachRationalArcIndices).1 hb with
    ⟨hbQ, hrQ, hr, hbr, hcoprimeB⟩
  apply goldbachRationalArcRadius_add_lt_inverse_mul hq hr
  calc
    Q * (q + r) ≤ Q * (Q + Q) :=
      Nat.mul_le_mul_left Q (Nat.add_le_add hqQ hrQ)
    _ = 2 * Q ^ 2 := by ring
    _ < N + 1 := hscale

/-- Two closed intervals are disjoint when the sum of their radii is strictly
smaller than the distance between their centers. -/
theorem disjoint_Icc_of_radius_add_lt_abs_sub
    {c d r s : ℝ}
    (hsep : r + s < |c - d|) :
    Disjoint (Set.Icc (c - r) (c + r))
      (Set.Icc (d - s) (d + s)) := by
  refine Set.disjoint_left.2 ?_
  intro x hx hy
  rcases le_total c d with hcd | hdc
  · rw [abs_of_nonpos (sub_nonpos.mpr hcd)] at hsep
    linarith [hx.2, hy.1]
  · rw [abs_of_nonneg (sub_nonneg.mpr hdc)] at hsep
    linarith [hx.1, hy.2]

/-- Under the global scale condition, distinct reduced fraction/lift data
produce disjoint closed intervals. -/
theorem goldbachLiftedRationalArcs_disjoint
    {Q N a q b r : ℕ} {k l : ℤ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hdistinct : (a, q) ≠ (b, r) ∨ k ≠ l)
    (hscale : 2 * Q ^ 2 < N + 1) :
    Disjoint
      (goldbachLiftedRationalArc Q N a q k)
      (goldbachLiftedRationalArc Q N b r l) := by
  apply disjoint_Icc_of_radius_add_lt_abs_sub
  exact
    (goldbachRationalArcRadius_add_lt_of_global_scale ha hb hscale).trans_le
      (goldbachLiftedRationalArcCenter_separation ha hb hdistinct)

/-- The existing three-lift raw arc is exactly the union of lifts `0`, `1`,
and `-1`. -/
theorem goldbachPeriodizedRationalArc_eq_three_lifts
    (Q N a q : ℕ) :
    goldbachPeriodizedRationalArc Q N a q =
      goldbachLiftedRationalArc Q N a q 0 ∪
        (goldbachLiftedRationalArc Q N a q 1 ∪
          goldbachLiftedRationalArc Q N a q (-1)) := by
  ext x
  simp [goldbachPeriodizedRationalArc,
    goldbachLiftedRationalArc,
    goldbachLiftedRationalArcCenter]
  ring_nf

/-- Distinct reduced indices have disjoint full three-lift raw arcs under the
global scale condition. -/
theorem goldbachPeriodizedRationalArcs_disjoint
    {Q N a q b r : ℕ}
    (ha : (a, q) ∈ goldbachRationalArcIndices Q)
    (hb : (b, r) ∈ goldbachRationalArcIndices Q)
    (hpair : (a, q) ≠ (b, r))
    (hscale : 2 * Q ^ 2 < N + 1) :
    Disjoint
      (goldbachPeriodizedRationalArc Q N a q)
      (goldbachPeriodizedRationalArc Q N b r) := by
  have hd (k l : ℤ) :
      Disjoint
        (goldbachLiftedRationalArc Q N a q k)
        (goldbachLiftedRationalArc Q N b r l) :=
    goldbachLiftedRationalArcs_disjoint ha hb (Or.inl hpair) hscale
  rw [goldbachPeriodizedRationalArc_eq_three_lifts,
    goldbachPeriodizedRationalArc_eq_three_lifts]
  refine Set.disjoint_left.2 ?_
  intro x hx hy
  rcases hx with hx0 | hx1 | hxm1
  · rcases hy with hy0 | hy1 | hym1
    · exact Set.disjoint_left.1 (hd 0 0) hx0 hy0
    · exact Set.disjoint_left.1 (hd 0 1) hx0 hy1
    · exact Set.disjoint_left.1 (hd 0 (-1)) hx0 hym1
  · rcases hy with hy0 | hy1 | hym1
    · exact Set.disjoint_left.1 (hd 1 0) hx1 hy0
    · exact Set.disjoint_left.1 (hd 1 1) hx1 hy1
    · exact Set.disjoint_left.1 (hd 1 (-1)) hx1 hym1
  · rcases hy with hy0 | hy1 | hym1
    · exact Set.disjoint_left.1 (hd (-1) 0) hxm1 hy0
    · exact Set.disjoint_left.1 (hd (-1) 1) hxm1 hy1
    · exact Set.disjoint_left.1 (hd (-1) (-1)) hxm1 hym1

/-- The whole finite raw family is pairwise disjoint under the explicit scale
condition. -/
theorem goldbachPeriodizedRationalArcs_pairwiseDisjoint
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    Set.Pairwise (↑(goldbachRationalArcIndices Q) : Set (ℕ × ℕ))
      (Disjoint on fun (aq : ℕ × ℕ) =>
        goldbachPeriodizedRationalArc Q N aq.1 aq.2) := by
  intro aq haq bq hbq hne
  rcases aq with ⟨a, q⟩
  rcases bq with ⟨b, r⟩
  exact goldbachPeriodizedRationalArcs_disjoint
    haq hbq hne hscale

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation
