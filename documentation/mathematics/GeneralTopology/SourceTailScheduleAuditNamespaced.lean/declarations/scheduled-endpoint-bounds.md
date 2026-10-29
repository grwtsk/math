# scheduled_endpoint_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:042904d2-c7b7-f6ee-3db1-ddd94511e8d8",
  "kind": "theorem",
  "lexical_name": "scheduled_endpoint_bounds",
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
  "slug": "scheduled-endpoint-bounds",
  "source": {
    "blob": "63343da2c6e4e3d1cee8bdea43fd692804dbaeeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23d6ba2adb0f4997a465dbc637bd6ab25a805f82f605f31f78ddf9973344502",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/SourceTailScheduleAuditNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:042904d2-c7b7-f6ee-3db1-ddd94511e8d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scheduled_endpoint_bounds (X : ℕ) (hX : 2 ≤ X) :
    ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖ ≤ 1 / (4 * logScale X) ∧
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) /
        Real.sqrt (cutoffSchedule X) ≤ 3 / Real.sqrt (X : ℝ) := by
  have hXn : 1 ≤ X := by omega
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hXn
  have hX0 : 0 < (X : ℝ) := lt_of_lt_of_le zero_lt_one hXr
  have hL : 1 ≤ logScale X := by
    dsimp only [logScale]
    linarith [Real.log_nonneg hXr]
  have hL0 : 0 < logScale X := lt_of_lt_of_le zero_lt_one hL
  obtain ⟨hepos, _, _⟩ := schedule_admissible X hX
  constructor
  · have hb := correctedNumerator_half_add_norm_le X (epsilonSchedule X) hXn hepos.le
    change ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖ ≤
      epsilonSchedule X * logScale X ^ 2 at hb
    have he : epsilonSchedule X * logScale X ^ 2 = 1 / (4 * logScale X) := by
      unfold epsilonSchedule
      field_simp
    exact hb.trans_eq he
  · have hb := dampedCoefficient_abs_sum_le X (epsilonSchedule X) hXn hepos.le
    change (∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) ≤
      2 * (X : ℝ) * logScale X at hb
    have hsqrt : Real.sqrt (cutoffSchedule X) = (X : ℝ) * logScale X * Real.sqrt (X : ℝ) := by
      unfold cutoffSchedule
      rw [show (X : ℝ) ^ 3 * logScale X ^ 2 =
        ((X : ℝ) * logScale X) ^ 2 * (X : ℝ) by ring,
        Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]
    rw [hsqrt]
    have hXL : 1 ≤ (X : ℝ) * logScale X := one_le_mul_of_one_le_of_one_le hXr hL
    apply (div_le_div_iff₀ (by positivity) (Real.sqrt_pos.mpr hX0)).mpr
    nlinarith [Real.sqrt_nonneg (X : ℝ)]

/-- Both explicit tail budgets vanish along the complete natural-number diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/SourceTailScheduleAuditNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63343da2c6e4e3d1cee8bdea43fd692804dbaeeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ea06d900aee265322854c6281b20401d200f43729b180efeedc8e4164881d48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
