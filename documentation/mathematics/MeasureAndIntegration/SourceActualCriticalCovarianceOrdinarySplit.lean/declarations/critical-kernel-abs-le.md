# critical_kernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02ab2ca2-a77f-08e8-8541-50e236da32e1",
  "kind": "theorem",
  "lexical_name": "critical_kernel_abs_le",
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
  "slug": "critical-kernel-abs-le",
  "source": {
    "blob": "2a76ca98dbb73ecf50117b59c0947533ecda4804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:890819f8aa738e3b5777fc86238b58c12c14bac3397cd9c6fb669af41fba9ae2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceActualCriticalCovarianceOrdinarySplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ab2ca2-a77f-08e8-8541-50e236da32e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem critical_kernel_abs_le {A t : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htA : t ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤ 1 / 4 + 5 / A := by
  have h0 := actual_correlation_abs_le_one A t (by linarith : 1 ≤ A)
  have h1 := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at h1
  have hp : 0 < A := by linarith
  have h2 : |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 10 / A := by
    apply h1.trans
    rw [div_mul_eq_mul_div]
    apply (div_le_div_iff₀ (sq_pos_of_pos hp) hp).2
    nlinarith
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := by
      simpa only [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4),
        abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
          abs_add_le (sourceCorrelation explicitSecondDerivative A t / 4)
        (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    _ ≤ 1 / 4 + (10 / A) / 2 := add_le_add
      (div_le_div_of_nonneg_right h0 (by norm_num))
      (div_le_div_of_nonneg_right h2 (by norm_num))
    _ = _ := by ring

/-- A genuine late amplitude gives only the stated signed lower direction and critical cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceActualCriticalCovarianceOrdinarySplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a76ca98dbb73ecf50117b59c0947533ecda4804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f2acf4a54f18853f2aa4c8063c56b6bb7cc85600f09c3d1aab87a0e627e7ad4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
