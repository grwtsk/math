# toHomeomorphClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e4fd9bc713452899a794613a7ea6a5e4b46826d47d19e736fd9d35f083fe4d1",
  "kind": "instance",
  "lexical_name": "toHomeomorphClass",
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
  "slug": "tohomeomorphclass",
  "source": {
    "blob": "e405df521f75a815932509f90113a346d3008276",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 335,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b98ac6077b35d747d073abd001e322270845201b5504d000f20d017fd3baec52",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e4fd9bc713452899a794613a7ea6a5e4b46826d47d19e736fd9d35f083fe4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toHomeomorphClass [EquivLike F α β] [IsometryClass F α β] : HomeomorphClass F α β where
  map_continuous := IsometryClass.continuous
  inv_continuous f := ((IsometryClass.isometry f).right_inv (EquivLike.right_inv f)).continuous

end PseudoEMetricSpace

section PseudoMetricSpace
variable [PseudoMetricSpace α] [PseudoMetricSpace β] [FunLike F α β] [IsometryClass F α β] (f : F)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e405df521f75a815932509f90113a346d3008276` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd2299a4ad97ceb952c08805d8c14aacb176a8811b9507c14122a73b19dd520a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
