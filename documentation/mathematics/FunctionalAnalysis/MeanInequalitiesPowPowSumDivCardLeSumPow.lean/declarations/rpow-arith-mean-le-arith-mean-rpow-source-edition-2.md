# rpow_arith_mean_le_arith_mean_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81e54cc14d9b56233f677ecb8a30d6668ea0a9fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d48ba5c5-0561-7bd5-0769-6a93f549d650",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c31c1587-eb1e-e338-cbb7-7e3e5fbd3cff",
  "kind": "theorem",
  "lexical_name": "rpow_arith_mean_le_arith_mean_rpow",
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
  "slug": "rpow-arith-mean-le-arith-mean-rpow-source-edition-2",
  "source": {
    "blob": "81e54cc14d9b56233f677ecb8a30d6668ea0a9fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 234,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d8277f324d404e674ee7b206a36453543ba3ef7c9f309cda94c6848eddd17aa",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/MeanInequalitiesPowPowSumDivCardLeSumPow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c31c1587-eb1e-e338-cbb7-7e3e5fbd3cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_arith_mean_le_arith_mean_rpow (w z : ι → ℝ≥0∞) (hw' : ∑ i in s, w i = 1) {p : ℝ}
    (hp : 1 ≤ p) : (∑ i in s, w i * z i) ^ p ≤ ∑ i in s, w i * z i ^ p := by
  have hp_pos : 0 < p
  positivity
  have hp_nonneg : 0 ≤ p
  positivity
  have hp_not_neg : ¬p < 0 := by simp [hp_nonneg]
  have h_top_iff_rpow_top : ∀ (i : ι), i ∈ s → (w i * z i = ⊤ ↔ w i * z i ^ p = ⊤) := by
    simp [ENNReal.mul_eq_top, hp_pos, hp_nonneg, hp_not_neg]
  refine' le_of_top_imp_top_of_toNNReal_le _ _
  · -- first, prove `(∑ i in s, w i * z i) ^ p = ⊤ → ∑ i in s, (w i * z i ^ p) = ⊤`
    rw [rpow_eq_top_iff, sum_eq_top_iff, sum_eq_top_iff]
    intro h
    simp only [and_false_iff, hp_not_neg, false_or_iff] at h
    rcases h.left with ⟨a, H, ha⟩
    use a, H
    rwa [← h_top_iff_rpow_top a H]
  · -- second, suppose both `(∑ i in s, w i * z i) ^ p ≠ ⊤` and `∑ i in s, (w i * z i ^ p) ≠ ⊤`,
    -- and prove `((∑ i in s, w i * z i) ^ p).toNNReal ≤ (∑ i in s, (w i * z i ^ p)).toNNReal`,
    -- by using `NNReal.rpow_arith_mean_le_arith_mean_rpow`.
    intro h_top_rpow_sum _
    -- show hypotheses needed to put the `.toNNReal` inside the sums.
    have h_top : ∀ a : ι, a ∈ s → w a * z a ≠ ⊤ :=
      haveI h_top_sum : ∑ i : ι in s, w i * z i ≠ ⊤ := by
        intro h
        rw [h, top_rpow_of_pos hp_pos] at h_top_rpow_sum
        exact h_top_rpow_sum rfl
      fun a ha => (lt_top_of_sum_ne_top h_top_sum ha).ne
    have h_top_rpow : ∀ a : ι, a ∈ s → w a * z a ^ p ≠ ⊤ := by
      intro i hi
      specialize h_top i hi
      rwa [Ne.def, ← h_top_iff_rpow_top i hi]
    -- put the `.toNNReal` inside the sums.
    simp_rw [toNNReal_sum h_top_rpow, ← toNNReal_rpow, toNNReal_sum h_top, toNNReal_mul, ←
      toNNReal_rpow]
    -- use corresponding nnreal result
    refine'
      NNReal.rpow_arith_mean_le_arith_mean_rpow s (fun i => (w i).toNNReal)
        (fun i => (z i).toNNReal) _ hp
    -- verify the hypothesis `∑ i in s, (w i).toNNReal = 1`, using `∑ i in s, w i = 1` .
    have h_sum_nnreal : ∑ i in s, w i = ↑(∑ i in s, (w i).toNNReal) := by
      rw [coe_finset_sum]
      refine' sum_congr rfl fun i hi => (coe_toNNReal _).symm
      refine' (lt_top_of_sum_ne_top _ hi).ne
      exact hw'.symm ▸ ENNReal.one_ne_top
    rwa [← coe_eq_coe, ← h_sum_nnreal]
#align ennreal.rpow_arith_mean_le_arith_mean_rpow ENNReal.rpow_arith_mean_le_arith_mean_rpow

/-- Weighted generalized mean inequality, version for two elements of `ℝ≥0∞` and real
exponents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/MeanInequalitiesPowPowSumDivCardLeSumPow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e54cc14d9b56233f677ecb8a30d6668ea0a9fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f8ebe5ba942a4fd821df9555451bc0ff583707192204e930895f743f91b7879 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b4dc72ffd8aec5a93a29d02c0a2e629e520e337086e62ec59669a2f808f2e91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
