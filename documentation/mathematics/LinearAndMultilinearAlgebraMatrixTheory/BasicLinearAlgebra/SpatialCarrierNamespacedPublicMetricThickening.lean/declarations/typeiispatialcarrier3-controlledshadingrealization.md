# TypeIISpatialCarrier3.ControlledShadingRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c418eedf848e8aca8be93a3f1c36cc79e2363e4a4fef5678da234eaa7d1fe603",
  "kind": "structure",
  "lexical_name": "TypeIISpatialCarrier3.ControlledShadingRealization",
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
  "slug": "typeiispatialcarrier3-controlledshadingrealization",
  "source": {
    "blob": "d782a1a9c0189b437f21ebed88f988aaec8c53bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:446b0e2e51871d16af0d977b5f08ff19b9a236118296f789fbee4ab40bdda212",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierNamespacedPublicMetricThickening.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c418eedf848e8aca8be93a3f1c36cc79e2363e4a4fef5678da234eaa7d1fe603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIISpatialCarrier3.ControlledShadingRealization
    {Atom : Type*} [Fintype Atom] [DecidableEq Atom]
    (carrier : TypeIISpatialCarrier3 Atom)
    (shading : Atom → Set SpatialPoint) where
  carrierThickness : Atom → ℝ
  carrierThickness_nonneg : ∀ atom, 0 ≤ carrierThickness atom
  spatialCarrierConstant : ℝ≥0∞
  spatialCarrierConstant_ne_top : spatialCarrierConstant ≠ ∞
  shading_subset_carrier : ∀ atom,
    shading atom ⊆ carrier.carrierComplex.geometricRealization
      (carrier.atomCarrier atom)
  carrier_subset_thickening : ∀ atom,
    carrier.carrierComplex.geometricRealization
        (carrier.atomCarrier atom) ⊆
      metricThickening (carrierThickness atom) (shading atom)
  volume_comparable : ∀ atom,
    volume (carrier.carrierComplex.geometricRealization
        (carrier.atomCarrier atom)) ≤
      spatialCarrierConstant * volume (shading atom)

/-! ## Closed surface, sphere, and separation certificates -/

/-- One-dimensional cells incident to a proposed vertex in a subcomplex. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierNamespacedPublicMetricThickening.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d782a1a9c0189b437f21ebed88f988aaec8c53bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=236a52f5bb18a5c861d51824abd73f200ade5a25d48f820e2ea5ef75fb7c3a43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
