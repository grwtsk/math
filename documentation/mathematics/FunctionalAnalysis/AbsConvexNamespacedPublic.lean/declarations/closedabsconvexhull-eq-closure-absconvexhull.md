# closedAbsConvexHull_eq_closure_absConvexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:366b6e42-91cb-0fc4-4ce1-3c81bb92827d",
  "kind": "theorem",
  "lexical_name": "closedAbsConvexHull_eq_closure_absConvexHull",
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
  "slug": "closedabsconvexhull-eq-closure-absconvexhull",
  "source": {
    "blob": "4c65b8be47878eb795e21aef0d387558062cb90c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 207,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb73f57ff4b9335933a7d6c4146bdd1d26ff26bc6cf7a666e662ec3ac7609006",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/AbsConvexNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:366b6e42-91cb-0fc4-4ce1-3c81bb92827d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedAbsConvexHull_eq_closure_absConvexHull {s : Set E} :
    closedAbsConvexHull 𝕜 s = closure (absConvexHull 𝕜 s) := subset_antisymm
  (closedAbsConvexHull_min (subset_trans (subset_absConvexHull) subset_closure)
    (AbsConvex.closure absConvex_absConvexHull) isClosed_closure)
  (closure_minimal absConvexHull_subset_closedAbsConvexHull isClosed_closedAbsConvexHull)

end NormedField

section

variable (𝕜) [NontriviallyNormedField 𝕜] [PartialOrder 𝕜]
variable [AddCommGroup E] [Module 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/AbsConvexNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c65b8be47878eb795e21aef0d387558062cb90c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6421ba2c728d4f6aeb6c43c126a005fce69e56fbe784854c758fd66de0bc063b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
