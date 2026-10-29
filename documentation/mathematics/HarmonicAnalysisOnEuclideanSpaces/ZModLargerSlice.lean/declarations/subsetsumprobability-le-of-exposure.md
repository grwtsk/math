# subsetSumProbability_le_of_exposure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a13e64c3-662d-0c6e-91e2-82adb2a6b9a9",
  "kind": "theorem",
  "lexical_name": "subsetSumProbability_le_of_exposure",
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
  "slug": "subsetsumprobability-le-of-exposure",
  "source": {
    "blob": "2ee1212cb57a0641a60c479b37337c31a65d593d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 57,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSlice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9567e59b86d448ce22fa4fc5023ceebfc678a1de8f22ccb4deab22917699cef",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/ZModLargerSlice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13e64c3-662d-0c6e-91e2-82adb2a6b9a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumProbability_le_of_exposure
    (S : Finset (ZMod p)) (a b : ℕ)
    (hab : a + b ≤ S.card) (z : ZMod p) (c : ℝ)
    (hconditional : ∀ A ∈ S.powersetCard a,
      (GRWTSK.ZModSubsetSum.subsetSumProbability
        (S \ A) b (z - ∑ x ∈ A, x) : ℝ) ≤ c) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S (a + b) z : ℝ) ≤ c := by
  rw [subsetSumProbability_exposure S a b hab z]
  have hfirst : (0 : ℝ) < (S.powersetCard a).card := by
    exact_mod_cast
      (GRWTSK.FixedSizeSubsetExposure.exposure_spaces_nonempty
        S a b hab).2.1.card_pos
  apply (div_le_iff₀ hfirst).mpr
  calc
    (∑ A ∈ S.powersetCard a,
        (GRWTSK.ZModSubsetSum.subsetSumProbability
          (S \ A) b (z - ∑ x ∈ A, x) : ℝ)) ≤
        ∑ _A ∈ S.powersetCard a, c :=
      Finset.sum_le_sum hconditional
    _ = c * ((S.powersetCard a).card : ℝ) := by
      simp [nsmul_eq_mul, mul_comm]

/-- Source Corollary 1.4 with an explicit constant depending only on epsilon.
There is no logarithmic lower restriction on the sample size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/ZModLargerSlice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSlice.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee1212cb57a0641a60c479b37337c31a65d593d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe6387045a2fd4613daa29b25bb74d379d44672250e01e938c8df49978d9013d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/ZModLargerSlice.lean","GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
