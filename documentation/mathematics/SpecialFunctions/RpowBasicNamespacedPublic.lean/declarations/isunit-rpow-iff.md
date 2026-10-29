# isUnit_rpow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3839758f-d1dd-6181-8de4-f122e821d21e",
  "kind": "lemma",
  "lexical_name": "isUnit_rpow_iff",
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
  "slug": "isunit-rpow-iff",
  "source": {
    "blob": "3ec5dbefe8609409fed35b3e004162817c4bfc78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 558,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1682b4537b0beb5e2124fd841d863d360612ed73fcaf387d843ad8d96e262d4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SpecialFunctions/RpowBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3839758f-d1dd-6181-8de4-f122e821d21e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_rpow_iff (a : A) (y : ℝ) (hy : y ≠ 0) (ha : 0 ≤ a := by cfc_tac) :
    IsUnit (a ^ y) ↔ IsUnit a := by
  nontriviality A
  refine ⟨fun h => ?_, fun h => h.cfcRpow y ha⟩
  rw [rpow_def] at h
  by_cases hf : ContinuousOn (fun x : ℝ≥0 => x ^ y) (spectrum ℝ≥0 a)
  · rw [isUnit_cfc_iff _ a hf] at h
    refine spectrum.isUnit_of_zero_notMem ℝ≥0 ?_
    intro h0
    specialize h 0 h0
    simp only [ne_eq, NNReal.rpow_eq_zero_iff, true_and, Decidable.not_not] at h
    exact hy h
  · rw [cfc_apply_of_not_continuousOn a hf] at h
    exact False.elim <| not_isUnit_zero h

section prod

variable [IsSemitopologicalRing A] [T2Space A]
variable {B : Type*} [PartialOrder B] [Ring B] [StarRing B] [TopologicalSpace B]
  [StarOrderedRing B]
  [Algebra ℝ B] [ContinuousFunctionalCalculus ℝ B IsSelfAdjoint]
  [ContinuousFunctionalCalculus ℝ (A × B) IsSelfAdjoint]
  [IsSemitopologicalRing B] [T2Space B] [StarOrderedRing (A × B)]
  [NonnegSpectrumClass ℝ B] [NonnegSpectrumClass ℝ (A × B)]

set_option backward.isDefEq.respectTransparency false in
/- Note that there is higher-priority instance of `Pow (A × B) ℝ` coming from the `Pow` instance for
products, hence the direct use of `rpow` here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/SpecialFunctions/RpowBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec5dbefe8609409fed35b3e004162817c4bfc78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93f1e0a2c9a4751a16221ec0b1f1b625a4530f9b46c72580b7f8763fc0faed50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
