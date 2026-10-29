# mk_quaternionAlgebra_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "726d65eff4a6f4e97c43cb23effec79d5434d5d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ff87e8a-a0d8-0c1b-ffe6-c1a27d6704dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:987dcbd8-7261-a394-3599-5b2adc777fec",
  "kind": "theorem",
  "lexical_name": "mk_quaternionAlgebra_of_infinite",
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
  "slug": "mk-quaternionalgebra-of-infinite",
  "source": {
    "blob": "726d65eff4a6f4e97c43cb23effec79d5434d5d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1436,
    "line": 1432,
    "path": "GRWTSK/Algebra/Quaternion/Variant65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded404d2ac2468bea41a4732972b3be37d7d4b6ce97573b5bba2aa1bb5fa7b0f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuaternion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987dcbd8-7261-a394-3599-5b2adc777fec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1432–1436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_quaternionAlgebra_of_infinite [Infinite R] : #(ℍ[R,c₁,c₂]) = #R := by
  rw [mk_quaternionAlgebra, pow_four]
#align cardinal.mk_quaternion_algebra_of_infinite Cardinal.mk_quaternionAlgebra_of_infinite

/-- The cardinality of a quaternion algebra, as a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraQuaternion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quaternion/Variant65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean#L1432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726d65eff4a6f4e97c43cb23effec79d5434d5d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea15e21709d1e35e5880e804516a34f2c30e91ca647f17f6fb492d02ab35eb98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Quaternion/Variant65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/65/65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
