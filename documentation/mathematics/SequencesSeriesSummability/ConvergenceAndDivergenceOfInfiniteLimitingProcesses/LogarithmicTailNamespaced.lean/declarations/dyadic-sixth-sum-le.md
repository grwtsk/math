# dyadic_sixth_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e42a809-3e63-69cd-5567-5eb28e89b91e",
  "kind": "theorem",
  "lexical_name": "dyadic_sixth_sum_le",
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
  "slug": "dyadic-sixth-sum-le",
  "source": {
    "blob": "45b7dc87611831c52cfd902ad80de71c58f773cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 207,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61280e460cb8dd517660bce5f6edba7594a80314f03d48420706ae37e5f3d407",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicTailNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e42a809-3e63-69cd-5567-5eb28e89b91e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_sixth_sum_le {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T)
    (k : ℕ) :
    (∑' o : DyadicShell T (by linarith) k, sixthWeight o.val.val) ≤
      (4*C*Real.log T/T^5)*(((k:ℝ)+2)*(1/32:ℝ)^k) := by
  have hp : 0 < T := by linarith
  have hC : 0 < C := hc.1
  have hw : 0 < (2:ℝ)^k*T := by positivity
  have hpoint (o : DyadicShell T hp k) :
      sixthWeight o.val.val ≤ 1/((2:ℝ)^k*T)^6 := by
    have hi : dyadicIndex T hp o.val = k := o.property
    have hb := (dyadicIndex_bounds hp o.val).1
    rw [hi] at hb
    unfold sixthWeight
    exact one_div_le_one_div_of_le (by positivity)
      (pow_le_pow_left₀ (by positivity) hb.le 6)
  have := dyadicShell_finite T hp k
  let := Fintype.ofFinite (DyadicShell T hp k)
  calc
    _ ≤ ∑' _o : DyadicShell T hp k, 1/((2:ℝ)^k*T)^6 :=
      Summable.tsum_le_tsum hpoint Summable.of_finite Summable.of_finite
    _ = (Nat.card (DyadicShell T hp k):ℝ)*(1/((2:ℝ)^k*T)^6) := by
      simp [tsum_fintype, Nat.card_eq_fintype_card]
    _ ≤ (4*C*(2:ℝ)^k*T*((k:ℝ)+2)*Real.log T)*(1/((2:ℝ)^k*T)^6) :=
      mul_le_mul_of_nonneg_right (dyadicShell_card_le hc hT k) (by positivity)
    _ = _ := by
      have hpow : ((2:ℝ)^k)^6 = (64:ℝ)^k := by
        rw [← pow_mul, Nat.mul_comm k 6, pow_mul]
        norm_num
      have hr : (1/32:ℝ)^k = (2:ℝ)^k/(64:ℝ)^k := by
        rw [← div_pow]
        norm_num
      rw [mul_pow, hpow, hr]
      field_simp

/-- Literal actual occurrence sixth moment, conditional on the sharper count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicTailNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b7dc87611831c52cfd902ad80de71c58f773cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9e11074664e16b9eed22910b722ee19ac38640decd34928da58e7c9913da72a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
