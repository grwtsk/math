# sourceCorrelationPrime_eq_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:525254d7-c3c5-6431-8075-f7e61c37106c",
  "kind": "theorem",
  "lexical_name": "sourceCorrelationPrime_eq_inner",
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
  "slug": "sourcecorrelationprime-eq-inner",
  "source": {
    "blob": "b8fd39cbf36470104ebc41dee03862ff0cf8e660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variant4a408176a9669b73d467c46584d674409f007fefaa518dd2954ccaaedcd736f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c13b8909153ca1b21a9d629409d35a3822bfc9010f8905724a074cd06e540184",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ScalePrimeSourceV4Prebytes.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:525254d7-c3c5-6431-8075-f7e61c37106c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelationPrime_eq_inner {A : ℝ} (hA : 0 < A) (s : ℝ) :
    deriv (sourceCorrelation explicitSecondDerivative A) s =
      (⟪spatialDerivativeState A, translation s (originalSourceState A)⟫_ℂ).re := by
  rw [SourceCorrelationEnergy.sourceCorrelation_deriv_eq_integral hA]
  rw [real_inner_of_representatives _ _ _ _ (spatialDerivativeState_coe_ae hA)
    (translate_real_representative s _ _ (originalSourceState_coe_ae hA)),
    spatialDerivative_eq_deriv hA]

/-- Cross-scale integration by parts uses global C¹ sources and integrable compact products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ScalePrimeSourceV4Prebytes.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variant4a408176a9669b73d467c46584d674409f007fefaa518dd2954ccaaedcd736f6.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8fd39cbf36470104ebc41dee03862ff0cf8e660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbb92121bac956405c3956791b7f1db6a23bf8038f2638333b42286cf001f4ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV4Prebytes/Variant4a408176a9669b73d467c46584d674409f007fefaa518dd2954ccaaedcd736f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
