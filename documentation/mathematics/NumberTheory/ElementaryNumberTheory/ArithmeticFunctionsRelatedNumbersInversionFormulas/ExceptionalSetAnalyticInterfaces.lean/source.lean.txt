/-
Copyright (c) 2026 grwtsk contributors. MIT.

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Propositions 2.1, 3.1, and 4.1.

The source paper acknowledges Bhavik Mehta for Lean assistance on an earlier
version.  The finite box architecture imported below is adapted from the
Apache-2.0 development of Bhavik Mehta and Arend Mellendijk, as recorded in
the imported modules.  The 2026 proposition statements and their authorship
remain distinct from that earlier implementation.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #414.  Stacked parent: draft PR #413.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetCounting
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators
open AnatomicBoxes AdmissibleAnatomicReduction

namespace ExceptionalSetAnalyticInterfaces

/-- The paper index corresponding to the repository's zero-based `Fin d`
coordinate.  A Lean coordinate `i` represents paper coordinate `i+1`. -/
def paperIndex {d : ℕ} (i : Fin d) : ℕ := i.val + 1

@[simp] theorem paperIndex_pos {d : ℕ} (i : Fin d) :
    0 < paperIndex i := by
  simp [paperIndex]

@[simp] theorem paperIndex_le {d : ℕ} (i : Fin d) :
    paperIndex i ≤ d := by
  unfold paperIndex
  omega

/-- A dyadic scale in the source-paper sense: a positive power of two lying in
`[1,X]`.  Strict versus closed ownership belongs to box points, not the scale. -/
def PaperDyadicScale (X n : ℕ) : Prop :=
  (∃ k : ℕ, n = 2 ^ k) ∧ 1 ≤ n ∧ n ≤ X

/-- The paper's products `A`, `B`, and `C`. -/
def paperA {d : ℕ} (p : Parameters d) : ℕ := supportProduct p.A
def paperB {d : ℕ} (p : Parameters d) : ℕ := supportProduct p.B
def paperC {d : ℕ} (p : Parameters d) : ℕ := supportProduct p.C

/-- The paper's product `ABC`. -/
def paperABC {d : ℕ} (p : Parameters d) : ℕ :=
  paperA p * paperB p * paperC p

@[simp] theorem paperABC_eq_scaleProduct {d : ℕ} (p : Parameters d) :
    paperABC p = scaleProduct p := by
  rfl

/-- The finite set of zero-based coordinates whose paper index is divisible
by `m`.  This is the sector `m ∣ i` in Proposition 3.1. -/
def paperDivisibilitySector (d m : ℕ) : Finset (Fin d) :=
  Finset.univ.filter fun i => m ∣ paperIndex i

@[simp] theorem mem_paperDivisibilitySector {d m : ℕ} {i : Fin d} :
    i ∈ paperDivisibilitySector d m ↔ m ∣ paperIndex i := by
  simp [paperDivisibilitySector]

/-- Product of one scale vector over a paper divisibility sector. -/
def paperDivisibilitySectorProduct {d : ℕ} (m : ℕ)
    (x : Fin d → ℕ) : ℕ :=
  ∏ i ∈ paperDivisibilitySector d m, x i

@[simp] theorem paperDivisibilitySectorProduct_one {d : ℕ}
    (x : Fin d → ℕ) :
    paperDivisibilitySectorProduct 1 x = supportProduct x := by
  classical
  simp [paperDivisibilitySectorProduct, paperDivisibilitySector,
    supportProduct, paperIndex]

/-- Product of selected scale coordinates in Proposition 4.1. -/
def paperSelectedScaleProduct {d : ℕ} (I : Finset (Fin d))
    (x : Fin d → ℕ) : ℕ :=
  ∏ i ∈ I, x i

/-- The selected weighted product `∏ A_i^(i-1)` in Proposition 4.1.
Because the Lean coordinate is zero-based, the exponent is literally `i.val`. -/
def paperSelectedWeightedProduct {d : ℕ} (I : Finset (Fin d))
    (x : Fin d → ℕ) : ℕ :=
  ∏ i ∈ I, x i ^ i.val

@[simp] theorem paperSelectedScaleProduct_univ {d : ℕ}
    (x : Fin d → ℕ) :
    paperSelectedScaleProduct Finset.univ x = supportProduct x := by
  simp [paperSelectedScaleProduct, supportProduct]

@[simp] theorem paperSelectedWeightedProduct_empty {d : ℕ}
    (x : Fin d → ℕ) :
    paperSelectedWeightedProduct ∅ x = 1 := by
  simp [paperSelectedWeightedProduct]

@[simp] theorem paperSelectedWeightedProduct_singleton {d : ℕ}
    (i : Fin d) (x : Fin d → ℕ) :
    paperSelectedWeightedProduct {i} x = x i ^ i.val := by
  simp [paperSelectedWeightedProduct]

/-- The strict source-paper subfamily of the existing endpoint-inclusive
finite box.  This is a filter of the existing API, not a second triple model. -/
noncomputable def paperBoxFinset {d : ℕ} (p : Parameters d) :
    Finset (Point d) := by
  classical
  exact (boxFinset p).filter fun q =>
    (∀ i, PaperDyadic (q.1 i) (p.A i)) ∧
    (∀ i, PaperDyadic (q.2.1 i) (p.B i)) ∧
    (∀ i, PaperDyadic (q.2.2 i) (p.C i))

/-- The strict box count occurring in Propositions 3.1 and 4.1. -/
noncomputable def paperBoxCard {d : ℕ} (p : Parameters d) : ℕ :=
  (paperBoxFinset p).card

theorem paperBoxFinset_subset_boxFinset {d : ℕ} (p : Parameters d) :
    paperBoxFinset p ⊆ boxFinset p := by
  classical
  intro q hq
  exact (Finset.mem_filter.mp hq).1

theorem paperBoxCard_le_boxCard {d : ℕ} (p : Parameters d) :
    paperBoxCard p ≤ boxCard p := by
  exact Finset.card_le_card (paperBoxFinset_subset_boxFinset p)

/-- The exact asymptotic parameter conditions displayed in Proposition 2.1.
They are deliberately separate from `ExplicitAdmissible`, which retains every
fixed loss needed by the exact finite cover in PR #413. -/
def PaperAdmissible {d : ℕ} (lam ε₀ : ℝ) (X : ℕ)
    (p : Parameters d) : Prop :=
  0 < d ∧
  ResidualPrimitive p ∧
  (∀ r : Fin 3,
    0 < p.residual r ∧
      (p.residual r : ℝ) ≤ Real.rpow (X : ℝ) ε₀) ∧
  (∀ i : Fin d,
    PaperDyadicScale X (p.A i) ∧
    PaperDyadicScale X (p.B i) ∧
    PaperDyadicScale X (p.C i)) ∧
  Real.rpow (X : ℝ) lam / (2 : ℝ) ^ (d + 1) ≤ (paperABC p : ℝ) ∧
  (paperABC p : ℝ) ≤ Real.rpow (X : ℝ) (lam + 3 * ε₀ / 4) ∧
  monomial p.A ≤ X ∧
  monomial p.B ≤ X ∧
  Real.rpow (X : ℝ) (1 - ε₀ / 2) ≤ (monomial p.C : ℝ) ∧
  monomial p.C ≤ X

/-- The sixth-root denominator in Proposition 3.1. -/
def proposition31Denominator {d : ℕ} (p : Parameters d)
    (j k ℓ : ℕ) : ℝ :=
  Real.rpow
    ((paperDivisibilitySectorProduct j p.A : ℝ) *
      (paperDivisibilitySectorProduct k p.B : ℝ) *
      (paperDivisibilitySectorProduct ℓ p.C : ℝ))
    ((1 : ℝ) / 6)

/-- The exact real inequality asserted by Proposition 3.1 at fixed data and
with an explicit representative of the implicit constant. -/
def Proposition31BoundAt {d : ℕ} (lam ε₀ : ℝ) (X : ℕ)
    (p : Parameters d) (j k ℓ : ℕ) (K : ℝ) : Prop :=
  (paperBoxCard p : ℝ) ≤
    K * Real.rpow (X : ℝ) (2 * lam / 3 + 3 * ε₀) /
      proposition31Denominator p j k ℓ

/-- Uniform sufficiently-large-`X` supplier for Proposition 3.1.  The implicit
constant and threshold are existential and remain visible in the proposition. -/
def Proposition31FourierSupplier (lam ε₀ : ℝ) (d : ℕ) : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ X₀ : ℕ,
    ∀ X : ℕ, X₀ ≤ X →
    ∀ p : Parameters d, PaperAdmissible lam ε₀ X p →
    ∀ j k ℓ : ℕ,
      2 ≤ j → j ≤ d →
      2 ≤ k → k ≤ d →
      2 ≤ ℓ → ℓ ≤ d →
      Proposition31BoundAt lam ε₀ X p j k ℓ K

/-- The first denominator in Proposition 4.1. -/
def proposition41SelectedScaleProduct {d : ℕ} (p : Parameters d)
    (I I' I'' : Finset (Fin d)) : ℕ :=
  paperSelectedScaleProduct I p.A *
    paperSelectedScaleProduct I' p.B *
    paperSelectedScaleProduct I'' p.C

/-- The weighted product in the second term of Proposition 4.1. -/
def proposition41SelectedWeightedProduct {d : ℕ} (p : Parameters d)
    (I I' I'' : Finset (Fin d)) : ℕ :=
  paperSelectedWeightedProduct I p.A *
    paperSelectedWeightedProduct I' p.B *
    paperSelectedWeightedProduct I'' p.C

/-- The exact real inequality asserted by Proposition 4.1 at fixed data and
with an explicit representative of the implicit constant. -/
def Proposition41BoundAt {d : ℕ} (lam ε₀ : ℝ) (X : ℕ)
    (p : Parameters d) (I I' I'' : Finset (Fin d)) (K : ℝ) : Prop :=
  (paperBoxCard p : ℝ) ≤
    K *
      (Real.rpow (X : ℝ) (lam + 4 * ε₀) /
          (proposition41SelectedScaleProduct p I I' I'' : ℝ) +
        Real.rpow (X : ℝ) (lam - 1 + 6 * ε₀) *
          (proposition41SelectedWeightedProduct p I I' I'' : ℝ))

/-- Uniform sufficiently-large-`X` supplier for Proposition 4.1. -/
def Proposition41GeometrySupplier (lam ε₀ : ℝ) (d : ℕ) : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ X₀ : ℕ,
    ∀ X : ℕ, X₀ ≤ X →
    ∀ p : Parameters d, PaperAdmissible lam ε₀ X p →
    ∀ I I' I'' : Finset (Fin d),
      Proposition41BoundAt lam ε₀ X p I I' I'' K

/-- A uniform Fourier-family obligation at every positive `ε₀` and finite positive `d`.
Constants and thresholds may depend on `ε₀` and `d`.  The paper uses sufficiently
small `ε₀` and its selected dimension; a bridge to this stronger family remains open. -/
def Proposition31FourierFamily (lam : ℝ) : Prop :=
  ∀ ε₀ : ℝ, 0 < ε₀ →
  ∀ d : ℕ, 0 < d →
    Proposition31FourierSupplier lam ε₀ d

/-- A geometry-family obligation at the same explicit uniform quantifier scope.
The bridge from the paper's small-parameter and selected-dimension regime remains open. -/
def Proposition41GeometryFamily (lam : ℝ) : Prop :=
  ∀ ε₀ : ℝ, 0 < ε₀ →
  ∀ d : ℕ, 0 < d →
    Proposition41GeometrySupplier lam ε₀ d

/-- The remaining extraction task: combine the two proposition families and
the parameter/exponent bookkeeping into a feasible Proposition 6.1 point. -/
def OptimizationExtractionObligation (lam : ℝ) : Prop :=
  Proposition31FourierFamily lam →
  Proposition41GeometryFamily lam →
  ∀ D : ℝ, (3 : ℝ) / 5 < D →
    FrequentlyAtLeastPower (exponentExceptionalCount lam) D →
    HasOptimizationCertificate D

/-- A separately auditable replacement for the monolithic analytic supplier.
The analytic estimates and their optimization extraction remain visible. -/
structure SplitExceptionalSetAnalyticSupplier (lam : ℝ) : Prop where
  lambda_pos : 0 < lam
  lambda_lt_one : lam < 1
  fourier : Proposition31FourierFamily lam
  geometry : Proposition41GeometryFamily lam
  extraction : OptimizationExtractionObligation lam

/-- The split supplier recovers the previously published monolithic boundary.
This theorem performs only logical assembly; it proves neither proposition. -/
theorem SplitExceptionalSetAnalyticSupplier.toExceptionalSetAnalyticSupplier
    {lam : ℝ} (supplier : SplitExceptionalSetAnalyticSupplier lam) :
    ExceptionalSetAnalyticSupplier lam where
  lambda_pos := supplier.lambda_pos
  lambda_lt_one := supplier.lambda_lt_one
  certificate_of_frequent_lower_bound := by
    intro D hD hfreq
    exact supplier.extraction supplier.fourier supplier.geometry D hD hfreq

/-- Conditional `3/5` return through the split interfaces. -/
theorem hasThreeFifthsExceptionalBound_of_splitSupplier {lam : ℝ}
    (supplier : SplitExceptionalSetAnalyticSupplier lam) :
    HasThreeFifthsExceptionalBound lam :=
  hasThreeFifthsExceptionalBound_of_supplier
    supplier.toExceptionalSetAnalyticSupplier

/-- Re-export the exact frequency-first finite identity used at the start of a
future Proposition 3.1 proof.  This is an adapter to the existing moment model,
not a new additive-triple construction. -/
theorem exactPrimitiveMoment_frequencyAdapter
    (N q : ℕ) [NeZero q] (W : ℕ → ℕ → ℕ → ℂ)
    (hq : 2 * N < q) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : ℂ) *
          frequencyJointMoment (N / d) d q W :=
  typedPrimitiveWeightedMoment_eq_moebius_frequency_sum N q W hq

end ExceptionalSetAnalyticInterfaces

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.paperBoxCard_le_boxCard
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.SplitExceptionalSetAnalyticSupplier.toExceptionalSetAnalyticSupplier
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.hasThreeFifthsExceptionalBound_of_splitSupplier
