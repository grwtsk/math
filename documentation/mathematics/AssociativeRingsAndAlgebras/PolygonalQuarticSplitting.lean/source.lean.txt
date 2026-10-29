/-
Copyright (c) 2026.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: GRWTSK research
-/
import GRWTSK.Algebra.PolygonalQuarticDescent
import Mathlib.FieldTheory.SplittingField.IsSplittingField
import Mathlib.FieldTheory.Separable
import Mathlib.Data.List.FinRange

/-!
# Quartic resolvent in a splitting extension

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This file advances the genuine polynomial-root interface without choosing a
canonical root order. Splitting and exact degree four construct an actual
root multiset enumeration, and separability makes the enumeration injective.
Any two root multiset enumerations differ by a permutation. Factorization and
resolvent descent concern the actual mapped polynomial.

Characteristic 2 and 3 are allowed. The algebraic resolvent identity does not
need separability. Separability is needed only to enumerate four *distinct*
roots (without multiplicities).
-/

namespace GRWTSK.Algebra.PolygonalQuarticSplitting

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticDescent

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

private def mappedQuartic (p : K[X]) : L[X] :=
  p.map (algebraMap K L)

/-- A labelled enumeration of the *actual* root multiset of the mapped
quartic, as opposed to a canonical choice of order. -/
structure QuarticRootEnumeration (p : K[X]) where
  r : Fin 4 → L
  roots_eq : (mappedQuartic (L := L) p).roots =
    (Multiset.cons (r 0) (Multiset.cons (r 1)
      (Multiset.cons (r 2) {r 3})))

/-- A four-element root multiset can be enumerated by Fin 4. This is
purely finite, and does not assume that its elements are distinct. -/
theorem enumeration_of_root_card_four (p : K[X])
    (hcard : (mappedQuartic (L := L) p).roots.card = 4) :
    Nonempty (QuarticRootEnumeration (L := L) p) := by
  obtain ⟨a, b, c, d, hs⟩ := Multiset.card_eq_four.mp hcard
  refine ⟨⟨![a, b, c, d], ?_⟩⟩
  exact hs

/-- Splitting and exact degree four produce an actual four-root enumeration.
No assumption of distinctness or characteristic is needed. -/
theorem enumeration_of_splitting_quartic (p : K[X])
    (hs : (mappedQuartic (L := L) p).Splits)
    (hdegree : (mappedQuartic (L := L) p).natDegree = 4) :
    Nonempty (QuarticRootEnumeration (L := L) p) := by
  apply enumeration_of_root_card_four p
  rw [← hs.natDegree_eq_card_roots]
  exact hdegree

/-- Factorization of the actual quartic in the extension, with its leading
coefficient retained. This does not require separability. -/
theorem factorization_of_root_enumeration (p : K[X])
    (hs : (mappedQuartic (L := L) p).Splits) (e : QuarticRootEnumeration (L := L) p) :
    mappedQuartic (L := L) p =
      C (mappedQuartic (L := L) p).leadingCoeff *
        ((X - C (e.r 0)) * (X - C (e.r 1)) *
          (X - C (e.r 2)) * (X - C (e.r 3))) := by
  conv_lhs => rw [hs.eq_prod_roots]
  rw [e.roots_eq]
  simp only [Multiset.map_cons, Multiset.map_singleton, Multiset.prod_cons,
    Multiset.prod_singleton, mul_assoc]

/-- Monicity removes the leading scalar but never by silently
normalizing a nonmonic polynomial. -/
theorem monic_factorization_of_root_enumeration (p : K[X])
    (hs : (mappedQuartic (L := L) p).Splits)
    (hm : (mappedQuartic (L := L) p).Monic)
    (e : QuarticRootEnumeration (L := L) p) :
    mappedQuartic (L := L) p =
      (X - C (e.r 0)) * (X - C (e.r 1)) *
        (X - C (e.r 2)) * (X - C (e.r 3)) := by
  conv_lhs => rw [factorization_of_root_enumeration p hs e]
  rw [hm.leadingCoeff]
  simp

/-- Direct coefficient descent for an actual monic mapped quartic. -/
theorem resolvent_of_mapped_quartic (p : K[X])
    (hs : (mappedQuartic (L := L) p).Splits)
    (hm : (mappedQuartic (L := L) p).Monic)
    (e : QuarticRootEnumeration (L := L) p) (A B C₀ D : L)
    (hcoeff : mappedQuartic (L := L) p =
      X ^ 4 + Polynomial.C A * X ^ 3 + Polynomial.C B * X ^ 2 +
        Polynomial.C C₀ * X + Polynomial.C D) :
    adjacencyResolventFromRoots (e.r 0) (e.r 1) (e.r 2) (e.r 3) =
      adjacencyResolventOfMonicCoefficients A B C₀ D := by
  exact resolvent_of_actual_factored_quartic
    (mappedQuartic (L := L) p) (e.r 0) (e.r 1) (e.r 2) (e.r 3)
    A B C₀ D (monic_factorization_of_root_enumeration p hs hm e) hcoeff

/-- Relabelling any chosen enumeration leaves the resolvent unchanged,
without requiring that the enumeration itself be canonical. -/
theorem resolvent_relabel (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (σ : Equiv.Perm (Fin 4)) :
    adjacencyResolventFromRoots (e.r (σ 0)) (e.r (σ 1))
      (e.r (σ 2)) (e.r (σ 3)) =
      adjacencyResolventFromRoots (e.r 0) (e.r 1) (e.r 2) (e.r 3) :=
  adjacencyResolvent_permutation e.r σ

/-- Field-extension maps preserve degree without a monicity assumption. -/
theorem mappedQuartic_natDegree (p : K[X]) :
    (mappedQuartic (L := L) p).natDegree = p.natDegree :=
  Polynomial.natDegree_map (algebraMap K L)

/-- Splitting plus exact degree in the base field suffices for enumeration. -/
theorem enumeration_of_splitting_degree_four (p : K[X])
    (hs : (mappedQuartic (L := L) p).Splits)
    (hdegree : p.natDegree = 4) :
    Nonempty (QuarticRootEnumeration (L := L) p) := by
  apply enumeration_of_splitting_quartic p hs
  rw [mappedQuartic_natDegree, hdegree]

/-- Separability in the base field makes every root enumeration injective.
The factorization theorems above also apply when this hypothesis fails. -/
theorem enumeration_injective_of_separable (p : K[X])
    (hsep : p.Separable) (e : QuarticRootEnumeration (L := L) p) :
    Function.Injective e.r := by
  have hn : (mappedQuartic (L := L) p).roots.Nodup :=
    Polynomial.nodup_roots hsep.map
  rw [e.roots_eq] at hn
  have hl : [e.r 0, e.r 1, e.r 2, e.r 3].Nodup :=
    Multiset.coe_nodup.mp hn
  apply List.nodup_ofFn.mp
  simpa [List.ofFn_succ] using hl

/-- Exact degree, splitting, and separability give four distinct actual roots. -/
theorem distinct_enumeration_of_splitting_degree_four (p : K[X])
    (hs : (mappedQuartic (L := L) p).Splits)
    (hdegree : p.natDegree = 4) (hsep : p.Separable) :
    ∃ e : QuarticRootEnumeration (L := L) p, Function.Injective e.r := by
  obtain ⟨e⟩ := enumeration_of_splitting_degree_four p hs hdegree
  exact ⟨e, enumeration_injective_of_separable p hsep e⟩

/-- In an actual splitting field, the splitting premise is supplied by its
Mathlib instance; degree and separability are still explicit. -/
theorem distinct_enumeration_in_splitting_field (p : K[X])
    [IsSplittingField K L p] (hdegree : p.natDegree = 4)
    (hsep : p.Separable) :
    ∃ e : QuarticRootEnumeration (L := L) p, Function.Injective e.r :=
  distinct_enumeration_of_splitting_degree_four p
    (IsSplittingField.splits L p) hdegree hsep

/-- Two enumerations of the same root multiset differ by a permutation,
even when roots repeat. This asserts no canonical root ordering. -/
theorem enumerations_related_by_permutation (p : K[X])
    (e₁ e₂ : QuarticRootEnumeration (L := L) p) :
    ∃ σ : Equiv.Perm (Fin 4), ∀ i, e₁.r (σ i) = e₂.r i := by
  classical
  have heq : ({e₂.r 0, e₂.r 1, e₂.r 2, e₂.r 3} : Multiset L) =
      {e₁.r 0, e₁.r 1, e₁.r 2, e₁.r 3} :=
    e₂.roots_eq.symm.trans e₁.roots_eq
  have hp : [e₂.r 0, e₂.r 1, e₂.r 2, e₂.r 3].Perm
      [e₁.r 0, e₁.r 1, e₁.r 2, e₁.r 3] := Multiset.coe_eq_coe.mp heq
  let σ : Equiv.Perm (Fin 4) := Equiv.ofBijective hp.idxBij
    ⟨hp.idxBij_injective, hp.idxBij_surjective⟩
  refine ⟨σ, ?_⟩
  intro i
  have h := hp.getElem_idxBij_eq_getElem i
  have hget (r : Fin 4 → L) (j : Fin 4) :
      [r 0, r 1, r 2, r 3][j.val] = r j := by
    fin_cases j <;> rfl
  change [e₁.r 0, e₁.r 1, e₁.r 2, e₁.r 3][(σ i).val] =
    [e₂.r 0, e₂.r 1, e₂.r 2, e₂.r 3][i.val] at h
  exact (hget e₁.r (σ i)).symm.trans (h.trans (hget e₂.r i))

/-- Any two actual root-multiset enumerations give the same resolvent.
This includes repeated roots and every characteristic. -/
theorem resolvent_independent_of_enumeration (p : K[X])
    (e₁ e₂ : QuarticRootEnumeration (L := L) p) :
    adjacencyResolventFromRoots (e₂.r 0) (e₂.r 1) (e₂.r 2) (e₂.r 3) =
      adjacencyResolventFromRoots (e₁.r 0) (e₁.r 1) (e₁.r 2) (e₁.r 3) := by
  obtain ⟨σ, hσ⟩ := enumerations_related_by_permutation p e₁ e₂
  rw [← hσ 0, ← hσ 1, ← hσ 2, ← hσ 3]
  exact resolvent_relabel p e₁ σ

end
end GRWTSK.Algebra.PolygonalQuarticSplitting
