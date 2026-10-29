# centeredEmbedding_translationInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d4f18260897909407af939a7ce6e58c41b7a199",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c382935a-e62d-2bb0-158a-4d9bba1ae8c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa22dd67-3200-a54c-970f-a29b37e2ba1d",
  "kind": "theorem",
  "lexical_name": "centeredEmbedding_translationInvariant",
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
  "slug": "centeredembedding-translationinvariant",
  "source": {
    "blob": "7d4f18260897909407af939a7ce6e58c41b7a199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 386,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01a0a887553c9121b3465be7ffb31c407c90a50dfd223eb6016f37813c95b593",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/TheoremBarycenter.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa22dd67-3200-a54c-970f-a29b37e2ba1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredEmbedding_translationInvariant {count : Nat}
    (embedding : WeightedComplexEmbedding count) (translation : ℂ) :
    centeredEmbedding { embedding with
      point := fun index => embedding.point index + translation } =
      centeredEmbedding embedding := by
  apply WeightedComplexEmbedding.ext
  · rfl
  · funext index
    simp [centeredEmbedding, complexBarycenter_translate]

/-- Generic normalization is an idempotent retraction with an exact fixed locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/TheoremBarycenter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4f18260897909407af939a7ce6e58c41b7a199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb08a9c5aa3b8b18463c112ce68959b6929a35a58a5a7197135c481493c9c79c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/95/9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
