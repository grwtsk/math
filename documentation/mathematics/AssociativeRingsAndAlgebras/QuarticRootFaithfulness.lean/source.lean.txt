import GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence

/-!
# Faithfulness from generation by the four quartic roots

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The generation hypothesis is explicit: the four roots generate L as a
K-algebra. No Galois group is assumed to be S4. The target says that an
automorphism whose induced finite root permutation is identity must
itself be identity. This must be proved using the algebra-adjoin
extensionality principle on the pinned Mathlib version.
-/

namespace GRWTSK.Algebra.QuarticRootFaithfulness

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticSplitting
open GRWTSK.Algebra.QuarticGaloisMatching

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The four actual roots generate the ambient splitting extension. -/
def RootsGenerate (p : K[X]) (e : QuarticRootEnumeration (L := L) p) : Prop :=
  Algebra.adjoin K (Set.range e.r) = ⊤

/-- Every automorphism fixing the enumerated roots fixes their
K-algebraic closure. This is independent of separability. -/
theorem fixes_adjoined_roots
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (φ : L ≃ₐ[K] L)
    (hfix : ∀ i : Fin 4, φ (e.r i) = e.r i) :
    ∀ x ∈ Algebra.adjoin K (Set.range e.r), φ x = x := by
  intro x hx
  induction hx using Algebra.adjoin_induction with
  | mem y hy =>
      obtain ⟨i, rfl⟩ := hy
      exact hfix i
  | algebraMap y =>
      exact φ.commutes y
  | add x y hx hy ihx ihy =>
      simp [ihx, ihy]
  | mul x y hx hy ihx ihy =>
      simp [ihx, ihy]

/-- Faithfulness is a consequence of actual root generation, not a
classification or numerical degree argument. -/
theorem actualRootPermutationHom_injective_of_generates
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (hgen : RootsGenerate p e) :
    Function.Injective (actualRootPermutationHom p e hne he) := by
  apply MonoidHom.ker_eq_bot.mp
  apply Subgroup.eq_bot_iff.mpr
  intro φ hφ
  have hperm : actualRootPermutationHom p e hne he φ = 1 := by
    simpa using hφ
  have hfix : ∀ i : Fin 4, φ (e.r i) = e.r i := by
    intro i
    have hs := actualRootPerm_spec p e hne he φ i
    simpa [hperm] using hs.symm
  apply AlgEquiv.ext
  intro x
  have hx : x ∈ Algebra.adjoin K (Set.range e.r) := by
    rw [hgen]
    trivial
  exact fixes_adjoined_roots p e φ hfix x hx

end
end GRWTSK.Algebra.QuarticRootFaithfulness
