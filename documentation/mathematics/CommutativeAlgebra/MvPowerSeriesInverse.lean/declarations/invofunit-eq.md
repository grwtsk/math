# invOfUnit_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e915230237cbc851b25ec13cee2259d2b257bfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77e39385-94c0-a1fe-069d-e060071842cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d0a7213-0f20-1ff8-3555-6e0fd43ee489",
  "kind": "theorem",
  "lexical_name": "invOfUnit_eq'",
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
  "slug": "invofunit-eq",
  "source": {
    "blob": "8e915230237cbc851b25ec13cee2259d2b257bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 234,
    "path": "GRWTSK/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ba991ce95c70da641cbefd441846bf24e1a742dd541de8ac8e1010352be8f56",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/MvPowerSeriesInverse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d0a7213-0f20-1ff8-3555-6e0fd43ee489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invOfUnit_eq' (φ : MvPowerSeries σ k) (u : Units k) (h : constantCoeff σ k φ = u) :
    invOfUnit φ u = φ⁻¹ := by
  rw [← invOfUnit_eq φ (h.symm ▸ u.ne_zero)]
  apply congrArg (invOfUnit φ)
  rw [Units.ext_iff]
  exact h.symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/MvPowerSeriesInverse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e915230237cbc851b25ec13cee2259d2b257bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf6c1d34a3c912287b7ab931ffb530557bdabc22adfe102812b7afa29abe74c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/08/0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
