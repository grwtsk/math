# StepReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6244b9cc3bf980dc5567aff84e2100fddcc963190d8933a155f3faa26ee2e7ec",
  "kind": "structure",
  "lexical_name": "StepReceipt",
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
  "slug": "stepreceipt--009f3af81d24e8ef3491445c",
  "source": {
    "blob": "8aac7454c7ee5c1618f758c4a0d7348e37ba6b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 8,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Step/Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:009f3af81d24e8ef3491445c1875290721aa7d0545c8cbe2219d7856d64ad57d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Step/Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6244b9cc3bf980dc5567aff84e2100fddcc963190d8933a155f3faa26ee2e7ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StepReceipt where
  operatorId : StableId
  beforeDigest : Digest
  afterDigest : Digest
  changedElementIds : List StableId
  preservedConstraintIds : List StableId
  receiptDigest : Digest
  deriving DecidableEq, Repr

/-- Proposal output remains separate from the accepted overlay state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Step/Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Step/Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aac7454c7ee5c1618f758c4a0d7348e37ba6b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3924f28e160c1520ac372fb5c63539b217c125feb67b0facefe44c1001ff09dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Step/Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
