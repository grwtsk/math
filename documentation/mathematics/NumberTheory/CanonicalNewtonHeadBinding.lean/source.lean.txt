/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalNewtonWitness
import GRWTSK.NumberTheory.Chebyshev.CanonicalZeroHeadBinding

set_option autoImplicit false

/-!
# Local Newton enclosures supply the canonical unit-witness constructor

Each local zero now follows from two actual center enclosures and checked
rational inequalities. The global count still needs its independent proof.
No center/residual evaluator, sharp count, tested external zero packet, line
status, or strict prime margin is supplied. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED. The inherited classical witness choice remains explicit.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalNewtonHeadBinding

open scoped BigOperators
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalTentAccumulation
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.RationalNewtonWitness
open CanonicalZeroHeadBinding CanonicalRationalTentEvaluation

/-- No separately supplied local-zero existence or exact multiplicity input.
Centers/radii are bound to the numerical rows by literal data equalities. -/
noncomputable def of_newton_enclosures (T : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (stages : Fin k → ℕ) (signs : Fin k → Bool) (data : Fin k → Data)
    (hcenters : ∀ i, (data i).center = (rows i).point.center)
    (hradii : ∀ i, (data i).radius = (rows i).point.coordinateError)
    (hlocal : ∀ i, GRWTSK.RiemannHypothesis.RationalNewtonWitness.verify (stages i) (signs i) (data i) = true)
    (hvalues : ∀ i, CenterEnclosures (data i))
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hweights : ∀ i, (rows i).weight = 1)
    (hcount : heightCount (T : ℝ) ≤ k) : HeadBinding (T : ℝ) rows := by
  apply of_simple_witnesses T rows hgeometry hweights
  · intro i
    obtain ⟨z, hz, _, _, _⟩ := exists_zero (stages i) (signs i) (data i) (hlocal i) (hvalues i)
    exact ⟨z, by simpa only [hcenters i, hradii i] using hz⟩
  · exact hcount

/-- Count saturation and local certificates still concern exactly the same cutoff. -/
theorem exact_count (T : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (b : HeadBinding (T : ℝ) rows) (hw : ∀ i, (rows i).weight = 1) :
    heightCount (T : ℝ) = k := by
  simpa only [hw, Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul,
    mul_one] using exact_count_of_binding (T : ℝ) rows b

/-- Use the already derived local binding; arithmetic verification is still a
separate computation and cannot prove either center enclosure or the count. -/
theorem prime_of_newton_bound_head (n : ℕ) (hn : 2 ≤ n) (T : ℚ) (hT : 2 ≤ T)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (stages : Fin k → ℕ) (signs : Fin k → Bool) (data : Fin k → Data)
    (hcenters : ∀ i, (data i).center = (rows i).point.center)
    (hradii : ∀ i, (data i).radius = (rows i).point.coordinateError)
    (hlocal : ∀ i, GRWTSK.RiemannHypothesis.RationalNewtonWitness.verify (stages i) (signs i) (data i) = true)
    (hvalues : ∀ i, CenterEnclosures (data i))
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hweights : ∀ i, (rows i).weight = 1) (hcount : heightCount (T : ℝ) ≤ k)
    (tolerance : ℚ) (out : State)
    (hv : GRWTSK.Analysis.Complex.RationalTentAccumulation.verify
      (squareCenterQ n) (squareRadiusQ n) bits rows tolerance out = true)
    (hmargin : 0 < CanonicalTentPrimeCriterion.canonicalPrimeMargin n (T : ℝ)
      ((QComplex.embed out.value).re + (out.error : ℝ)) (-SignedTentCorrection.squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_verified_rational_head n hn (T : ℝ) (by exact_mod_cast hT) bits rows
    (of_newton_enclosures T rows stages signs data hcenters hradii hlocal hvalues
      hgeometry hweights hcount) tolerance out hv hmargin

end GRWTSK.NumberTheory.Chebyshev.CanonicalNewtonHeadBinding
