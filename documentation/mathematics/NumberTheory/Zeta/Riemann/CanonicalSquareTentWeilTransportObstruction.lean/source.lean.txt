/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
import GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Orthogonality obstruction for a classical Weil transport

The canonical square-tent polarization has a source-proved diagonal arithmetic
coefficient matrix.  This file states the exact data required to transport that
finite coefficient space into one named Guinand--Weil compact-support model.

No concrete classical model is fabricated.  Instead, the main theorem proves a
necessary condition for every exact positive-scale transport: images of distinct
canonical square-tent basis vectors must have zero classical Weil cross term.
Consequently one source-proved nonzero target cross term refutes the transport.

The same exact form identity transports arithmetic diagonal nonnegativity to the
image.  No `WeilCriterionForZeta`, criterion direction, or RH theorem is defined.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization

/-- Standard coordinate vector in the finite canonical square-tent coefficient
space. -/
def basisCombination {M : ℕ} (i : Fin (M + 1)) : Combination M :=
  fun j => if j = i then 1 else 0

@[simp]
theorem basisCombination_apply_self {M : ℕ} (i : Fin (M + 1)) :
    basisCombination i i = 1 := by
  simp [basisCombination]

@[simp]
theorem basisCombination_apply_of_ne {M : ℕ}
    {i j : Fin (M + 1)} (hji : j ≠ i) :
    basisCombination i j = 0 := by
  simp [basisCombination, hji]

/-- The source form on two coordinate vectors is exactly the corresponding
source-proved arithmetic matrix coefficient. -/
theorem sourcePolarizedForm_basis_eq_arithmeticCrossCoefficient
    {M : ℕ} (i j : Fin (M + 1)) :
    sourcePolarizedForm (basisCombination i) (basisCombination j) =
      (arithmeticCrossCoefficient i j : ℂ) := by
  classical
  by_cases hij : i = j
  · subst j
    rw [sourcePolarizedForm_eq_diagonal_sum]
    rw [Finset.sum_eq_single i]
    · simp [basisCombination]
    · intro k hk hki
      simp [basisCombination, hki]
    · simp
  · rw [sourcePolarizedForm_eq_diagonal_sum,
      arithmeticCrossCoefficient_offdiag hij]
    apply Finset.sum_eq_zero
    intro k hk
    by_cases hki : k = i
    · subst k
      simp [basisCombination, hij]
    · simp [basisCombination, hki]

/-- A named classical target profile for the Guinand--Weil compact-support
formulation.  Constructing a term requires an actual repository test space,
Hermitian form, source theorem, normalization, and injective realization.
Strings are metadata only; all mathematical content used below is carried by
the typed fields and equalities. -/
structure GuinandWeilCompactSupportModel
    (M : ℕ) (T : Type*) [AddCommGroup T] [Module ℂ T] where
  space : WeilTestSpace T
  form : WeilHermitianForm space
  realization : Combination M →ₗ[ℂ] space.Vector
  realization_injective : Function.Injective realization
  sourceBinding : SourceBinding
  sourceBinding_eq : sourceBinding = WeilTestSpace.binding space
  sourcePublication : String
  sourceTheorem : String
  completedZetaNormalization : String
  testFunctionProfile : String
  transformProfile : String
  involutionProfile : String
  form_sourceRevision_eq : form.sourceRevision = space.revision
  form_normalization_eq : form.normalizationId = space.normalizationId
  invalidationKey : String

/-- Exact source-bound comparison required for a transport.  Equality is
polarized and holds for every pair, not only on the diagonal.  The positive
real scale is part of the theorem data because its sign controls positivity. -/
structure ExactSourceBoundTransport
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    (model : GuinandWeilCompactSupportModel M T) where
  transportId : String
  arithmeticBinding : SourceBinding
  arithmeticBinding_eq :
    arithmeticBinding = polarizedSourceBinding
  scale : ℝ
  scale_positive : 0 < scale
  cross_eq : ∀ u v : Combination M,
    model.form.toFun (model.realization u) (model.realization v) =
      (scale : ℂ) * sourcePolarizedForm u v
  theoremRevision : String
  invalidationKey : String

namespace ExactSourceBoundTransport

/-- Every transported basis cross term is fixed by the complete arithmetic
matrix, including all off-diagonal entries. -/
theorem basis_cross_eq
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel M T}
    (transport : ExactSourceBoundTransport model)
    (i j : Fin (M + 1)) :
    model.form.toFun
        (model.realization (basisCombination i))
        (model.realization (basisCombination j)) =
      (transport.scale : ℂ) *
        (arithmeticCrossCoefficient i j : ℂ) := by
  calc
    _ = (transport.scale : ℂ) *
        sourcePolarizedForm
          (basisCombination i) (basisCombination j) :=
      transport.cross_eq _ _
    _ = _ := by
      rw [sourcePolarizedForm_basis_eq_arithmeticCrossCoefficient]

/-- Exact transport forces distinct basis images to be orthogonal in the
target classical form. -/
theorem distinct_basis_cross_zero
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel M T}
    (transport : ExactSourceBoundTransport model)
    {i j : Fin (M + 1)} (hij : i ≠ j) :
    model.form.toFun
        (model.realization (basisCombination i))
        (model.realization (basisCombination j)) = 0 := by
  calc
    _ = (transport.scale : ℂ) *
        (arithmeticCrossCoefficient i j : ℂ) :=
      transport.basis_cross_eq i j
    _ = 0 := by
      rw [arithmeticCrossCoefficient_offdiag hij]
      simp

/-- The target diagonal on the realized finite space is exactly a positive
multiple of the arithmetic real target diagonal. -/
theorem image_diagonal_eq
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel M T}
    (transport : ExactSourceBoundTransport model)
    (u : Combination M) :
    WeilHermitianForm.diagonal model.form (model.realization u) =
      transport.scale * realTargetForm u u := by
  unfold WeilHermitianForm.diagonal realTargetForm
  rw [transport.cross_eq u u]
  simp [Complex.mul_re]

/-- Positive scale preserves the source-proved positive cone on the image.
This is image positivity only, not global positivity of the classical form. -/
theorem image_diagonal_nonnegative
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel M T}
    (transport : ExactSourceBoundTransport model)
    (u : Combination M) :
    0 ≤ WeilHermitianForm.diagonal model.form (model.realization u) := by
  rw [transport.image_diagonal_eq u]
  exact mul_nonneg transport.scale_positive.le
    (realTargetForm_diagonal_nonnegative u)

/-- The complete positive cone statement actually preserved by the
transport.  No assertion is made outside the realized finite subspace. -/
theorem positiveCone_preserved_on_image
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel M T}
    (transport : ExactSourceBoundTransport model) :
    ∀ u : Combination M,
      0 ≤ WeilHermitianForm.diagonal model.form (model.realization u) := by
  intro u
  exact transport.image_diagonal_nonnegative u

end ExactSourceBoundTransport

/-- A source-proved nonzero target cross term at two distinct transported
basis vectors.  Such a witness is precisely what refutes the orthogonal
arithmetic transport. -/
structure NonzeroClassicalCrossWitness
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    (model : GuinandWeilCompactSupportModel M T) where
  left : Fin (M + 1)
  right : Fin (M + 1)
  distinct : left ≠ right
  target_cross_ne_zero :
    model.form.toFun
      (model.realization (basisCombination left))
      (model.realization (basisCombination right)) ≠ 0

/-- A single exact nonzero classical cross term refutes every positive-scale
transport satisfying all-pairs equality. -/
theorem no_exactSourceBoundTransport_of_nonzeroCross
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel M T}
    (witness : NonzeroClassicalCrossWitness model) :
    ¬ Nonempty (ExactSourceBoundTransport model) := by
  rintro ⟨transport⟩
  exact witness.target_cross_ne_zero
    (transport.distinct_basis_cross_zero witness.distinct)

/-- The exact repository obstruction exposed by this increment: transport
implies basis orthogonality, while a nonzero classical cross certificate
implies transport nonexistence.  This theorem does not fabricate either a
classical model or a cross certificate. -/
theorem transport_or_nonzeroCross_obstruction
    {M : ℕ} {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel M T}
    (transport : ExactSourceBoundTransport model)
    (witness : NonzeroClassicalCrossWitness model) : False :=
  witness.target_cross_ne_zero
    (transport.distinct_basis_cross_zero witness.distinct)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction
