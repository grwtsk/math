import Mathlib.Algebra.MvPolynomial.PDeriv
import Mathlib.Tactic

noncomputable section

open MvPolynomial

private theorem pderiv_ofNat {R : Type*} [CommRing R] (i : Fin 3) (n : ℕ)
    [n.AtLeastTwo] : pderiv i (ofNat(n) : MvPolynomial (Fin 3) R) = 0 :=
  Derivation.map_natCast _ n

example {R : Type*} [CommRing R] (x : Fin 3 → R) :
    eval x (pderiv (0 : Fin 3) ((X 0 + 1) ^ 3 * X 2 + 4 : MvPolynomial (Fin 3) R)) =
      3 * (x 0 + 1) ^ 2 * x 2 := by
  simp [pderiv_ofNat]
  ring
