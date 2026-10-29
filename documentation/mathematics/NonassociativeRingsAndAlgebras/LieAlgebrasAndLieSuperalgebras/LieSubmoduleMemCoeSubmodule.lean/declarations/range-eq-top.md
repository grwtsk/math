# range_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8703f5cd974327ecd1b536b4212b136a236dccf4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 989,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62370cf5-91dd-822c-d8d4-952b5a5d4ead",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eac5dd89-3c0b-3516-3571-c4c9c72a48c1",
  "kind": "theorem",
  "lexical_name": "range_eq_top",
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
  "slug": "range-eq-top",
  "source": {
    "blob": "8703f5cd974327ecd1b536b4212b136a236dccf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 989,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab888938044c9c024e9f6e23f9a0b2e81e44b2e04b9845f144595fab70af5a6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubmoduleMemCoeSubmodule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac5dd89-3c0b-3516-3571-c4c9c72a48c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 989–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_eq_top : f.range = ⊤ ↔ Function.Surjective f := by
  rw [← LieSubalgebra.coe_to_submodule_eq_iff, range_coeSubmodule, LieSubalgebra.top_coe_submodule]
  exact LinearMap.range_eq_top
#align lie_hom.range_eq_top LieHom.range_eq_top

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieSubmoduleMemCoeSubmodule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean#L989).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8703f5cd974327ecd1b536b4212b136a236dccf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f5840c37cfb3f5710b08809cefbf096a7a339d85fb795ef572841b948c64402 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Submodule/Variant5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c72b3216dc930ab945629ce3105a1638fb09296d46c723daf3f1a12c3809b79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
