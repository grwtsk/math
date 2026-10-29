# balanced_full_eq_head_add_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd03e93-0ba4-aced-91bb-611de19b07ab",
  "kind": "theorem",
  "lexical_name": "balanced_full_eq_head_add_tail",
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
  "slug": "balanced-full-eq-head-add-tail",
  "source": {
    "blob": "6d08a6fd92aa6a53852d13f08f09037971e85ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 257,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Varianta4069381cdf362017c9c563d927ce57729c8c5f502189d1a1d7a6ec119977cae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39a5a018be6eeaa440f5141d33cdabe9114970722a2cae8f229502cbb9edafb8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceBalancedFirstPrimeReturnNamespacedAlternative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd03e93-0ba4-aced-91bb-611de19b07ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_full_eq_head_add_tail (A : ℝ) (hA : 0 < A) :
    balancedFirstPrimeFullWork A = balancedFirstPrimeHead A + balancedFirstPrimeTailWork A := by
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (balancedFirstPrime_curvature_intervalIntegrable A (Real.log 7)
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA)
    (balancedFirstPrime_curvature_intervalIntegrable A
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) (2 * A) hA)
  unfold balancedFirstPrimeFullWork balancedFirstPrimeHead balancedFirstPrimeTailWork
  linarith only [hsplit]

/-- The remaining original physical source and its plus interior trace recover the tail exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceBalancedFirstPrimeReturnNamespacedAlternative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Varianta4069381cdf362017c9c563d927ce57729c8c5f502189d1a1d7a6ec119977cae.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d08a6fd92aa6a53852d13f08f09037971e85ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67ffba8fe302c01f03b4ce73f9b9da674d4037d274931e7d07ceadaa4a9a3f59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Varianta4069381cdf362017c9c563d927ce57729c8c5f502189d1a1d7a6ec119977cae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
