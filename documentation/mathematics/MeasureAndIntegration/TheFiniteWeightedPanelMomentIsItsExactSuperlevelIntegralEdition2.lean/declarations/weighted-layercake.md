# weighted_layercake

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13c28222-f3b2-04be-e579-31c6a6a1f24c",
  "kind": "theorem",
  "lexical_name": "weighted_layercake",
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
  "slug": "weighted-layercake",
  "source": {
    "blob": "8fb0cb9d12982b5769cf6322e5c513dc4d4b0a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d3288df7863f4b7f2690f9501e44fc6c98a7862e18581b995036c12827c5ae",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/TheFiniteWeightedPanelMomentIsItsExactSuperlevelIntegralEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13c28222-f3b2-04be-e579-31c6a6a1f24c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_layercake {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ} (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) {p : ℝ} (hp : 0 < p) :
    (∑ i ∈ s, w i * ENNReal.ofReal ((f i) ^ p)) =
      ENNReal.ofReal p * ∫⁻ t in Set.Ioi (0 : ℝ),
        superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1)) := by
  have h := MeasureTheory.lintegral_rpow_eq_lintegral_meas_le_mul (atomicMeasure s w)
    (Filter.Eventually.of_forall hf0) hf.aemeasurable hp
  rw [atomic_lintegral] at h
  simp_rw [atomic_superlevel_measure] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/TheFiniteWeightedPanelMomentIsItsExactSuperlevelIntegralEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb0cb9d12982b5769cf6322e5c513dc4d4b0a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d49c3ed26756705508604db9227524256ed94994e75ff8b13358c90338f0ceb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
