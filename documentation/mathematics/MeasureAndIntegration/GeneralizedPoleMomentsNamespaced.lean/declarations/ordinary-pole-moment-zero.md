# ordinary_pole_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b48d17f1-a9a7-0b75-f7b6-3255baa591f8",
  "kind": "theorem",
  "lexical_name": "ordinary_pole_moment_zero",
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
  "slug": "ordinary-pole-moment-zero",
  "source": {
    "blob": "fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a128606a8d71c00afb872a7e0cf0907846e2d8775df5744d4939321616dfd2f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/GeneralizedPoleMomentsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b48d17f1-a9a7-0b75-f7b6-3255baa591f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinary_pole_moment_zero (A σ : ℝ) (hA : 1 ≤ A) (hσ : σ ^ 2 = 1 / 4) :
    (∫ t, Real.exp (σ * t) * sourceCorrelation explicitSecondDerivative A t) = 0 := by
  change (∫ t, Real.exp (σ * t) * correlation (normalizedTest explicitSecondDerivative A) t) = 0
  rw [weighted_correlation_integral _ _
    (weighted_normalizedTest_integrable A σ hA)
    (weighted_normalizedTest_integrable A (-σ) hA),
    weighted_normalizedTest_integral_zero A σ hA hσ, zero_mul]

/-- An affine exponential mode has genuine integrability against the actual compact correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/GeneralizedPoleMomentsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6b3bc19ac322ef3358ef4dfa2c70c91b429f64e09cba8b12cbbd368ec08f1ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
