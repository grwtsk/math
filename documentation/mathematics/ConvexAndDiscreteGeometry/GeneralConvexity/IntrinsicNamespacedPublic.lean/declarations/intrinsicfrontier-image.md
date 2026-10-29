# intrinsicFrontier_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f013b20-7ea4-7589-de6a-8663c1d04453",
  "kind": "theorem",
  "lexical_name": "intrinsicFrontier_image",
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
  "slug": "intrinsicfrontier-image",
  "source": {
    "blob": "9519ee7b09371c224ef80ca67112e602428c59b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 314,
    "path": "GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a96cd67e6721748c675db048237352bbc3eae525190f4dbdd4f57d3ca616ec3",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f013b20-7ea4-7589-de6a-8663c1d04453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicFrontier_image (φ : P ≃ᴬ[𝕜] Q) (s : Set P) :
    intrinsicFrontier 𝕜 (φ '' s) = φ '' intrinsicFrontier 𝕜 s :=
  let e : [Nonempty s] → (affineSpan 𝕜 s) ≃ᴬ[𝕜] (affineSpan 𝕜 (φ '' s)) := fun [_] =>
    (φ.affineSubspaceMap (affineSpan 𝕜 s)).trans <| ofEq (map_span φ.toAffineMap s)
  intrinsicFrontier_image_of_homeomorph_affineSpan
    (fun [_] => e.toHomeomorph) (fun [_] => e.toHomeomorph.isHomeomorph) (fun [_] _ => rfl)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9519ee7b09371c224ef80ca67112e602428c59b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be904f80a868922c77cd74f320010dc1d551a4ff5d534ac07245f24dbf75da27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
