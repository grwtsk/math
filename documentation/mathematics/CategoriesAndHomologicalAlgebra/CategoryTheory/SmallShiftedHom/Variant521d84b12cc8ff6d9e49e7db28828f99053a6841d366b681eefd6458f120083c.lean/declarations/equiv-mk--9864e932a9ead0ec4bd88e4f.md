# equiv_mk₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "210b81819fbcc85569fdb61efbc5940a002bd4d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b42ff01b-2ab3-4267-1828-49f861994121",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d42e2711-895a-f712-a46c-97ce697d8ee2",
  "kind": "lemma",
  "lexical_name": "equiv_mk₀",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "equiv-mk--9864e932a9ead0ec4bd88e4f",
  "source": {
    "blob": "210b81819fbcc85569fdb61efbc5940a002bd4d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9864e932a9ead0ec4bd88e4f833fc19d7e891d27b9e666d0987082744e870c3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d42e2711-895a-f712-a46c-97ce697d8ee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_mk₀ [HasSmallLocalizedShiftedHom.{w} W M X Y]
    (m₀ : M) (hm₀ : m₀ = 0) (f : X ⟶ Y) :
    equiv W L (SmallShiftedHom.mk₀ W m₀ hm₀ f) =
      ShiftedHom.mk₀ m₀ hm₀ (L.map f) := by
  subst hm₀
  dsimp [equiv, mk₀]
  erw [SmallHom.equiv_mk, Iso.homToEquiv_apply, Functor.map_comp]
  dsimp [equiv, mk₀, ShiftedHom.mk₀, shiftFunctorZero']
  simp only [comp_id, L.commShiftIso_zero, Functor.CommShift.isoZero_hom_app, assoc,
    ← Functor.map_comp_assoc, Iso.inv_hom_id_app, Functor.id_obj, Functor.map_id, id_comp]

end

section

variable [W.IsCompatibleWithShift M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `210b81819fbcc85569fdb61efbc5940a002bd4d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f33a54aa99845b95ce7cb7dc2c99d01d44c8838e15d893e5a5b86c4ad207a940 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/52/521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
