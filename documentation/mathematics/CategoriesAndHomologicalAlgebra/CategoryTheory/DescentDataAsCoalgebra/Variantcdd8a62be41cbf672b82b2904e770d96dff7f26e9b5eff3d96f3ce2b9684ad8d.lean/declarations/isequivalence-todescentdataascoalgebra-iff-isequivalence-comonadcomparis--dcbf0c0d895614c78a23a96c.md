# isEquivalence_toDescentDataAsCoalgebra_iff_isEquivalence_comonadComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65024d76fe2659d728bfcb61b7425ec1abed5d97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c341f4c2-8ec4-b8ce-17f7-57cd9cc16f89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26a8a98f-4a06-5fbb-42e9-927bb2f73b85",
  "kind": "lemma",
  "lexical_name": "isEquivalence_toDescentDataAsCoalgebra_iff_isEquivalence_comonadComparison",
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
  "slug": "isequivalence-todescentdataascoalgebra-iff-isequivalence-comonadcomparis--dcbf0c0d895614c78a23a96c",
  "source": {
    "blob": "65024d76fe2659d728bfcb61b7425ec1abed5d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcbf0c0d895614c78a23a96c659f370e2c843fded58462631a1df6f8eea8c016",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a8a98f-4a06-5fbb-42e9-927bb2f73b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEquivalence_toDescentDataAsCoalgebra_iff_isEquivalence_comonadComparison :
    (F.toDescentDataAsCoalgebra (fun (_ : ι) ↦ f)).IsEquivalence ↔
    (Comonad.comparison (Adjunction.ofCat (F.map f.op.toLoc).adj)).IsEquivalence := by
  rw [← Functor.isEquivalence_iff_of_iso
    (F.toDescentDataAsCoalgebraCompCoalgebraEquivalenceFunctorIso ι f)]
  exact ⟨fun _ ↦ inferInstance, fun _ ↦
    Functor.isEquivalence_of_comp_right _
      ((DescentDataAsCoalgebra.coalgebraEquivalence F ι f).functor)⟩

end

end Pseudofunctor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65024d76fe2659d728bfcb61b7425ec1abed5d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=328ad113b77201d2c3f75339eaafa53e24be19e422f0bac4b3567ef89ad70263 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
