# actual_archimedean_upper_by_derivative_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:565eab1e-ad91-554f-44d2-971c7a0c4d43",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_upper_by_derivative_energy",
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
  "slug": "actual-archimedean-upper-by-derivative-energy--3ec83d465438648878d64fe0",
  "source": {
    "blob": "82f1c1793a0f36d0b00540491c0eea369f8b6211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variante401988db189b88004491f1f7e1d27e7bde95ff303f4be2f00ef0e822d0fc623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec83d465438648878d64fe0c0e6337ed729024aabe948d24388a74274321882",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variante401988db189b88004491f1f7e1d27e7bde95ff303f4be2f00ef0e822d0fc623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:565eab1e-ad91-554f-44d2-971c7a0c4d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_upper_by_derivative_energy {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      18 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) := by
  have hmajor := ((actual_fourier_square_integrable A hA).const_mul
      (archimedeanMultiplier 0)).add
    ((actual_source_second_moment_integrable hA).const_mul 18)
  have h := integral_mono (AdmissionSource.archimedean_integrability A hA) hmajor
    (fun ξ => show archimedeanIntegrand explicitSecondDerivative A ξ ≤
      archimedeanMultiplier 0 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) +
      18 * (ξ^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) from by
      dsimp only [archimedeanIntegrand]
      have hb := mul_le_mul_of_nonneg_right (actual_multiplier_quadratic_upper ξ)
        (Complex.normSq_nonneg (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
      nlinarith)
  rw [integral_add ((actual_fourier_square_integrable A hA).const_mul _)
      ((actual_source_second_moment_integrable hA).const_mul _),
    integral_const_mul, integral_const_mul, actual_source_fourier_mass A hA,
    actual_source_second_moment hA] at h
  unfold archimedeanValue
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * Real.pi)).mpr
  nlinarith

/-- All real scales A≥1 have the explicit original archimedean upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variante401988db189b88004491f1f7e1d27e7bde95ff303f4be2f00ef0e822d0fc623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variante401988db189b88004491f1f7e1d27e7bde95ff303f4be2f00ef0e822d0fc623.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82f1c1793a0f36d0b00540491c0eea369f8b6211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01fbcc5fee9bba960e51c3934662dddacfaf76049f4e7e6e6b697319d779ea8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variante401988db189b88004491f1f7e1d27e7bde95ff303f4be2f00ef0e822d0fc623.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
