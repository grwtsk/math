# actual_cutoff_logs_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f7bae8a-51af-e7be-24ce-3d80193d141b",
  "kind": "theorem",
  "lexical_name": "actual_cutoff_logs_le_scale",
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
  "slug": "actual-cutoff-logs-le-scale",
  "source": {
    "blob": "9037edd18ee009a81952375325da0d40a67e2036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ca8886586e4f11872858SourceLeadingTailBudget/Variante950391809341e69e8c729994fdb69fafe30b2327efae2a28dcd984d23a50f3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a296c117010b9832dd9df9de3ea485cebe6779a9a542231ee7a1e631089ccde8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceLeadingTailBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7bae8a-51af-e7be-24ce-3d80193d141b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cutoff_logs_le_scale {A : ℝ} (hA : 25600 ≤ A) :
    (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ A ∧
      Real.log (vaughanCutoff A : ℝ) ≤ A ∧
      Real.log (vaughanCutoff A : ℝ) ≤ A ^ 3 := by
  have hA1 : 1 ≤ A := by linarith
  have hs : 160 ≤ Real.sqrt A := by
    apply Real.le_sqrt_of_sq_le
    norm_num
    exact hA
  have hss := Real.sq_sqrt (show 0 ≤ A by linarith)
  have hlog := RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_nonneg (actual_cutoff_order A hA1).1
  have hl2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ A := by nlinarith
  have hl : Real.log (vaughanCutoff A : ℝ) ≤ A := by nlinarith
  have hAc : A ≤ A ^ 3 := by nlinarith [sq_nonneg (A - 1)]
  exact ⟨hl2, hl, hl.trans hAc⟩

/-- The complete four-jet error has a fixed genuine coefficient budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceLeadingTailBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ca8886586e4f11872858SourceLeadingTailBudget/Variante950391809341e69e8c729994fdb69fafe30b2327efae2a28dcd984d23a50f3a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9037edd18ee009a81952375325da0d40a67e2036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d7bfaa1d654a19e3b1e0d4078c9d69a80e5c10e7c62adc1415c4d723f6937c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ca8886586e4f11872858SourceLeadingTailBudget/Variante950391809341e69e8c729994fdb69fafe30b2327efae2a28dcd984d23a50f3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
