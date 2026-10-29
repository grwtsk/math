# exists_map_preimage_le_map_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:155b3602-1d34-9b4d-632d-4cc9d06fea19",
  "kind": "lemma",
  "lexical_name": "exists_map_preimage_le_map_preimage",
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
  "slug": "exists-map-preimage-le-map-preimage",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 278,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b5ee7ec2a00239c118792dbe071afcef7f84b0af85d22ef465058e8bd88dac",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineTransitionLimitNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:155b3602-1d34-9b4d-632d-4cc9d06fea19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_preimage_le_map_preimage
    [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    {i : I} {U V : (D.obj i).Opens} (hU : IsCompact (U : Set (D.obj i)))
    (H : c.π.app i ⁻¹ᵁ U ≤ c.π.app i ⁻¹ᵁ V) :
    ∃ (j : I) (fji : j ⟶ i), D.map fji ⁻¹ᵁ U ≤ D.map fji ⁻¹ᵁ V := by
  have (j : Over i) : CompactSpace ↥((opensDiagram D i U).obj j) :=
    isCompact_iff_compactSpace.mp (QuasiCompact.isCompact_preimage (f := (D.map j.hom)) _ U.2 hU)
  have H : ((c.π.app i ⁻¹ᵁ U).ι ≫ c.π.app i) ⁻¹ᵁ V = ⊤ := by
    rw [Scheme.Hom.comp_preimage, ← top_le_iff]
    exact .trans (by simp) (Scheme.Hom.preimage_mono _ H)
  obtain ⟨j, fji, hj⟩ := exists_map_eq_top _ _ (isLimitOpensCone D c hc i U) (i := .mk (𝟙 i))
    (((Scheme.isoOfEq _ (by simp)).hom ≫ U.ι) ⁻¹ᵁ V)
    (by simpa [← Scheme.Hom.comp_preimage, -Scheme.Hom.comp_base])
  refine ⟨j.left, j.hom, ?_⟩
  replace hj : (D.map j.hom ⁻¹ᵁ U).ι ⁻¹ᵁ D.map fji.left ⁻¹ᵁ V = ⊤ := by
    simpa [← Scheme.Hom.comp_preimage, -Scheme.Hom.comp_base] using hj
  replace hj : (D.map j.hom ⁻¹ᵁ U).ι ''ᵁ ⊤ ≤ D.map fji.left ⁻¹ᵁ V := Set.image_subset_iff.mpr hj.ge
  simpa [show fji.left = j.hom by simpa using fji.w] using hj

include hc in
@[stacks 01Z4 "(2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineTransitionLimitNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7275405b93934e7596c511d47ce883ee3b5248ff6b8ffc987f33205a0079f55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
