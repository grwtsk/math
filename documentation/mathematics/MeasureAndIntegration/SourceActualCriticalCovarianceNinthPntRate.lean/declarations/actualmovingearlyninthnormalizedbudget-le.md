# actualMovingEarlyNinthNormalizedBudget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:572a0b06-01f6-1ffc-3f75-90f0a873979c",
  "kind": "theorem",
  "lexical_name": "actualMovingEarlyNinthNormalizedBudget_le",
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
  "slug": "actualmovingearlyninthnormalizedbudget-le",
  "source": {
    "blob": "923048bf5ed7e6fba1ad4b46a9fde106d4460501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variantdd06be6b5c58031f9c3c3b28bb061df8990ead52a936740d0421c51202e7b5e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce53de1470e76a7a32a79b8b6501ce66ba6715424ae869fc1a6ff8e496257798",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceActualCriticalCovarianceNinthPntRate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:572a0b06-01f6-1ffc-3f75-90f0a873979c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingEarlyNinthNormalizedBudget_le {A : ℝ} (hA : 91 ≤ A) :
    actualNinthNormalizedCriticalEarlyBudget A A ≤ (27 / 4 * B) * A ^ 9 * Real.exp (-A / 2) := by
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hh := actualEarlyCriticalErrorCenter_abs_le ha
  have hb : 0 ≤ B := by positivity
  have he : Real.exp (A / 2) * Real.exp (-A) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hpow : A ^ 8 ≤ A ^ 9 := by
    calc
      _ = A ^ 8 * 1 := by ring
      _ ≤ A ^ 8 * A := mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = _ := by ring
  unfold actualNinthNormalizedCriticalEarlyBudget
  calc
    _ ≤ ((B / 2) * Real.exp (A / 2)) * (A ^ 9 * Real.exp (-A)) +
        (2 * B * Real.exp (A / 2) * (5 / 8 * A ^ 2 + 5 / 2 * A)) *
          (A ^ 7 * Real.exp (-A)) :=
      add_le_add (mul_le_mul_of_nonneg_right hh (by positivity)) le_rfl
    _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) * Real.exp (-A / 2) := by
      calc
        _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) *
            (Real.exp (A / 2) * Real.exp (-A)) := by ring
        _ = _ := by rw [he]
    _ ≤ _ := by
      have hm : 7 / 4 * A ^ 9 + 5 * A ^ 8 ≤ 27 / 4 * A ^ 9 := by linarith
      have hh := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hb)
        (Real.exp_pos (-A / 2)).le
      calc
        _ ≤ B * (27 / 4 * A ^ 9) * Real.exp (-A / 2) := hh
        _ = _ := by ring

/-- A source-specific late PNT rate gives an explicit full normalized budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceActualCriticalCovarianceNinthPntRate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variantdd06be6b5c58031f9c3c3b28bb061df8990ead52a936740d0421c51202e7b5e1.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `923048bf5ed7e6fba1ad4b46a9fde106d4460501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99635dc5593645abd951c8694da47d074615c6ed34979c3900c21d234a1fb099 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variantdd06be6b5c58031f9c3c3b28bb061df8990ead52a936740d0421c51202e7b5e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
