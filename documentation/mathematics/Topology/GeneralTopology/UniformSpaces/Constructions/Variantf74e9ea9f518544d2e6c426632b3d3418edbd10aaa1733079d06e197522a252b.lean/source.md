# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.Constructions.Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fc3cc7bc0c3ba546b17d2e41dea494332b80246` · SHA-256 `f74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Topology.UniformSpace.Pi
import Mathlib.Topology.UniformSpace.Ultra.Basic

/-!
# Products of ultrametric (nonarchimedean) uniform spaces

## Main results

* `IsUltraUniformity.prod`: a product of uniform spaces with nonarchimedean uniformities
  has a nonarchimedean uniformity.
* `IsUltraUniformity.pi`: an indexed product of uniform spaces with nonarchimedean uniformities
  has a nonarchimedean uniformity.

## Implementation details

This file can be split to separate imports to have the `Prod` and `Pi` instances separately,
but would be somewhat unnatural since they are closely related.
The `Prod` instance only requires `Mathlib/Topology/UniformSpace/Basic.lean`.

-/

variable {X Y : Type*}

lemma IsTransitiveRel.entourageProd {s : Set (X × X)} {t : Set (Y × Y)}
    (hs : IsTransitiveRel s) (ht : IsTransitiveRel t) :
    IsTransitiveRel (entourageProd s t) :=
  fun _ _ _ h h' ↦ ⟨hs h.left h'.left, ht h.right h'.right⟩

lemma IsUltraUniformity.comap {u : UniformSpace Y} (h : IsUltraUniformity Y) (f : X → Y) :
    @IsUltraUniformity _ (u.comap f) := by
  letI := u.comap f
  refine .mk_of_hasBasis (h.hasBasis.comap (Prod.map f f)) ?_ ?_
  · exact fun _ ⟨_, hU, _⟩ ↦ hU.preimage_prodMap f
  · exact fun _ ⟨_, _, hU⟩ ↦ hU.preimage_prodMap f

lemma IsUltraUniformity.inf {u u' : UniformSpace X} (h : @IsUltraUniformity _ u)
    (h' : @IsUltraUniformity _ u') :
    @IsUltraUniformity _ (u ⊓ u') := by
  letI := u ⊓ u'
  refine .mk_of_hasBasis (h.hasBasis.inf h'.hasBasis) ?_ ?_
  · exact fun _ ⟨⟨_, hU, _⟩, _, hU', _⟩ ↦ hU.inter hU'
  · exact fun _ ⟨⟨_, _, hU⟩, _, _, hU'⟩ ↦ hU.inter hU'

/-- The product of uniform spaces with nonarchimedean uniformities has a
nonarchimedean uniformity. -/
instance IsUltraUniformity.prod [UniformSpace X] [UniformSpace Y]
    [IsUltraUniformity X] [IsUltraUniformity Y] :
    IsUltraUniformity (X × Y) :=
  .inf (.comap ‹_› _) (.comap ‹_› _)

lemma IsUltraUniformity.iInf {ι : Type*} {U : (i : ι) → UniformSpace X}
    (hU : ∀ i, @IsUltraUniformity X (U i)) :
    @IsUltraUniformity _ (⨅ i, U i : UniformSpace X) := by
  letI : UniformSpace X := ⨅ i, U i
  refine .mk_of_hasBasis (iInf_uniformity ▸ Filter.HasBasis.iInf fun i ↦ (hU i).hasBasis) ?_ ?_
  · exact fun _ ⟨_, h⟩ ↦ IsSymmetricRel.iInter fun i ↦ (h i).right.left
  · exact fun _ ⟨_, h⟩ ↦ IsTransitiveRel.iInter fun i ↦ (h i).right.right

/-- The indexed product of uniform spaces with nonarchimedean uniformities has a
nonarchimedean uniformity. -/
instance IsUltraUniformity.pi {ι : Type*} {X : ι → Type*} [U : Π i, UniformSpace (X i)]
    [h : ∀ i, IsUltraUniformity (X i)] :
    IsUltraUniformity (Π i, X i) := by
  suffices @IsUltraUniformity _ (⨅ i, UniformSpace.comap (Function.eval i) (U i)) by
    simpa [Pi.uniformSpace_eq _] using this
  exact .iInf fun i ↦ .comap (h i) (Function.eval i)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6a6e1cf46bc8fac53d33d463dc6625f7014853d482f5c11a70f65c5dd4abd47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
