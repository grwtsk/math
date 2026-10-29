# uniqueBarycenter_fixed_of_invariant

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
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d399644d-5879-86fa-c2a4-28d54980ed9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d788c22a-1f31-8500-63f8-3280e197ae3e",
  "kind": "theorem",
  "lexical_name": "uniqueBarycenter_fixed_of_invariant",
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
  "slug": "uniquebarycenter-fixed-of-invariant",
  "source": {
    "blob": "7d4f18260897909407af939a7ce6e58c41b7a199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27467e8d71c7252194b3a49c895c5da4f1187801437b9d44414a0a336185f96d",
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

Occurrence: `result:d788c22a-1f31-8500-63f8-3280e197ae3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniqueBarycenter_fixed_of_invariant
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (similarity : MetricSimilarity X)
    (configuration : WeightedTheoremConfiguration X count)
    (barycenter : UniqueBarycenter configuration)
    (invariant : pushforwardConfiguration similarity configuration = configuration) :
    similarity.equivalence barycenter.point = barycenter.point := by
  apply barycenter.unique
  have mapped :=
    tb07_similarityMapsBarycenter similarity configuration barycenter.minimizes
  simpa only [invariant] using mapped

/-- A group action whose every element is supplied as an exact metric
similarity.  Group laws are retained at the underlying equivalence level. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/TheoremBarycenter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4f18260897909407af939a7ce6e58c41b7a199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7e62c60771fc70ff16dfab4ca0547251b546d41db5da55d32322837f642876c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/95/9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
