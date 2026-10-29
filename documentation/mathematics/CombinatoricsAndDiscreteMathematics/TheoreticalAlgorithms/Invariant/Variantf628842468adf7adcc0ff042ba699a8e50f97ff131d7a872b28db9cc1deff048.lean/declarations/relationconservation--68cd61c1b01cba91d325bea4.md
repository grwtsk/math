# RelationConservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ff4bfe635d2a69de1142fdb597ac0fc8576950c289f2dab1ae4aa1b31056a4b",
  "kind": "def",
  "lexical_name": "RelationConservation",
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
  "slug": "relationconservation--68cd61c1b01cba91d325bea4",
  "source": {
    "blob": "4e398c817800d61aa76915a7f0fab64c01138569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variantf628842468adf7adcc0ff042ba699a8e50f97ff131d7a872b28db9cc1deff048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68cd61c1b01cba91d325bea48967907cb0ff23eefa1847bd2ec956e89439fa93",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variantf628842468adf7adcc0ff042ba699a8e50f97ff131d7a872b28db9cc1deff048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ff4bfe635d2a69de1142fdb597ac0fc8576950c289f2dab1ae4aa1b31056a4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RelationConservation (projection : TreeProjection) : Prop :=
  projection.binaryRelationIds.Nodup ∧
  projection.dispositionRelationIds.Nodup ∧
  (∀ relationId,
    relationId ∈ projection.binaryRelationIds ↔
      relationId ∈ projection.dispositionRelationIds) ∧
  ∀ disposition ∈ projection.relationDispositions,
    disposition.relation ∈ projection.binaryRelations

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variantf628842468adf7adcc0ff042ba699a8e50f97ff131d7a872b28db9cc1deff048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variantf628842468adf7adcc0ff042ba699a8e50f97ff131d7a872b28db9cc1deff048.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e398c817800d61aa76915a7f0fab64c01138569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d156eb5d1a04fc958ad19dc6ac5c26aa4f2850aaa4e980a9056ab29c2a4b9b4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variantf628842468adf7adcc0ff042ba699a8e50f97ff131d7a872b28db9cc1deff048.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
