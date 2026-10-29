# EqualizerCondition.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d761c6cc-d94a-3287-38de-694a80fa84b3",
  "kind": "theorem",
  "lexical_name": "EqualizerCondition.mk",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "equalizercondition-mk-source-edition-2",
  "source": {
    "blob": "1460b8f7a2df5841b6617e1a7f522f8c498e28fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:569795dc847580f4a0c76f4b22c4d112049b5f26b54b4662324833575c447a91",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularSheavesNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d761c6cc-d94a-3287-38de-694a80fa84b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EqualizerCondition.mk (P : Cᵒᵖ ⥤ Type*)
    (hP : ∀ (X B : C) (π : X ⟶ B) [EffectiveEpi π] [HasPullback π π], Function.Bijective
    (mapToEqualizer P π (pullback.fst π π) (pullback.snd π π)
    pullback.condition)) : EqualizerCondition P := by
  intro X B π _ c hc
  have : HasPullback π π := ⟨c, hc⟩
  specialize hP X B π
  rw [Types.type_equalizer_iff_unique]
  rw [Function.bijective_iff_existsUnique] at hP
  intro b hb
  have h₁ : ((pullbackIsPullback π π).conePointUniqueUpToIso hc).hom ≫ c.fst =
    pullback.fst π π := by simp
  have hb' : P.map (pullback.fst π π).op b = P.map (pullback.snd _ _).op b := by
    rw [← h₁, op_comp, Functor.map_comp, comp_apply, hb]
    simp [← comp_apply, ← Functor.map_comp, ← op_comp]
  obtain ⟨a, ha₁, ha₂⟩ := hP ⟨b, hb'⟩
  refine ⟨a, ?_, ?_⟩
  · simpa [mapToEqualizer] using ha₁
  · simpa [mapToEqualizer] using ha₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularSheavesNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1460b8f7a2df5841b6617e1a7f522f8c498e28fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4392451413e58e2a965f820839d40e02658d32c7956c5954a14f0a08c1f578c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant05379b15f78419c84646cc4a4e8eeeb816822f4fc9990d5be0ba33780cf8bfb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
