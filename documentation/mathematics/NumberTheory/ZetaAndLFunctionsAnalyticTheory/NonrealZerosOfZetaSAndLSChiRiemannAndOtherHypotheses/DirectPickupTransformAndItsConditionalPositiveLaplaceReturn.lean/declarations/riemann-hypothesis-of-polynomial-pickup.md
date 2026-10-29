# riemann_hypothesis_of_polynomial_pickup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f5f8416-53ec-e788-3672-a503fbd64494",
  "kind": "theorem",
  "lexical_name": "riemann_hypothesis_of_polynomial_pickup",
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
  "slug": "riemann-hypothesis-of-polynomial-pickup",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 445,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22e74744070a860d7d1a7c8f9d8c59c6836fd0380c9d84c44b5ecd3f8a87c821",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f5f8416-53ec-e788-3672-a503fbd64494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemann_hypothesis_of_polynomial_pickup
    (W : ℝ → ℝ) (C : ℝ) (hC : 0 ≤ C) (m : ℕ)
    (hW : Continuous W)
    (hupper : ∀ t : ℝ, 0 ≤ t → W t ≤ C * (1 + t) ^ m)
    (hweighted : ∀ z : ℂ, 1 < z.re →
      Integrable (fun t : ℝ ↦ Complex.exp (-z * t) * (W t : ℂ)) pickupTimeMeasure)
    (hformula : ∀ z : ℂ, 1 < z.re →
      (∫ t : ℝ, Complex.exp (-z * t) * (W t : ℂ) ∂pickupTimeMeasure) = pickupTransform z) :
    _root_.RiemannHypothesis := by
  apply riemann_hypothesis_of_polynomial_pickup_and_initial_transform
    W C m (polynomialCorrectionTransform C m) hW hupper
    (polynomialCorrectionTransform_analytic C hC m) ?_ ?_
  · intro z hz
    have hp := polynomial_correction_complex_integrable C hC m z (by linarith)
    apply (hp.sub (hweighted z hz)).congr
    exact Eventually.of_forall (fun t ↦ by
      simp [polynomialPickupDensity, Complex.ofReal_sub, mul_sub])
  · intro z hz
    have hp := polynomial_correction_complex_integrable C hC m z (by linarith)
    have heq : (fun t : ℝ ↦ Complex.exp (-z * t) *
        (polynomialPickupDensity W C m t : ℂ)) =
        (fun t : ℝ ↦ Complex.exp (-z * t) * (C * (1 + t) ^ m : ℝ)) -
          (fun t : ℝ ↦ Complex.exp (-z * t) * (W t : ℂ)) := by
      funext t
      simp [polynomialPickupDensity, Complex.ofReal_sub, mul_sub]
    rw [heq]
    change (∫ t : ℝ, Complex.exp (-z * t) * (C * (1 + t) ^ m : ℝ) -
      Complex.exp (-z * t) * (W t : ℂ) ∂pickupTimeMeasure) = _
    rw [integral_sub hp (hweighted z hz), hformula z hz]
    rfl

/-- A fixed real polynomial exponent is enlarged once to a fixed natural degree;
all constants remain independent of time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=410c606c7c9d9f937853d80bd5dcef3e57e354449eb0d520824ddc5589c8a7b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
