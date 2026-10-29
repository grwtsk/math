# tsum_G2Term_eq_tsum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71772d84acea316d4a44b5bc2fb6e9742fc3d035",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09d9e345-b0f7-ffe4-1f9a-7e6b8ff0c283",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1938515c-f4fa-6b21-f9bb-ba5e3b9f119f",
  "kind": "lemma",
  "lexical_name": "tsum_G2Term_eq_tsum'",
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
  "slug": "tsum-g2term-eq-tsum",
  "source": {
    "blob": "71772d84acea316d4a44b5bc2fb6e9742fc3d035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6d1127d0db5147e2830ab20111bd6ce99e88354fcb5f9adad72b8cbfefe82bf",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/TransformPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1938515c-f4fa-6b21-f9bb-ba5e3b9f119f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_G2Term_eq_tsum' (z : ℍ) : ∑' (m : Fin 2 → ℤ), G2Term z m =
    ∑' n : ℤ, ∑' m : ℤ, G2Term z ![m, n] := by
  rw [Summable.tsum_comm', tsum_G2Term_eq_tsum]
  · exact G2Term_prod_summable z
  · exact (G2Term_prod_summable z).prod_factor
  · have H := G2Term_summable z
    rw [← ((finTwoArrowEquiv _).trans (.prodComm ..)).symm.summable_iff] at H
    exact H.prod_factor


public section

section transform

/-- This is the key identity for how `G2` transforms under the slash action by `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/TransformPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71772d84acea316d4a44b5bc2fb6e9742fc3d035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89a9d67a7e64be987837eb28a386c5da06168ff18e66e58acb2a97a931d034cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
