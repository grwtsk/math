# intervalIntegral_pow_mul_exp_neg_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8602a6bf-0c6e-c17a-cb02-3a26a31fc24b",
  "kind": "lemma",
  "lexical_name": "intervalIntegral_pow_mul_exp_neg_le",
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
  "slug": "intervalintegral-pow-mul-exp-neg-le",
  "source": {
    "blob": "4f6362da8546053c2655b92379af14031893e95c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantf11a1bbd166fbe6781fd8aa19f105bad21ed6aaa6bfca875d72b93678d4cc697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6332108e1aacca8b47c4544e93808c4d6981c818916db424e7b72b94d26ed0e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/SumIntegralExpDecayNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8602a6bf-0c6e-c17a-cb02-3a26a31fc24b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intervalIntegral_pow_mul_exp_neg_le {k : ℕ} {M c : ℝ} (hM : 0 ≤ M) (hc : 0 < c) :
    ∫ x in (0 : ℝ)..M, x ^ k * rexp (- (c * x)) ≤ k ! / c ^ (k + 1) := by
  have hk : (0 : ℝ) < ↑k + 1 := by positivity
  have key := integral_rpow_mul_exp_neg_mul_Ioi hk hc
  have hint : IntegrableOn (fun x ↦ x ^ ((↑k + 1 : ℝ) - 1) * rexp (-(c * x))) (Ioi 0) :=
    .of_integral_ne_zero (by rw [key]; positivity)
  rw [intervalIntegral.integral_of_le hM]
  calc ∫ x in Ioc (0 : ℝ) M, x ^ k * rexp (-(c * x))
    _ = ∫ x in Ioc (0 : ℝ) M, x ^ ((↑k + 1 : ℝ) - 1) * rexp (-(c * x)) := by
        simp [add_sub_cancel_right, rpow_natCast]
    _ ≤ ∫ x in Ioi (0 : ℝ), x ^ ((↑k + 1 : ℝ) - 1) * rexp (-(c * x)) := by
        apply setIntegral_mono_set hint _ Ioc_subset_Ioi_self.eventuallySubset
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
        exact mul_nonneg (rpow_nonneg hx.le _) (exp_nonneg _)
    _ = k ! / c ^ (k + 1) := by
        simp_rw [key, Gamma_nat_eq_factorial, div_eq_mul_inv,
          one_mul, mul_comm, inv_rpow hc.le, ← rpow_natCast]
        norm_cast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/SumIntegralExpDecayNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantf11a1bbd166fbe6781fd8aa19f105bad21ed6aaa6bfca875d72b93678d4cc697.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6362da8546053c2655b92379af14031893e95c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b356b5bb0a67c408751cd00653d4f2cc6ef23aba6495b1e8d351226b355bebd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralExpDecay/Variantf11a1bbd166fbe6781fd8aa19f105bad21ed6aaa6bfca875d72b93678d4cc697.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
