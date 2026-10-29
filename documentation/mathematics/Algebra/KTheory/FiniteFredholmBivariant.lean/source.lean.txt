import GRWTSK.Algebra.KTheory.FormalKKEquivalences
import GRWTSK.Algebra.KTheory.FiniteFredholmCycle

namespace GRWTSK.Algebra.KTheory.FiniteFredholmCycle

open Matrix
open GRWTSK.Algebra.KTheory.FormalKK

universe u

namespace UnitaryEquivalence

variable {A : Type u} [Semiring A] {n : ℕ}
variable {X Y : ExactCycle A n}

/-- Unitary cycle equivalences are determined by their unitary matrix; all remaining fields
are proof-valued or forced by the endpoints. -/
@[ext]
theorem ext (P Q : UnitaryEquivalence X Y) (h : P.unitary = Q.unitary) : P = Q := by
  cases P
  cases Q
  cases h
  rfl

end UnitaryEquivalence

/-- Finite exact cycles and their unitary equivalences form a concrete bivariant groupoid. -/
def unitaryTheory (A : Type u) [Semiring A] (n : ℕ) :
    BivariantTheory (ExactCycle A n) where
  Corr X Y := UnitaryEquivalence X Y
  identity X := UnitaryEquivalence.refl X
  product P Q := UnitaryEquivalence.trans P Q
  identity_product := by
    intro X Y P
    ext
    simp [UnitaryEquivalence.trans, UnitaryEquivalence.refl]
  product_identity := by
    intro X Y P
    ext
    simp [UnitaryEquivalence.trans, UnitaryEquivalence.refl]
  product_assoc := by
    intro W X Y Z P Q R
    ext
    simp [UnitaryEquivalence.trans, Matrix.mul_assoc]

namespace UnitaryEquivalence

variable {A : Type u} [Semiring A] {n : ℕ}
variable {X Y : ExactCycle A n}

/-- Every concrete unitary equivalence is a two-sided equivalence in the finite
bivariant groupoid. -/
def toKKEquivalence (P : UnitaryEquivalence X Y) :
    KKEquivalence (unitaryTheory A n) X Y where
  forward := P
  backward := P.symm
  forward_backward := by
    apply UnitaryEquivalence.ext
    exact P.star_mul
  backward_forward := by
    apply UnitaryEquivalence.ext
    exact P.mul_star

/-- Composition of concrete unitary cycle equivalences agrees with formal KK-equivalence
composition in the finite groupoid. -/
theorem toKKEquivalence_trans
    {Z : ExactCycle A n}
    (P : UnitaryEquivalence X Y) (Q : UnitaryEquivalence Y Z) :
    (P.trans Q).toKKEquivalence =
      KKEquivalence.trans P.toKKEquivalence Q.toKKEquivalence := by
  apply KKEquivalence.ext
  · rfl
  · apply UnitaryEquivalence.ext
    exact Matrix.conjTranspose_mul Q.unitary P.unitary

end UnitaryEquivalence

end GRWTSK.Algebra.KTheory.FiniteFredholmCycle
