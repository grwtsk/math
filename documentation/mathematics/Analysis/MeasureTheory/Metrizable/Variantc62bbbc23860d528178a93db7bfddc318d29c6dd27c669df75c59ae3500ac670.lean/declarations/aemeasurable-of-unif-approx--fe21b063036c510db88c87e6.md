# aemeasurable_of_unif_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "705fdfeb8301ccd0f6112654071aa74b010e13e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c62bbbc23860d528178a93db7bfddc318d29c6dd27c669df75c59ae3500ac670.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7418577b-372a-c585-9d5d-66e2532d5396",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b775a357-1e0f-f733-7c34-29f3b87d375e",
  "kind": "theorem",
  "lexical_name": "aemeasurable_of_unif_approx",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "aemeasurable-of-unif-approx--fe21b063036c510db88c87e6",
  "source": {
    "blob": "705fdfeb8301ccd0f6112654071aa74b010e13e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc62bbbc23860d528178a93db7bfddc318d29c6dd27c669df75c59ae3500ac670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe21b063036c510db88c87e60cdea220ef056a3d79a0d0e05ecd5e16fbc3cdcf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Metrizable/Variantc62bbbc23860d528178a93db7bfddc318d29c6dd27c669df75c59ae3500ac670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b775a357-1e0f-f733-7c34-29f3b87d375e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_of_unif_approx {β} [MeasurableSpace β] [PseudoMetricSpace β] [BorelSpace β]
    {μ : Measure α} {g : α → β}
    (hf : ∀ ε > (0 : ℝ), ∃ f : α → β, AEMeasurable f μ ∧ ∀ᵐ x ∂μ, dist (f x) (g x) ≤ ε) :
    AEMeasurable g μ := by
  obtain ⟨u, -, u_pos, u_lim⟩ :
    ∃ u : ℕ → ℝ, StrictAnti u ∧ (∀ n : ℕ, 0 < u n) ∧ Tendsto u atTop (𝓝 0) :=
    exists_seq_strictAnti_tendsto (0 : ℝ)
  choose f Hf using fun n : ℕ => hf (u n) (u_pos n)
  have : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) atTop (𝓝 (g x)) := by
    have : ∀ᵐ x ∂μ, ∀ n, dist (f n x) (g x) ≤ u n := ae_all_iff.2 fun n => (Hf n).2
    filter_upwards [this]
    intro x hx
    rw [tendsto_iff_dist_tendsto_zero]
    exact squeeze_zero (fun n => dist_nonneg) hx u_lim
  exact aemeasurable_of_tendsto_metrizable_ae' (fun n => (Hf n).1) this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Analysis/MeasureTheory/Metrizable/Variantc62bbbc23860d528178a93db7bfddc318d29c6dd27c669df75c59ae3500ac670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc62bbbc23860d528178a93db7bfddc318d29c6dd27c669df75c59ae3500ac670.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `705fdfeb8301ccd0f6112654071aa74b010e13e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4da0b2a9c0fb98655db77af46c6fa163feb5a189367bea0a4376e7ef375feaad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc62bbbc23860d528178a93db7bfddc318d29c6dd27c669df75c59ae3500ac670.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c62bbbc23860d528178a93db7bfddc318d29c6dd27c669df75c59ae3500ac670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
