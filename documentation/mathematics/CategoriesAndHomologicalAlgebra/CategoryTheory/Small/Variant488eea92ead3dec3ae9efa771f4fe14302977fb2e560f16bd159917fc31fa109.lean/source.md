# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Small.Variant488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e01a2e7bba8418f616714ff02360cf8ad5a53a8f` · SHA-256 `488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Algebra.Category.CommAlgCat.FiniteType
public import Mathlib.CategoryTheory.ObjectProperty.Small


/-! # Smallness results on the category of `CommRing` -/

public section

universe u

open CategoryTheory

namespace CommRingCat

variable {P Q : ObjectProperty CommRingCat.{u}}

lemma essentiallySmall_of_finiteType [ObjectProperty.EssentiallySmall.{u} Q]
    (hPQ : ∀ S, P S → ∃ R, Q R ∧ ∃ (f : R ⟶ S), f.hom.FiniteType) :
    ObjectProperty.EssentiallySmall.{u} P := by
  obtain ⟨Q', _, hQ'Q, hQQ'⟩ := ObjectProperty.EssentiallySmall.exists_small_le Q
  let f (S : Σ R : Subtype Q', FGAlgCatSkeleton R) : CommRingCat := ↧S.2.eval.obj
  refine ⟨.ofObj f, inferInstance, fun S hS ↦ ?_⟩
  obtain ⟨R, hR, φ, hφ⟩ := hPQ S hS
  wlog hR' : Q' R generalizing R
  · obtain ⟨R', hR', ⟨e⟩⟩ := hQQ' _ hR
    exact this R' (hQ'Q _ hR') (e.inv ≫ φ)
      (hφ.comp e.symm.commRingCatIsoToRingEquiv.finite.finiteType) hR'
  obtain ⟨T, e, he⟩ := hφ.exists_smallRepr
  exact ⟨_, ⟨⟨_, hR'⟩, T⟩, ⟨RingEquiv.toCommRingCatIso e.symm⟩⟩

lemma essentiallySmall_of_localizationAway [ObjectProperty.EssentiallySmall.{u} Q]
    (hPQ : ∀ S, P S → ∃ s : Set S, Ideal.span s = ⊤ ∧ ∀ f ∈ s, Q ↧(Localization.Away f)) :
    ObjectProperty.EssentiallySmall.{u} P := by
  obtain ⟨Q', _, hQ'Q, hQQ'⟩ := ObjectProperty.EssentiallySmall.exists_small_le Q
  let f (S : Σ (n : ℕ) (R : Fin n → Subtype Q'), Subring (Π i, (R i).1)) : CommRingCat := ↧S.2.2
  refine ⟨.ofObj f, inferInstance, fun S hS ↦ ?_⟩
  obtain ⟨s, hs, H⟩ := hPQ S hS
  wlog hs' : s.Finite generalizing s
  · obtain ⟨s', hs's, hs'⟩ := (Ideal.span_eq_top_iff_finite _).mp hs
    exact this s' hs' (fun f hf ↦ H f (hs's hf)) s'.finite_toSet
  choose S' hS' e using fun (f : s) ↦ hQQ' _ (H _ f.2)
  let φ : S →+* Π i, S' (hs'.equivFin.symm i) :=
    ((RingEquiv.piCongrRight fun i ↦ (e i).some.commRingCatIsoToRingEquiv).trans
      (RingEquiv.piCongrLeft (S' ·) hs'.equivFin.symm).symm).toRingHom.comp (algebraMap _ _)
  have hφ : Function.Injective φ := by
    dsimp only [RingHom.coe_comp, φ]
    refine (RingEquiv.injective _).comp (Localization.algebraMap_injective_of_span_eq_top _ hs)
  refine ⟨_, ⟨Nat.card s, (fun f ↦ ⟨S' f, hS' f⟩) ∘ hs'.equivFin.symm, φ.range⟩, ⟨?_⟩⟩
  exact (RingEquiv.ofBijective φ.rangeRestrict
    ⟨φ.injective_codRestrict.mpr hφ, φ.rangeRestrict_surjective⟩).toCommRingCatIso

end CommRingCat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94cd20ecefd7e1888eecdd838330bb4d94b8492f8e5761aa998e479394e9cd33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
