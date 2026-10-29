# HasOrthogonalProjection.map_linearIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2060ce9705263edc2c5d89ef21c9101c5e0745b4eb0f29066bb2489d052a4706",
  "kind": "instance",
  "lexical_name": "HasOrthogonalProjection.map_linearIsometryEquiv",
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
  "slug": "hasorthogonalprojection-map-linearisometryequiv--49714df5359a773ae73c1783",
  "source": {
    "blob": "7a1efbff807f6e93f419b4b900e23bd34d230402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 373,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49714df5359a773ae73c1783f0c0ff45f0d0c86d7e792e5ab79588c60959cd6e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2060ce9705263edc2c5d89ef21c9101c5e0745b4eb0f29066bb2489d052a4706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance HasOrthogonalProjection.map_linearIsometryEquiv [K.HasOrthogonalProjection]
    {E' : Type*} [NormedAddCommGroup E'] [InnerProductSpace 𝕜 E'] (f : E ≃ₗᵢ[𝕜] E') :
    (K.map (f.toLinearEquiv : E →ₗ[𝕜] E')).HasOrthogonalProjection where
  exists_orthogonal v := by
    rcases HasOrthogonalProjection.exists_orthogonal (K := K) (f.symm v) with ⟨w, hwK, hw⟩
    refine ⟨f w, Submodule.mem_map_of_mem hwK, Set.forall_mem_image.2 fun u hu ↦ ?_⟩
    erw [← f.symm.inner_map_map, f.symm_apply_apply, map_sub, f.symm_apply_apply, hw u hu]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a1efbff807f6e93f419b4b900e23bd34d230402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59f79b9896869bf0e5b3da1db68cc0f31fb2cf7d9719546b766bca7fa45cb3d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
