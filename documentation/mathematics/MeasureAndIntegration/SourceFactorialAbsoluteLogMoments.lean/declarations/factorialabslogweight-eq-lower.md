# factorialAbsLogWeight_eq_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cb35e32-83ef-4cfe-732d-267fbbc647f2",
  "kind": "theorem",
  "lexical_name": "factorialAbsLogWeight_eq_lower",
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
  "slug": "factorialabslogweight-eq-lower",
  "source": {
    "blob": "478195b180bf52aecd246b29638b0c0e1fbeb4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c42c64760520d1f1e84dcbf8189acac1d7f6b4ff56ad67a4170055ebe09700ce",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb35e32-83ef-4cfe-732d-267fbbc647f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorialAbsLogWeight_eq_lower (j : ℕ) {y : ℝ} (hy : y ∈ Ioo (0 : ℝ) 1) :
    factorialAbsLogWeight j y =
      (-1 : ℝ) ^ j * (lowerLogWeight j y - lowerLogWeight (j + 1) y) := by
  have hlog : Real.log y ≤ 0 := Real.log_nonpos hy.1.le hy.2.le
  have hn : 0 ≤ factorialMellinWeight y := by
    unfold factorialMellinWeight
    rw [factorialLogDefect_eq_lower hy]
    exact mul_nonneg (mul_nonneg hy.1.le (by linarith)) (Real.rpow_nonneg hy.1.le _)
  unfold factorialAbsLogWeight
  rw [abs_of_nonneg hn, factorialMellinWeight_eq_lower hy, abs_of_nonpos hlog, neg_pow]
  unfold lowerLogWeight
  simp only [pow_zero, mul_one, pow_succ]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478195b180bf52aecd246b29638b0c0e1fbeb4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d40ebcf91302b8a91c0357455d3f7e482f66ddae8dcc73d984be0b061ba2ab7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
