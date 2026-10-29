# Complete source: GRWTSK.Topology.AlgebraicTopology.Presentable.Variant8b7d25c83a281e743868c77ad431d6e2ffeca52e66180f8b367837b2078eca23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c37e60da28455327dc336def0115c3531545c35` · SHA-256 `8b7d25c83a281e743868c77ad431d6e2ffeca52e66180f8b367837b2078eca23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.FiniteColimits
public import Mathlib.AlgebraicTopology.SimplicialSet.FiniteProd
public import Mathlib.AlgebraicTopology.SimplicialSet.RegularEpi
public import Mathlib.CategoryTheory.Presentable.Finite
public import Mathlib.CategoryTheory.Presentable.Presheaf

/-!
# Finite simplicial sets are presentable

In this file, we show that finite simplicial sets are finitely presentable,
which will allow the use of the small object argument in `SSet`.

-/

public section

universe u

open CategoryTheory Limits Opposite

open scoped Simplicial

namespace SSet

namespace Finite

instance (n : SimplexCategory) :
    IsFinitelyPresentable.{u} (stdSimplex.{u}.obj n) :=
  inferInstanceAs (IsFinitelyPresentable.{u} (uliftYoneda.obj n))

lemma exists_epi_from_isCardinalPresentable (X : SSet.{u}) [X.Finite] :
    ∃ (Y : SSet.{u}) (_ : Y.Finite) (_ : IsFinitelyPresentable.{u} Y)
      (p : Y ⟶ X), Epi p := by
  refine ⟨∐ (fun (s : X.N) ↦ Δ[s.dim]), inferInstance, ?_,
    Sigma.desc (fun s ↦ yonedaEquiv.symm s.simplex), ?_⟩
  · apply +allowSynthFailures isCardinalPresentable_of_isColimit' _ (coproductIsCoproduct _)
    · exact hasCardinalLT_of_finite _ _ (by rfl)
    · rintro s
      dsimp
      infer_instance
  · simp only [← Subcomplex.range_eq_top_iff, range_eq_iSup_sigma_ι,
        colimit.ι_desc, Cofan.mk_ι_app, ← N.iSup_subcomplex_eq_top,
        Subcomplex.range_eq_ofSimplex, Equiv.apply_symm_apply]

instance (X : SSet.{u}) [X.Finite] : IsFinitelyPresentable.{u} X := by
  obtain ⟨Y, _, _, p, _⟩ := exists_epi_from_isCardinalPresentable X
  obtain ⟨Z, _, _, q, _⟩ := exists_epi_from_isCardinalPresentable (pullback p p)
  have := Cardinal.fact_isRegular_aleph0.{u}
  have := IsRegularEpiCategory.regularEpiOfEpi p
  apply +allowSynthFailures isCardinalPresentable_of_isColimit' _
      (isCoequalizerEpiComp ((EffectiveEpi.getStruct p).isColimitCoforkOfIsPullback
        (IsPullback.of_hasPullback p p)) q) _
  · exact hasCardinalLT_of_finite _ _ (by rfl)
  · rintro (_ | _) <;> dsimp <;> infer_instance

end Finite

end SSet
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7bd63b10fa2eed42b2d441dfb30cf8ef7e56903824dd8e704a6c659652b5596 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Presentable/Variant8b7d25c83a281e743868c77ad431d6e2ffeca52e66180f8b367837b2078eca23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
