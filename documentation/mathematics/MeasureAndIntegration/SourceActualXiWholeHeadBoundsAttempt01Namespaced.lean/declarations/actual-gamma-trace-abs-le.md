# actual_gamma_trace_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7ee5746-f1ed-5666-bcf1-6e2d0e2df168",
  "kind": "theorem",
  "lexical_name": "actual_gamma_trace_abs_le",
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
  "slug": "actual-gamma-trace-abs-le",
  "source": {
    "blob": "b59644479260a0646e58310685a20c4cc7deb2a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt01/Variantcb901b6c6aa058566f0da87ab60e1fb8763d7aa60d9cc0c2bfd8b16ea519ec5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c585cd2cf15bf17a572d07c6f658eddcaa19a65fbd853c0e55c9e34767f235a5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt01Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7ee5746-f1ed-5666-bcf1-6e2d0e2df168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_gamma_trace_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2)| ≤
      gammaTraceBudget := by
  have hc := actual_correlation_abs_le_one A (Real.log 2) hA
  rw [criticalPrimeTest, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
  unfold gammaTraceBudget
  calc
    _ ≤ |Real.eulerMascheroniConstant| * (Real.exp (Real.log 2 / 2) * 1) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left hc (Real.exp_pos _).le) (abs_nonneg _)
    _ = _ := by ring

/-- The PLUS gamma trace retains its original sign and receives only an upper cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt01Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt01/Variantcb901b6c6aa058566f0da87ab60e1fb8763d7aa60d9cc0c2bfd8b16ea519ec5d.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59644479260a0646e58310685a20c4cc7deb2a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dc4d87ee9f64b4e4c69b075757d42648c67919a53db4034eb94fb0edc6476ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt01/Variantcb901b6c6aa058566f0da87ab60e1fb8763d7aa60d9cc0c2bfd8b16ea519ec5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
