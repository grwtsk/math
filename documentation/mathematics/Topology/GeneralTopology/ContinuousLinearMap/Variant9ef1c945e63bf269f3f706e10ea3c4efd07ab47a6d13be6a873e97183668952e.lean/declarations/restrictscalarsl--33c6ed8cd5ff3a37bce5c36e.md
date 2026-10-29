# restrictScalarsL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f3f65a8d6829408f68ce950ec6d36a6d93f7a024d74441510463527580eca3f",
  "kind": "def",
  "lexical_name": "restrictScalarsL",
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
  "slug": "restrictscalarsl--33c6ed8cd5ff3a37bce5c36e",
  "source": {
    "blob": "105cf6b50e641ed8e6379cc3d9cc9459694813c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 421,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33c6ed8cd5ff3a37bce5c36e518d0d5602c789468dc95e21cddecc62bce3f5a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f3f65a8d6829408f68ce950ec6d36a6d93f7a024d74441510463527580eca3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictScalarsL : (E →L[𝕜] F) →L[𝕜''] E →L[𝕜'] F :=
  .mk <| restrictScalarsₗ 𝕜 E F 𝕜' 𝕜''

variable {𝕜 E F 𝕜' 𝕜''}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `105cf6b50e641ed8e6379cc3d9cc9459694813c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac05f133d4b04c90f7d56170c81349459107af6bc129cf89241b44c91e505980 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
