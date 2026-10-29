# freeObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bfbf6320c954d6975019891035b91a4807741125f9c1a4baac8950ad7a489b5",
  "kind": "def",
  "lexical_name": "freeObj",
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
  "slug": "freeobj--71d89288ff0b53bebc588ea4",
  "source": {
    "blob": "e32a9367052e84ebe59e0ed1f2da77ed36d16d05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 404,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71d89288ff0b53bebc588ea46c6dc34b09432bc85ba100165e227f84a0edb487",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bfbf6320c954d6975019891035b91a4807741125f9c1a4baac8950ad7a489b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeObj (X : TopCat.{v}) : TopModuleCat.{max v u} R :=
  letI : TopologicalSpace (X →₀ R) := sInf
    { t | @ContinuousSMul R _ _ _ t ∧ @ContinuousAdd _ t _ ∧
      X.str.coinduced (Finsupp.single · 1) ≤ t }
  letI : ContinuousAdd (X →₀ R) := continuousAdd_sInf fun _ h ↦ h.2.1
  letI : ContinuousSMul R (X →₀ R) := continuousSMul_sInf fun _ h ↦ h.1
  of R (X →₀ R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32a9367052e84ebe59e0ed1f2da77ed36d16d05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1763b4485a0495c2c7a9a5c8a1c3a27a230cd7cdf7bd5ebcdea09b98d3729e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
