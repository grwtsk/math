/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Source-only regression statements, not replay results. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.AtlasRepairIntegration
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPolarization

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.WeilPolarization

open Filter
open scoped Topology

section SourceBindings

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

example (limit : DiagonalPositiveGramLimit form H) (f g : space.Vector) :
    Tendsto (fun n => limit.family.gram n f g) atTop (𝓝 (form.toFun f g)) :=
  limit.tendsto_polarized f g

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.family = limit.family := rfl

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.comparisonId = limit.comparisonId := rfl

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.family.sourceBinding = limit.family.sourceBinding := rfl

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.toDiagonal = limit := limit.toPolarized_toDiagonal

example (limit : PolarizedPositiveGramLimit form H) :
    limit.toDiagonal.toPolarized = limit := limit.toDiagonal_toPolarized

example : DiagonalPositiveGramLimit form H ≃ PolarizedPositiveGramLimit form H :=
  GRWTSK.RiemannHypothesis.WeilPolarization.limitEquiv form H

example (bound : DiagonalErrorBound form H) (n : ℕ) (f g : space.Vector) :
    0 ≤ bound.polarizedError n f g := bound.polarizedError_nonnegative n f g

example (bound : DiagonalErrorBound form H) (n : ℕ) (f g : space.Vector) :
    ‖form.toFun f g - bound.family.gram n f g‖ ≤
      (bound.error n (f + g) + bound.error n (f - g) +
        bound.error n (f + Complex.I • g) + bound.error n (f - Complex.I • g)) / 4 :=
  bound.polarized_comparison n f g

example (bound : DiagonalErrorBound form H) (f g : space.Vector) :
    Tendsto (fun n => bound.polarizedError n f g) atTop (𝓝 0) :=
  bound.polarizedError_tendsto_zero f g

example (bound : DiagonalErrorBound form H) :
    bound.toPolarized.family = bound.family := rfl

-- The conversion has not manufactured the independent terminal criterion.
example (limit : DiagonalPositiveGramLimit form H)
    (criterion : WeilPositivityImpliesRH form) : _root_.RiemannHypothesis :=
  limit.toPolarized.riemannHypothesis criterion

end SourceBindings

/-- Scalar inner-product data for f=1 and g=I detect the convention's sign. -/
theorem imaginary_sign :
    GRWTSK.RiemannHypothesis.WeilPolarization.combine 2 2 0 4 = Complex.I := by
  unfold GRWTSK.RiemannHypothesis.WeilPolarization.combine
  ring

/-- The opposite imaginary sign produces -I, not I, on the same four inputs. -/
theorem opposite_sign_rejected :
    (((2 : ℂ) - 2) + Complex.I * ((0 : ℂ) - 4)) / 4 ≠ Complex.I := by
  intro h
  have heq : (((2 : ℂ) - 2) + Complex.I * ((0 : ℂ) - 4)) / 4 = -Complex.I := by
    ring
  rw [heq] at h
  have him := congrArg Complex.im h
  norm_num at him

/-- A synthetic Hermitian cross term, unrelated to a zeta or arithmetic supplier. -/
def imaginaryCross (x y : ℂ × ℂ) : ℂ :=
  star x.1 * (Complex.I * y.2) - star x.2 * (Complex.I * y.1)

theorem imaginaryCross_hermitian (x y : ℂ × ℂ) :
    imaginaryCross y x = star (imaginaryCross x y) := by
  simp [imaginaryCross, star_sub, star_mul] <;> ring

/-- Two basis diagonals alone miss a nonzero polarized value. -/
theorem basis_diagonals_miss_cross :
    imaginaryCross (1, 0) (1, 0) = 0 ∧
    imaginaryCross (0, 1) (0, 1) = 0 ∧
    imaginaryCross (1, 0) (0, 1) = Complex.I ∧ Complex.I ≠ 0 := by
  norm_num [imaginaryCross]

end GRWTSK.RiemannHypothesis.Checks.WeilPolarization
