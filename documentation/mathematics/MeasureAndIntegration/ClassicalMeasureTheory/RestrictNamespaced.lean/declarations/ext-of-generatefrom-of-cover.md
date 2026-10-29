# ext_of_generateFrom_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4fea255-3d6a-d745-cdc2-a40f1c77ab32",
  "kind": "theorem",
  "lexical_name": "ext_of_generateFrom_of_cover",
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
  "slug": "ext-of-generatefrom-of-cover",
  "source": {
    "blob": "e11be0390131a40e15a082da6b2c801cc994b522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 432,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantb0fd1a9698f36c709adac04c0509b42d5b7ef8da400cb4bf3780c301b95ce057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebb3abeee0e092e8207cac47451d2ba75bfef973fb74b6dc622876101ead93c0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/RestrictNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4fea255-3d6a-d745-cdc2-a40f1c77ab32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_of_generateFrom_of_cover {S T : Set (Set α)} (h_gen : ‹_› = generateFrom S)
    (hc : T.Countable) (h_inter : IsPiSystem S) (hU : ⋃₀ T = univ) (htop : ∀ t ∈ T, μ t ≠ ∞)
    (ST_eq : ∀ t ∈ T, ∀ s ∈ S, μ (s ∩ t) = ν (s ∩ t)) (T_eq : ∀ t ∈ T, μ t = ν t) : μ = ν := by
  refine ext_of_sUnion_eq_univ hc hU fun t ht => ?_
  ext1 u hu
  simp only [restrict_apply hu]
  induction u, hu using induction_on_inter h_gen h_inter with
  | empty => simp only [Set.empty_inter, measure_empty]
  | basic u hu => exact ST_eq _ ht _ hu
  | compl u hu ihu =>
    have := T_eq t ht
    rw [Set.inter_comm] at ihu ⊢
    rwa [← measure_inter_add_diff t hu, ← measure_inter_add_diff t hu, ← ihu,
      ENNReal.add_right_inj] at this
    exact ne_top_of_le_ne_top (htop t ht) (measure_mono Set.inter_subset_left)
  | iUnion f hfd hfm ihf =>
    simp only [← restrict_apply (hfm _), ← restrict_apply (MeasurableSet.iUnion hfm)] at ihf ⊢
    simp only [measure_iUnion hfd hfm, ihf]

/-- Two measures are equal if they are equal on the π-system generating the σ-algebra,
  and they are both finite on an increasing spanning sequence of sets in the π-system.
  This lemma is formulated using `sUnion`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/RestrictNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantb0fd1a9698f36c709adac04c0509b42d5b7ef8da400cb4bf3780c301b95ce057.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e11be0390131a40e15a082da6b2c801cc994b522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=801990ff58aa172d87a3d09d3b325b9d651f13be394a48ff567877355ee1fc34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Restrict/Variantb0fd1a9698f36c709adac04c0509b42d5b7ef8da400cb4bf3780c301b95ce057.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
