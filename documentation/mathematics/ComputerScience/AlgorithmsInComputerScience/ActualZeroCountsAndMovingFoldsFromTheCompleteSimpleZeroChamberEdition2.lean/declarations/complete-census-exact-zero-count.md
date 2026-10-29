# complete_census_exact_zero_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6066fa90-0987-5c55-3a9e-b624b2b221e0",
  "kind": "theorem",
  "lexical_name": "complete_census_exact_zero_count",
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
  "slug": "complete-census-exact-zero-count",
  "source": {
    "blob": "c5e65ed80419014c9919a3d4e750dee7397d761b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant84b589ce1323fc73a0be2710b2fa05b05e77b7e4524e4bcb7fa21d317e28b101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c147f03c5fa22a4b1bc74ffb4580e7a0aae1c5a7b5ed83f9bd88ed82284c8e29",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ActualZeroCountsAndMovingFoldsFromTheCompleteSimpleZeroChamberEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6066fa90-0987-5c55-3a9e-b624b2b221e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_census_exact_zero_count {n : ℕ} {g : ℝ × ℝ → ℝ} {l a b : ℝ}
    (z : Fin n → ℝ) (horder : StrictMono z) (hinside : ∀ i, z i ∈ Ioo a b)
    (hcensus : ∀ x ∈ Icc a b, g (l, x) = 0 ↔ ∃ i, z i = x) :
    {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard = n := by
  have hset : {x | x ∈ Icc a b ∧ g (l,x) = 0} = range z := by
    ext x
    constructor
    · rintro ⟨hx,hz⟩
      exact (hcensus x hx).1 hz
    · rintro ⟨i,rfl⟩
      have hx : z i ∈ Icc a b := ⟨(hinside i).1.le,(hinside i).2.le⟩
      exact ⟨hx,(hcensus _ hx).2 ⟨i,rfl⟩⟩
  rw [hset,ncard_range_of_injective horder.injective]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ActualZeroCountsAndMovingFoldsFromTheCompleteSimpleZeroChamberEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant84b589ce1323fc73a0be2710b2fa05b05e77b7e4524e4bcb7fa21d317e28b101.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e65ed80419014c9919a3d4e750dee7397d761b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4fd6e1fff494b2e5169ed8415dca3a781b351a598f15da4f0d4703a7192a184 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant84b589ce1323fc73a0be2710b2fa05b05e77b7e4524e4bcb7fa21d317e28b101.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
