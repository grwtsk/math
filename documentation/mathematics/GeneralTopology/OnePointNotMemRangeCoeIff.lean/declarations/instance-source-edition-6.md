# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d19ae4ccd0d892b2683874a27a28137641143cbc0b027b92560b082d91ce1f3b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance-source-edition-6",
  "source": {
    "blob": "8df517c25fb971cc4aa696a2effd764201a721ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 462,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50604ac8bf6d509b9b23ee8cd8b3c2997483fb6233fd44513d1264977d6c58f0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/OnePointNotMemRangeCoeIff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d19ae4ccd0d892b2683874a27a28137641143cbc0b027b92560b082d91ce1f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [LocallyCompactSpace X] [T2Space X] : NormalSpace (OnePoint X) := by
  have key : ∀ z : X, Disjoint (𝓝 (some z)) (𝓝 ∞) := fun z => by
    rw [nhds_infty_eq, disjoint_sup_right, nhds_coe_eq, coclosedCompact_eq_cocompact,
      disjoint_map coe_injective, ← principal_singleton, disjoint_principal_right, compl_infty]
    exact ⟨disjoint_nhds_cocompact z, range_mem_map⟩
  suffices : T2Space (OnePoint X); exact normalOfCompactT2
  refine t2Space_iff_disjoint_nhds.2 fun x y hxy => ?_
  induction x using OnePoint.rec <;> induction y using OnePoint.rec
  · exact (hxy rfl).elim
  · exact (key _).symm
  · exact key _
  · rwa [nhds_coe_eq, nhds_coe_eq, disjoint_map coe_injective, disjoint_nhds_nhds,
      ← coe_injective.ne_iff]

/-- If `X` is not a compact space, then `OnePoint X` is a connected space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/OnePointNotMemRangeCoeIff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df517c25fb971cc4aa696a2effd764201a721ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40b732fbca6e5f5fa2bc37cd2b453d812e8ee4016ddd1b7af6dc956398d4079e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
