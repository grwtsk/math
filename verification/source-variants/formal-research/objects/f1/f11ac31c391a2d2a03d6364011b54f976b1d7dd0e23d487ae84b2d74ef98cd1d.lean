import Surface.CosmeticSurgery.Core

/-!
# The current purely cosmetic surgery reduction

This module does not derive the global surgery-theoretic reduction from the
abstract filling interface.  Instead, `CurrentReduction` is an explicit
capability whose fields are the mathematical results imported from the
literature: the opposite-coefficient restriction, the reduction to the two
marked slopes `2` and `-2`, the residual knot invariants, and hyperbolic
replacement.  Consequently, every theorem below visibly depends on a value of
`CurrentReduction`; bibliographic prose is never used as theorem authority.

The fixed-knot theorem keeps the original knot.  The global theorem uses the
separate hyperbolic-replacement field and therefore only asserts a hyperbolic
residual representative after a global counterexample has been supplied.
-/

namespace Surface.CosmeticSurgery

universe u

open OrientedKnotFillingTheory

/--
The presently established composite reduction for purely cosmetic surgeries
on nontrivial knots in the three-sphere.

The fields are deliberately proof-bearing.  A downstream development may
construct this capability from exact, versioned translations of the Ni--Wu,
Hanselman, Daemi--Miller Eismeier--Lidman, and Ren results, but this module does
not manufacture those translations from citations or metadata.
-/
structure CurrentReduction (T : OrientedKnotFillingTheory.{u}) where
  /-- Distinct cosmetic slopes have opposite coefficients. -/
  oppositeCoefficients :
    ∀ {K : T.Knot} {r s : T.Slope K},
      T.Nontrivial K → T.PurelyCosmeticPair K r s →
        T.OppositeCoefficients K r s
  /-- In positive-numerator notation, the first slope satisfies `q² ≡ -1 mod p`. -/
  niWuCongruence :
    ∀ {K : T.Knot} {r s : T.Slope K},
      T.Nontrivial K → T.PurelyCosmeticPair K r s →
        T.NiWuCongruence r
  /-- The surviving unordered slope pair is exactly `2` and `-2`. -/
  residualSlopes :
    ∀ {K : T.Knot} {r s : T.Slope K},
      T.Nontrivial K → T.PurelyCosmeticPair K r s →
        (r = T.plusTwo K ∧ s = T.minusTwo K) ∨
        (r = T.minusTwo K ∧ s = T.plusTwo K)
  /-- Every counterexample knot has the complete fixed-knot residual profile. -/
  residualInvariants :
    ∀ {K : T.Knot},
      T.Nontrivial K → T.KnotCounterexample K →
        T.FixedKnotResidualProfile K
  /--
  Any global counterexample has a hyperbolic residual representative whose
  two marked fillings are themselves hyperbolic.
  -/
  hyperbolicReplacement :
    T.ConjectureFalse → ∃ K : T.Knot, T.ResidualCounterexample K

namespace OrientedKnotFillingTheory

variable (T : OrientedKnotFillingTheory.{u})

/-- Oriented homeomorphism of fillings is symmetric. -/
theorem fillingsHomeomorphic_symm
    {K : T.Knot} {r s : T.Slope K}
    (h : T.FillingsHomeomorphic K r s) :
    T.FillingsHomeomorphic K s r := by
  rcases h with ⟨h⟩
  exact ⟨T.homeomorphismSymm h⟩

end OrientedKnotFillingTheory

namespace CurrentReduction

variable {T : OrientedKnotFillingTheory.{u}}

/--
For a fixed nontrivial knot, being a counterexample is equivalent to carrying
the residual `2` and `-2` filling homeomorphism together with the residual
invariants.  In the reversed slope ordering, symmetry of the supplied
oriented homeomorphism restores the canonical `2`-to-`-2` order.
-/
theorem knotCounterexample_iff_fixedKnotResidualCounterexample
    (R : CurrentReduction T)
    {K : T.Knot}
    (hK : T.Nontrivial K) :
    T.KnotCounterexample K ↔ T.FixedKnotResidualCounterexample K := by
  constructor
  · intro hcounterexample
    refine ⟨R.residualInvariants hK hcounterexample, ?_⟩
    rcases hcounterexample with ⟨r, s, hcosmetic⟩
    rcases R.residualSlopes hK hcosmetic with hrs | hrs
    · rcases hrs with ⟨rfl, rfl⟩
      exact hcosmetic.2
    · rcases hrs with ⟨rfl, rfl⟩
      exact T.fillingsHomeomorphic_symm hcosmetic.2
  · exact T.fixedKnotResidualCounterexample_is_knotCounterexample

/--
The global conjecture fails exactly when a hyperbolic residual counterexample
exists.  The forward implication is the explicit replacement capability; the
reverse implication is the direct observation that such a package already is
a nontrivial knot counterexample.
-/
theorem conjectureFalse_iff_exists_residualCounterexample
    (R : CurrentReduction T) :
    T.ConjectureFalse ↔ ∃ K : T.Knot, T.ResidualCounterexample K := by
  constructor
  · exact R.hyperbolicReplacement
  · rintro ⟨K, hK⟩
    exact T.residualCounterexample_implies_conjectureFalse hK

/-- Every fixed-knot counterexample has the residual invariant profile. -/
theorem residualProfile_of_knotCounterexample
    (R : CurrentReduction T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    (hcounterexample : T.KnotCounterexample K) :
    T.FixedKnotResidualProfile K :=
  R.residualInvariants hK hcounterexample

/-- Every cosmetic pair in the reduction has opposite coefficients. -/
theorem oppositeCoefficients_of_purelyCosmeticPair
    (R : CurrentReduction T)
    {K : T.Knot} {r s : T.Slope K}
    (hK : T.Nontrivial K)
    (hcosmetic : T.PurelyCosmeticPair K r s) :
    T.OppositeCoefficients K r s :=
  R.oppositeCoefficients hK hcosmetic

/-- Every cosmetic pair in the reduction satisfies the Ni--Wu coefficient congruence. -/
theorem niWuCongruence_of_purelyCosmeticPair
    (R : CurrentReduction T)
    {K : T.Knot} {r s : T.Slope K}
    (hK : T.Nontrivial K)
    (hcosmetic : T.PurelyCosmeticPair K r s) :
    T.NiWuCongruence r :=
  R.niWuCongruence hK hcosmetic

end CurrentReduction

end Surface.CosmeticSurgery
