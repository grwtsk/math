# compensatedTerm_lintegral_enorm_tsum_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6422226-ba5c-8973-d626-ec8c3c39a6e2",
  "kind": "theorem",
  "lexical_name": "compensatedTerm_lintegral_enorm_tsum_lt_top",
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
  "slug": "compensatedterm-lintegral-enorm-tsum-lt-top",
  "source": {
    "blob": "d3a5a015e85b6e477f0b7ee5bb344cd6310eee41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57cfa00f14a8ca70b0cf0dd429993735127914d1f2cf3f895992cf9e99473a8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceAttempt8SourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6422226-ba5c-8973-d626-ec8c3c39a6e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedTerm_lintegral_enorm_tsum_lt_top {x : ℝ} (hx : -2 < x) :
    (∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖ₑ) < ⊤ := by
  calc
    _ = ∑' n : ℕ, ENNReal.ofReal (ContinuousResearch.CompensatedGammaProfile.term x n) := by
      apply tsum_congr
      intro n
      rw [← ofReal_integral_norm_eq_lintegral_enorm (compensatedTerm_integrable hx n),
        compensatedTerm_integral_norm hx n]
    _ = ENNReal.ofReal (∑' n : ℕ, ContinuousResearch.CompensatedGammaProfile.term x n) :=
      (ENNReal.ofReal_tsum_of_nonneg
        (ContinuousResearch.CompensatedGammaProfile.term_nonneg hx)
        (ContinuousResearch.CompensatedGammaProfile.term_summable hx)).symm
    _ < ⊤ := ENNReal.ofReal_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceAttempt8SourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a5a015e85b6e477f0b7ee5bb344cd6310eee41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17fbade4d5e7b189ee6ea2597c9e9cdc0720a6c11d7427989eca47ea1e5283be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
