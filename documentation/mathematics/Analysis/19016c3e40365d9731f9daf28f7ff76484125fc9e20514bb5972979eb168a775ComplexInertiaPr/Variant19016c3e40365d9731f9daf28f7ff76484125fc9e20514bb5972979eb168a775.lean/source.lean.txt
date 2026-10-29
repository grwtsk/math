import FormalResearch.PositiveAtlas.FeshbachHermitian
import Mathlib.Analysis.Matrix.Spectrum

namespace JHFDispositionDraft

open Matrix FormalResearch.PositiveAtlas
open scoped ComplexOrder

noncomputable def complexInertia {σ : Type*} [Fintype σ] [DecidableEq σ]
    (M : Matrix σ σ ℂ) (hM : M.IsHermitian) : ℕ × ℕ × ℕ :=
  (Fintype.card {i // 0 < hM.eigenvalues i},
    Fintype.card {i // hM.eigenvalues i < 0},
    Fintype.card {i // hM.eigenvalues i = 0})

/-- Exact remaining complex multiplicity-count statement. This is a proposition,
not an axiom or theorem. Hermiticity witnesses are explicit and must also be
constructed from `hA`, `hB` in the eventual public adapter. -/
def ComplexFeshbachInertiaObligation {m n : Type*}
    [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] : Prop :=
  ∀ (_hA : A.IsHermitian) (_hB : B.PosDef)
    (hH : (Matrix.fromBlocks A Cᴴ C B).IsHermitian)
    (hFB : (Matrix.fromBlocks (Feshbach.schur A Cᴴ C B)
      (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B).IsHermitian),
    complexInertia (Matrix.fromBlocks A Cᴴ C B) hH =
      complexInertia (Matrix.fromBlocks (Feshbach.schur A Cᴴ C B)
        (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B) hFB

#print ComplexFeshbachInertiaObligation
#print axioms ComplexFeshbachInertiaObligation

end JHFDispositionDraft
