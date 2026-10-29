# actualHalfNearClosedPrefixRow_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd4c3efd-4cc2-bbbc-6b13-3008bf2e0762",
  "kind": "theorem",
  "lexical_name": "actualHalfNearClosedPrefixRow_intervalIntegrable",
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
  "slug": "actualhalfnearclosedprefixrow-intervalintegrable",
  "source": {
    "blob": "c735594a2e825dd015b6c34f6ebd73e46dccb7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant9e68e0f97d4c3e4114f425df187e2124645b562d906cc7c27a637f2f51bfe106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:854f200da332641ee8f732d0e4ea305ef147e99e74ff963f9f5b8123b9cf9667",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/Attempt01NamespacedActualHalfNearClosedPrefixRow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd4c3efd-4cc2-bbbc-6b13-3008bf2e0762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfNearClosedPrefixRow_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) (t : ℝ) :
    IntervalIntegrable (fun x =>
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
        centeredBeta (vaughanCutoff A) n) * actualPeriodicPhysicalCellProfile A t x) volume
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) := by
  have ho := (actual_orders hA).1
  have hi := actualPhysicalPeriodicPrefixRow_intervalIntegrable
    (by linarith : 1 ≤ A) (t := t) (by simp) ho
  have hf : IntervalIntegrable (actualPeriodicPhysicalCellProfile A t) volume
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) := by
    have hc := (actualPeriodicPhysicalCellProfile_contDiffOn
      (by linarith : 0 < A) (by positivity) (Real.exp (A / 2)) t).continuousOn
    rw [← uIcc_of_le ho] at hc
    exact hc.intervalIntegrable
  convert hi.add (hf.const_mul (actualCenteredPrefixPeriodMean (vaughanCutoff A))) using 1
  ext x
  ring

/-- Only the identical subtracted mean is restored; the full physical prefix stays literal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/Attempt01NamespacedActualHalfNearClosedPrefixRow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant9e68e0f97d4c3e4114f425df187e2124645b562d906cc7c27a637f2f51bfe106.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c735594a2e825dd015b6c34f6ebd73e46dccb7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a59263f4c440c7a380da3381f99d81f7891b1c3527407e44e7ee4b87124aac9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant9e68e0f97d4c3e4114f425df187e2124645b562d906cc7c27a637f2f51bfe106.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
