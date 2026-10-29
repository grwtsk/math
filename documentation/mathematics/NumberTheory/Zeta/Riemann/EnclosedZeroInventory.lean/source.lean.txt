/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion
import GRWTSK.Analysis.ErrorBounds.RationalDiskSeparation
import GRWTSK.Analysis.Complex.RationalTentEnclosure

set_option autoImplicit false

/-!
# Exhausting the canonical zeta head by separated, locally justified enclosures

The Boolean geometry checks neither locate zeros nor prove a zero-count bound.
Genuine local zero witnesses with multiplicity LOWER bounds and an independently
proved upper bound on the COMPLETE both-sign canonical count supply those inputs.
Their combination constructs the previously required equivalence and derives
EXACT multiplicities. No simplicity, uniqueness or coverage premise is inserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.EnclosedZeroInventory

open scoped BigOperators
open CanonicalZeroDivisor
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open GRWTSK.Analysis.Complex
open RationalMellinFamily (Member memberAt)
open RationalTentEnclosure (CoordinateData radiusAt)

abbrev RecordIndex (family : List Member) := {i // i ∈ Finset.range family.length}
abbrev Head (T : ℝ) := {z : ZeroPoint // z ∈ heightHead T}

/-- The same positive natural record weights used by the evaluator. -/
def recordMass (family : List Member) : ℕ :=
  ∑ i ∈ Finset.range family.length, (memberAt family i).multiplicity

/-- Only finite rational geometry. No analytic claim occurs inside this decision. -/
def Geometry (family : List Member) (T : ℚ) (d : CoordinateData) : Prop :=
  0 ≤ T ∧ d.radii.length = family.length ∧
  (∀ i ∈ Finset.range family.length,
    RationalDiskSeparation.belowHeight (memberAt family i).center (radiusAt d i) T = true) ∧
  (∀ i ∈ Finset.range family.length, ∀ j ∈ Finset.range family.length, i ≠ j →
    RationalDiskSeparation.separated (memberAt family i).center (memberAt family j).center
      (radiusAt d i) (radiusAt d j) = true)

instance instDecidableGeometry (family : List Member) (T : ℚ) (d : CoordinateData) :
    Decidable (Geometry family T d) := by unfold Geometry; infer_instance

def checkGeometry (family : List Member) (T : ℚ) (d : CoordinateData) : Bool :=
  decide (Geometry family T d)

/-- A proof about ONE actual zero per record, not merely total zero mass in a disk.
No uniqueness, exact order or canonical-height membership is assumed here. -/
def LocalWitnesses (family : List Member) (d : CoordinateData) : Prop :=
  ∀ i : RecordIndex family, ∃ z : ZeroPoint,
    ‖z.1 - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ) ∧
      (memberAt family i).multiplicity ≤ multiplicity z

theorem checkGeometry_iff (family : List Member) (T : ℚ) (d : CoordinateData) :
    checkGeometry family T d = true ↔ Geometry family T d := by
  simp only [checkGeometry, decide_eq_true_eq]

theorem sum_head_weights (T : ℝ) :
    (∑ z : Head T, multiplicity z.1) = heightCount T := by
  classical
  simpa only [heightCount] using (Finset.sum_attach (heightHead T) multiplicity)

theorem sum_record_weights (family : List Member) :
    (∑ i : RecordIndex family, (memberAt family i).multiplicity) = recordMass family := by
  classical
  simpa only [recordMass] using
    (Finset.sum_attach (Finset.range family.length) (fun i => (memberAt family i).multiplicity))

/-- Local existence, separation and the complete upper count construct the bijection.
Both analytic inputs remain explicit and are not manufactured by geometry. -/
theorem exists_canonical_equiv {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true) (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    ∃ e : RecordIndex family ≃ Head (T : ℝ),
      (∀ i, ‖(e i).1.1 - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) ∧
      (∀ i, multiplicity (e i).1 = (memberAt family i).multiplicity) := by
  classical
  obtain ⟨_hT, _hlen, hheight, hsep⟩ := (checkGeometry_iff family T d).mp hgeom
  let points : RecordIndex family → ZeroPoint := fun i => Classical.choose (hloc i)
  have hclose : ∀ i, ‖(points i).1 - toComplex (memberAt family i).center‖ ≤
      (radiusAt d i : ℝ) := fun i => (Classical.choose_spec (hloc i)).1
  have hlower : ∀ i, (memberAt family i).multiplicity ≤ multiplicity (points i) :=
    fun i => (Classical.choose_spec (hloc i)).2
  have hmem : ∀ i : RecordIndex family, points i ∈ heightHead (T : ℝ) := by
    intro i
    apply (mem_heightHead _ _).mpr
    exact RationalDiskSeparation.enclosed_height_le (hheight i i.2) (hclose i)
  let f : RecordIndex family → Head (T : ℝ) := fun i => ⟨points i, hmem i⟩
  have hfi : Function.Injective f := by
    intro i j he
    by_contra hij
    have hv : (i : ℕ) ≠ (j : ℕ) := by
      intro hv; exact hij (Subtype.ext hv)
    have hn := RationalDiskSeparation.enclosed_points_ne
      (hsep i i.2 j j.2 hv) (hclose i) (hclose j)
    exact hn (congrArg (fun u : Head (T : ℝ) => u.1.1) he)
  have hc : (∑ z : Head (T : ℝ), multiplicity z.1) ≤
      ∑ i : RecordIndex family, (memberAt family i).multiplicity := by
    rw [sum_head_weights, sum_record_weights]
    exact hcount
  obtain ⟨e, he, hm⟩ :=
    GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion.exists_equiv_of_mass_le f hfi
      (fun i => (memberAt family i).multiplicity) (fun z => multiplicity z.1)
      (fun z => multiplicity_pos z.1) hlower hc
  refine ⟨e, ?_, hm⟩
  intro i
  rw [he i]
  exact hclose i

/-- The independently supplied upper bound is forced to equality at the claimed mass. -/
theorem count_eq_recordMass {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true) (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    heightCount (T : ℝ) = recordMass family := by
  classical
  obtain ⟨e, _, hm⟩ := exists_canonical_equiv hgeom hloc hcount
  calc
    _ = ∑ z : Head (T : ℝ), multiplicity z.1 := (sum_head_weights _).symm
    _ = ∑ i : RecordIndex family, multiplicity (e i).1 := (e.sum_comp _).symm
    _ = ∑ i : RecordIndex family, (memberAt family i).multiplicity := by
      apply Finset.sum_congr rfl
      intro i _
      exact hm i
    _ = _ := sum_record_weights family

/-- One actual canonical zero per separated record is derived, not assumed. -/
theorem source_card_eq_length {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true) (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    (heightHead (T : ℝ)).card = family.length := by
  classical
  obtain ⟨e, _, _⟩ := exists_canonical_equiv hgeom hloc hcount
  have hc := Fintype.card_congr e
  simpa only [Fintype.card_coe, Finset.card_range] using hc.symm

/-- Complete correspondence and strict separation derive uniqueness in each closed disk.
The geometric height guard ensures every possible competing actual zero is in the head. -/
theorem enclosed_zero_unique {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true)
    (e : RecordIndex family ≃ Head (T : ℝ))
    (hclose : ∀ i, ‖(e i).1.1 - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ))
    (i : RecordIndex family) (z : ZeroPoint)
    (hz : ‖z.1 - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) : z = (e i).1 := by
  classical
  obtain ⟨_, _, hheight, hsep⟩ := (checkGeometry_iff family T d).mp hgeom
  have hmem : z ∈ heightHead (T : ℝ) :=
    (mem_heightHead _ _).mpr
      (RationalDiskSeparation.enclosed_height_le (hheight i i.2) hz)
  obtain ⟨j, hj⟩ := e.surjective ⟨z, hmem⟩
  by_cases hji : j = i
  · subst j
    exact (congrArg (fun u : Head (T : ℝ) => u.1) hj).symm
  · have hv : (j : ℕ) ≠ (i : ℕ) := fun hv => hji (Subtype.ext hv)
    have hn := RationalDiskSeparation.enclosed_points_ne
      (hsep j j.2 i i.2 hv) (hclose j) hz
    exact False.elim (hn (congrArg (fun u : Head (T : ℝ) => u.1.1) hj))

end GRWTSK.RiemannHypothesis.EnclosedZeroInventory
