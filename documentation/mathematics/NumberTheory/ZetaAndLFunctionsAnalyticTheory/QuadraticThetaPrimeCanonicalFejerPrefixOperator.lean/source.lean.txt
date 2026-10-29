/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPropagationCorrection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Real-valued signed lattice sample of the symmetric triangular kernel.
Unlike sampledTriangularKernel, this keeps the kernel value rather than its norm
because it is used to define a linear smoothing operator. -/
def signedSampledTriangularKernel
    (X N : ℕ) (r : ℤ) : ℝ :=
  (1 / (X : ℝ)) *
    (symmetricTriangularKernel N
      ((((r : ℝ) / (X : ℝ))) : AddCircle (1 : ℝ))).re

/-- Fejer smoothing of the sharp prefix indicator q in (2X,m], evaluated at p.
The ambient arithmetic window is handled separately below. -/
def canonicalFejerPrefixWeight
    (X N m p : ℕ) : ℝ :=
  ∑ q ∈ Finset.Ioc (2 * X) m,
    signedSampledTriangularKernel X N
      ((p : ℤ) - (q : ℤ))

/-- Smoothed logarithmic-prime mass on the ambient octave (2X,4X]. -/
def canonicalFejerPrimeMass
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ Finset.Ioc (2 * X) (4 * X) with p.Prime,
    canonicalFejerPrefixWeight X N m p * Real.log p

/-- The matching smoothed counting-measure mass.  This is required because the
target is a discrepancy, not prime mass alone. -/
def canonicalFejerCountingMass
    (X N m : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
    canonicalFejerPrefixWeight X N m n

/-- Canonical finite Fejer-smoothed prime-prefix discrepancy on the octave. -/
def canonicalPrimePrefixFejerOperator :
    PrimePrefixSmoothingOperator where
  value X N m :=
    canonicalFejerPrimeMass X N m -
      canonicalFejerCountingMass X N m

/-- Exact representation of the canonical operator as the same Fejer prefix
weight applied to logarithmic prime mass and counting mass. -/
theorem canonicalPrimePrefixFejerOperator_value
    (X N m : ℕ) :
    canonicalPrimePrefixFejerOperator.value X N m =
      (∑ p ∈ Finset.Ioc (2 * X) (4 * X) with p.Prime,
        canonicalFejerPrefixWeight X N m p * Real.log p) -
      (∑ n ∈ Finset.Ioc (2 * X) (4 * X),
        canonicalFejerPrefixWeight X N m n) := by
  rfl

/-- Source-faithful representation for discrepancy smoothing.  This corrects
the earlier prime-only representation interface by retaining the matching
counting-measure baseline. -/
def CanonicalPrimePrefixFejerDiscrepancyRepresentation : Prop :=
  ∀ X N m : ℕ,
    0 < X → 0 < N →
    2 * X ≤ m → m ≤ 4 * X →
      canonicalPrimePrefixFejerOperator.value X N m =
        canonicalFejerPrimeMass X N m -
          canonicalFejerCountingMass X N m

theorem canonicalPrimePrefixFejerDiscrepancyRepresentation :
    CanonicalPrimePrefixFejerDiscrepancyRepresentation := by
  intro X N m hX hN hm0 hm1
  rfl

/-- The exact approximation error of the canonical operator. -/
theorem canonicalPrimePrefixFejerOperator_error
    (X N m : ℕ) :
    canonicalPrimePrefixFejerOperator.error X N m =
      sharpPrimePrefixDiscrepancy X m -
        (canonicalFejerPrimeMass X N m -
          canonicalFejerCountingMass X N m) := by
  rfl

/-- The genuine remaining propagation theorem for the canonical operator. -/
def CanonicalPrimePrefixFejerTailComparison : Prop :=
  PrimePrefixSampledKernelTailPropagationFor
    canonicalPrimePrefixFejerOperator

/-- The next acceptance packet no longer permits a freely chosen smoothing
operator or a prime-only baseline. -/
structure CanonicalPrimePrefixFejerAccepted where
  representation :
    CanonicalPrimePrefixFejerDiscrepancyRepresentation
  tailComparison :
    CanonicalPrimePrefixFejerTailComparison

end GRWTSK.RiemannHypothesis
