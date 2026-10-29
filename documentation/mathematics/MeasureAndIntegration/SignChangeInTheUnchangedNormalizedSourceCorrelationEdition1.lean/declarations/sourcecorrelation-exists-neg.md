# sourceCorrelation_exists_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f1c00fd-3303-5125-c52f-449f414fec23",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_exists_neg",
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
  "slug": "sourcecorrelation-exists-neg",
  "source": {
    "blob": "f176d0c8a1328a2c106af486b7b7e46cc0b14040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Varianteaddae556f13d61ec0a2f1ee2183b3ba77af7c5d71d66c74ab021918c333bfa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bec5f1d39b7cff419c3c785ef310b76787285067c48aa284dbd08ad12bc101a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SignChangeInTheUnchangedNormalizedSourceCorrelationEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f1c00fd-3303-5125-c52f-449f414fec23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_exists_neg {A : ℝ} (hA : 0 < A) :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative A t < 0 := by
  by_contra hn
  push Not at hn
  let f : ℝ → ℝ := fun t => Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous f :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      (sourceCorrelation_contDiff A hA).continuous
  have hs : HasCompactSupport f := (sourceCorrelation_hasCompactSupport A hA).mul_left
  have hp : 0 ≤ f := by
    intro t
    exact mul_nonneg (Real.exp_pos _).le (hn t)
  have hf0 : f 0 ≠ 0 := by
    simp [f, sourceCorrelation_zero hA]
  have hi : 0 < ∫ t : ℝ, f t :=
    hc.integral_pos_of_hasCompactSupport_nonneg_nonzero hs hp hf0
  have hz : (∫ t : ℝ, f t) = 0 := (sourceCorrelation_critical_filter_zero hA).1
  linarith

/-- The negative value is internal to the literal positive half-support, excluding endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SignChangeInTheUnchangedNormalizedSourceCorrelationEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Varianteaddae556f13d61ec0a2f1ee2183b3ba77af7c5d71d66c74ab021918c333bfa4.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f176d0c8a1328a2c106af486b7b7e46cc0b14040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c07c54419cfcea9a5c1349421c2205404d7854d68b0672a8b7748a43594dd5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Varianteaddae556f13d61ec0a2f1ee2183b3ba77af7c5d71d66c74ab021918c333bfa4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
