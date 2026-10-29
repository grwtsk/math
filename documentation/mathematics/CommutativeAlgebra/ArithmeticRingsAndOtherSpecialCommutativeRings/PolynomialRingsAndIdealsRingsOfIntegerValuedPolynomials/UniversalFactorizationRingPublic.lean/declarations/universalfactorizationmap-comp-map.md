# universalFactorizationMap_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe8f0432-6773-e8a3-d257-ff63a746d276",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:050ac3cd-7be7-38a1-7f48-15224e8b1c92",
  "kind": "lemma",
  "lexical_name": "universalFactorizationMap_comp_map",
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
  "slug": "universalfactorizationmap-comp-map",
  "source": {
    "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:855582ed4ba2710c160f77040f571d7063527ad48ada7e21b67dcc4614cc300c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/UniversalFactorizationRingPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:050ac3cd-7be7-38a1-7f48-15224e8b1c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma universalFactorizationMap_comp_map :
    (universalFactorizationMap S n m k hn).toRingHom.comp (map (algebraMap R S)) =
    .comp (Algebra.TensorProduct.lift (S := R)
      (Algebra.TensorProduct.includeLeft.comp (mapAlgHom (Algebra.ofId R S)))
      ((Algebra.TensorProduct.includeRight.restrictScalars R).comp (mapAlgHom (Algebra.ofId R S)))
      fun _ _ ↦ .all _ _).toRingHom
      (universalFactorizationMap R n m k hn).toRingHom := by
  ext
  · simp
  · dsimp [universalFactorizationMap, mapEquivMonic]
    simp only [map_X, aeval_X, ← AlgHom.coe_toRingHom, ← Polynomial.coeff_map, Polynomial.map_mul,
      Polynomial.map_map, ← map_map_freeMonic (f := algebraMap R S)]
    congr 3 <;> ext <;> simp

/-- Lifts along `universalFactorizationMap` corresponds to factorization of `p` into
monic polynomials with fixed degrees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/UniversalFactorizationRingPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae678ab555f97d3252bab1329bec03a83142e418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b15b8d49071187f48499cd1537b1a77b5b40a7c7e8909df9d07d00719f6d41eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
