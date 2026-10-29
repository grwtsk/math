import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import Zeta23.Statement.SeamClosed
import Mathlib.SetTheory.Cardinal.Finite

/-!
Exact actual positive closed zero-window count, including every analytic
multiplicity slot. No sampled list, simple-zero assumption, verified-height
premise, or Riemann Hypothesis premise is introduced.
Originating mathematical direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

/-- Actual positive ordinate window (0,t], closed at the upper endpoint. -/
def PositiveOccurrenceWindow (t : ℝ) :=
  {o : ZeroOccurrence // 0 < (shiftedValue o).im ∧ (shiftedValue o).im ≤ t}

/-- The same actual points and analytic slots in the count's carrier. -/
def PositiveCountFibres (t : ℝ) :=
  Σ ρ : Zeta23.zerosIn 0 t, Fin (Zeta23.zeroMult ρ.val)

/-- The half shift does not change the ordinate, and multiplicity is definitionally
identical on the two actual carriers. Every slot is preserved exactly once. -/
def positiveOccurrenceWindowEquiv (t : ℝ) :
    PositiveOccurrenceWindow t ≃ PositiveCountFibres t where
  toFun o := ⟨⟨o.val.1.val, by
    change Zeta23.IsNontrivialZero o.val.1.val ∧
      0 < o.val.1.val.im ∧ o.val.1.val.im ≤ t
    refine ⟨o.val.1.property, ?_⟩
    simpa only [shiftedValue, Complex.sub_im, Complex.div_ofNat_im, Complex.one_im,
      zero_div, sub_zero] using o.property⟩, o.val.2⟩
  invFun o := ⟨⟨⟨o.1.val, o.1.property.1⟩, o.2⟩, by
    simpa only [shiftedValue, Complex.sub_im, Complex.div_ofNat_im, Complex.one_im,
      zero_div, sub_zero] using o.1.property.2⟩
  left_inv o := by rcases o with ⟨⟨p, i⟩, h⟩; rfl
  right_inv o := by rcases o with ⟨p, i⟩; rfl

theorem positive_occurrence_window_finite (t : ℝ) : Finite (PositiveOccurrenceWindow t) := by
  have : Finite (Zeta23.zerosIn 0 t) := (Zeta23.zerosIn_finite 0 t).to_subtype
  let : Fintype (Zeta23.zerosIn 0 t) := Fintype.ofFinite _
  let : Fintype (PositiveCountFibres t) := by
    unfold PositiveCountFibres
    infer_instance
  exact Finite.of_equiv (PositiveCountFibres t) (positiveOccurrenceWindowEquiv t).symm

/-- Exact cardinality equals the repository count with analytic multiplicity.
The result holds for every real t, including an ordinate at the cutoff. -/
theorem positive_occurrence_window_card_eq_count (t : ℝ) :
    Nat.card (PositiveOccurrenceWindow t) = Zeta23.Ncount 0 t := by
  classical
  have : Finite (Zeta23.zerosIn 0 t) := (Zeta23.zerosIn_finite 0 t).to_subtype
  let : Fintype (Zeta23.zerosIn 0 t) := Fintype.ofFinite _
  rw [Nat.card_congr (positiveOccurrenceWindowEquiv t)]
  unfold PositiveCountFibres
  rw [Nat.card_sigma]
  simp only [Nat.card_fin]
  rw [Finset.sum_set_coe]
  exact (finsum_mem_eq_toFinset_sum Zeta23.zeroMult (Zeta23.zerosIn 0 t)).symm

end CommonMeanStieltjes
