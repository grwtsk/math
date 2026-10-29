# actualBumpInteriorTransform_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:589edac1-9cf7-ee3a-92b8-50de042eb87c",
  "kind": "theorem",
  "lexical_name": "actualBumpInteriorTransform_eq",
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
  "slug": "actualbumpinteriortransform-eq",
  "source": {
    "blob": "1133051c93b77c12e3bf6cbd23b357bb6752586b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant50a2d50f27bd619b6548b92e675559423725ebff3926ab1e67b78acbc4c13dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e0774faf91f52cb9ad908e32de2281b9049b73e02fe2529080da050d2a3b73",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceActualBumpTransformEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:589edac1-9cf7-ee3a-92b8-50de042eb87c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBumpInteriorTransform_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ x in -A..A, (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ))) =
      (Real.sqrt A : ℂ) * bumpLaplace ((A : ℂ) * z) := by
  have hp : 0 < A := by linarith
  let f : ℝ → ℂ := fun u => (((1-u^2)^4 : ℝ) : ℂ) *
    Complex.exp (((A : ℂ) * z) * (u : ℂ))
  have he (x : ℝ) : (bumpInterior A x : ℂ) * Complex.exp (z * (x : ℂ)) =
      (Real.sqrt A : ℂ)⁻¹ * f (x / A) := by
    dsimp [bumpInterior, f]
    push_cast
    have hex : ((A : ℂ) * z) * ((x : ℂ) / (A : ℂ)) = z * (x : ℂ) := by
      field_simp [Complex.ofReal_ne_zero.mpr hp.ne']
    rw [hex]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_comp_div f hp.ne']
  simp only [neg_div, div_self hp.ne']
  rw [Complex.real_smul]
  change (Real.sqrt A : ℂ)⁻¹ * ((A : ℂ) * bumpLaplace ((A : ℂ) * z)) = _
  have hs : (Real.sqrt A : ℂ)^2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hp.le
  have hn : (Real.sqrt A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (Real.sqrt_pos.mpr hp).ne'
  rw [← hs]
  field_simp

/-- Two genuine finite FTC identities supply the second derivative multiplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceActualBumpTransformEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant50a2d50f27bd619b6548b92e675559423725ebff3926ab1e67b78acbc4c13dad.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1133051c93b77c12e3bf6cbd23b357bb6752586b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=922c7540663c13097fddd607eb481656b4c4cd7e6ab7219b823371ced0b250d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpTransform/Variant50a2d50f27bd619b6548b92e675559423725ebff3926ab1e67b78acbc4c13dad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
