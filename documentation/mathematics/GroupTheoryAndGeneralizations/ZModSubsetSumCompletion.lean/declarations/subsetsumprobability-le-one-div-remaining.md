# subsetSumProbability_le_one_div_remaining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:315b12fb-e18f-0ad7-39f1-d4028bf4439c",
  "kind": "theorem",
  "lexical_name": "subsetSumProbability_le_one_div_remaining",
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
  "slug": "subsetsumprobability-le-one-div-remaining",
  "source": {
    "blob": "b4e5279c2db9d681e84aba8f9359a406172b81bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeb1fb73b058de14544e5cc7df938de415bdb0b9251f6a0fbd369d5dcba0721e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/ZModSubsetSumCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:315b12fb-e18f-0ad7-39f1-d4028bf4439c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumProbability_le_one_div_remaining {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) (hm : 1 ≤ m) (hmS : m ≤ S.card) :
    subsetSumProbability S m z ≤ 1 / ((S.card - m + 1 : ℕ) : ℚ) := by
  have hc := subsetSumFiber_card_mul_remaining_le S m z hm hmS
  have hC : (0 : ℚ) < (S.powersetCard m).card := by
    rw [Finset.card_powersetCard]
    exact_mod_cast Nat.choose_pos hmS
  have hrem : (0 : ℚ) < ((S.card - m + 1 : ℕ) : ℚ) := by positivity
  unfold subsetSumProbability
  apply (div_le_div_iff₀ hC hrem).mpr
  simpa using (show ((subsetSumFiber S m z).card : ℚ) *
    ((S.card - m + 1 : ℕ) : ℚ) ≤ ((S.powersetCard m).card : ℚ) by exact_mod_cast hc)

/-- Complement exposure conserves the complete sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/ZModSubsetSumCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e5279c2db9d681e84aba8f9359a406172b81bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d84226ed34152c0575723333accd7cdf97da8f2c5e3728fe048746071dbc2143 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean","GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
