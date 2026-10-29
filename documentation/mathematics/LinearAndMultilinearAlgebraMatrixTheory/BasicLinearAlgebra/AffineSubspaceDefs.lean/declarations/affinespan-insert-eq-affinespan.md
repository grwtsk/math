# affineSpan_insert_eq_affineSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c5c3426696924de352f23248559894bf6f813be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 963,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2ea0fae-c865-d217-c3a9-22b5b9fcc486",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:781641b4-79b2-cb67-1f58-3fca885f64b7",
  "kind": "theorem",
  "lexical_name": "affineSpan_insert_eq_affineSpan",
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
  "slug": "affinespan-insert-eq-affinespan",
  "source": {
    "blob": "5c5c3426696924de352f23248559894bf6f813be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 971,
    "line": 963,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b81096d3fd57c715653d577af2ec2bb50bdee5d856ed3fc7f7c2f15d65bb8a1b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceDefs.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:781641b4-79b2-cb67-1f58-3fca885f64b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 963–971.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_insert_eq_affineSpan {p : P} {ps : Set P} (h : p ∈ affineSpan k ps) :
    affineSpan k (insert p ps) = affineSpan k ps := by
  rw [← mem_coe] at h
  rw [← affineSpan_insert_affineSpan, Set.insert_eq_of_mem h, affineSpan_coe]

variable {k}

/-- If a point is in the affine span of a set, adding it to that set does not change the vector
span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceDefs.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean#L963).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5c3426696924de352f23248559894bf6f813be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f45a0226c48dd2827676c3c7e2bca8b97d68269eb955b8ddad11fbd34f246b3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
