# inducing_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 929,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2c0c0ba-8757-2e75-c77b-f39a4431ad8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecd5794d-c9a9-ec84-b4ce-45f9f60cf74b",
  "kind": "theorem",
  "lexical_name": "inducing_coe",
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
  "slug": "inducing-coe",
  "source": {
    "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 969,
    "line": 929,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fed667f4459774c8cb99d8ea9660438a6f97dc0b35cdf4db96a33e96606569e8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/LaurentSeriesPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecd5794d-c9a9-ec84-b4ce-45f9f60cf74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 929–969.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inducing_coe : IsUniformInducing ((↑) : K⟮X⟯ → K⸨X⸩) := by
  rw [isUniformInducing_iff, Filter.comap]
  ext S
  simp only [Filter.mem_mk, Set.mem_ofPred_eq, uniformity_eq_comap_nhds_zero,
    Filter.mem_comap]
  constructor
  · rintro ⟨T, ⟨⟨R, ⟨hR, pre_R⟩⟩, pre_T⟩⟩
    obtain ⟨d, hd⟩ := Valued.mem_nhds.mp hR
    use {P : K⟮X⟯ | Valued.v P < embedding d.1}
    simp only [Valued.mem_nhds, sub_zero]
    refine ⟨?_, subset_trans (fun _ _ ↦ pre_R ?_) pre_T⟩
    · obtain ⟨x, hx⟩ := RatFunc.valuation_surjective K (embedding d.1)
      use Units.mk0 (Valued.v.restrict x) (by
        rw [Valuation.restrict_def, ne_eq, restrict₀_eq_zero_iff]; simp [hx])
      simp [v_def, Valuation.restrict_lt_iff, ← hx]
    apply hd
    simp only [sub_zero, Set.mem_ofPred_eq]
    rw [← map_sub, Valuation.restrict_lt_iff_lt_embedding]
    simp only [valuation_def]
    rwa [← valuation_eq_LaurentSeries_valuation]
  · rintro ⟨_, ⟨hT, pre_T⟩⟩
    obtain ⟨d, hd⟩ := Valued.mem_nhds.mp hT
    set X := {f : K⸨X⸩ | Valued.v f < embedding d.1} with X_def
    refine ⟨(fun x : K⸨X⸩ × K⸨X⸩ ↦ x.snd - x.fst) ⁻¹' X, ⟨X, ?_⟩, ?_⟩
    · refine ⟨?_, Set.Subset.refl _⟩
      · simp only [Valued.mem_nhds, sub_zero, Valuation.restrict_lt_iff_lt_embedding]
        obtain ⟨x, hx⟩ := restrict₀_surjective _ d.1
        use Units.mk0 (Valued.v.restrict (x : K⸨X⸩)) (by
          simp only [ne_eq, map_eq_zero]
          intro h
          simp only [h, map_zero] at hx
          exact Units.ne_zero _ hx.symm)
        simp only [Units.val_mk0, ← Valuation.restrict_lt_iff_lt_embedding,
          X_def, Set.ofPred_subset_ofPred, Valuation.restrict_lt_iff]
        rw [← hx, embedding_restrict₀]
        simp [v_def, valuation_coe_ratFunc]
    · refine subset_trans (fun _ _ ↦ ?_) pre_T
      apply hd
      rwa [Set.mem_ofPred_eq, sub_zero, Valuation.restrict_lt_iff_lt_embedding, v_def,
        valuation_eq_LaurentSeries_valuation, map_sub]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/LaurentSeriesPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean#L929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ed25b74e7312f234de3998a8e927b9103b7cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1b1d346763acd071a64ca5b1e7432d19035a1bbc1d6ecbb250d95199ab7293e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean","GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
