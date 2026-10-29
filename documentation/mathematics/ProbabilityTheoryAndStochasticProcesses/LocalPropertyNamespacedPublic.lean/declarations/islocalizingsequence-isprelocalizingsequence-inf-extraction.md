# IsLocalizingSequence.isPrelocalizingSequence_inf_extraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ace4aa5d-1a88-9894-25e6-fadf889672d7",
  "kind": "lemma",
  "lexical_name": "IsLocalizingSequence.isPrelocalizingSequence_inf_extraction",
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
  "slug": "islocalizingsequence-isprelocalizingsequence-inf-extraction",
  "source": {
    "blob": "3f335bebf685d02eec7b219b9232e9fc5f78a1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb02fac8668818df9510177b17cc94683e4833b830b84213c6801730a869c4d5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ProbabilityTheoryAndStochasticProcesses/LocalPropertyNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ace4aa5d-1a88-9894-25e6-fadf889672d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalizingSequence.isPrelocalizingSequence_inf_extraction
    [NoMaxOrder ι] {τ : ℕ → Ω → WithTop ι} {σ : ℕ → ℕ → Ω → WithTop ι}
    (hτ : IsLocalizingSequence 𝓕 τ P) (hσ : ∀ n, IsLocalizingSequence 𝓕 (σ n) P) :
    ∃ nk : ℕ → ℕ, StrictMono nk ∧
      IsPreLocalizingSequence 𝓕 (fun i ω ↦ (τ i ω) ⊓ (σ i (nk i) ω)) P := by
  obtain ⟨nk, T, hnk, hT, hP⟩ := isPreLocalizingSequence_of_isLocalizingSequence_aux hτ hσ
  refine ⟨nk, hnk, fun n ↦ (hτ.isStoppingTime n).min ((hσ _).isStoppingTime _), ?_⟩
  have : ∑' n, P {ω | σ n (nk n) ω < min (τ n ω) (T n)} < ∞ :=
    lt_of_le_of_lt (ENNReal.summable.tsum_mono ENNReal.summable hP)
      (tsum_geometric_lt_top.2 <| by simp)
  filter_upwards [ae_eventually_notMem this.ne, hτ.tendsto_top] with ω hω hωτ
  exact hωτ.min <| tendsto_of_tendsto_of_tendsto_of_le_of_le'
    (hωτ.min <| WithTop.tendsto_coe_atTop.comp hT) tendsto_const_nhds (by grind) (by simp)

variable [DenselyOrdered ι] [NoMaxOrder ι] [Zero E]

/-- A stable property holding locally is idempotent. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/LocalPropertyNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f335bebf685d02eec7b219b9232e9fc5f78a1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d1c5150d47cf41cf4eeda3d9cc00ee46a9a0b8dd0e6151f330e11a848256835 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
