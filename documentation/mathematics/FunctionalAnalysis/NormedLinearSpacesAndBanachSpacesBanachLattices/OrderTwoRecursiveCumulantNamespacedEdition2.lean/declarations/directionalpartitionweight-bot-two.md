# directionalPartitionWeight_bot_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81a105ad-5d05-51f0-0a72-b053c8eadb88",
  "kind": "theorem",
  "lexical_name": "directionalPartitionWeight_bot_two",
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
  "slug": "directionalpartitionweight-bot-two",
  "source": {
    "blob": "93942fd4446f96b782d224e3aecb35862d6f3635",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4c3702fa1df014eae7293b2584becdf7a1177db0d895c5690aa80c9efc03ab2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantNamespacedEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81a105ad-5d05-51f0-0a72-b053c8eadb88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directionalPartitionWeight_bot_two
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 2 → E) :
    directionalPartitionWeight κ directions
        (⊥ : DirectionPartition 2) =
      κ 1 (fun _ : Fin 1 => directions 0) *
        κ 1 (fun _ : Fin 1 => directions 1) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [parts_bot_two_eq_pair]
  simp [blockCumulantFunctional,
    blockCumulantValue_singleton]

/-- The full proper-partition correction at order two is the product of the two
first cumulants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantNamespacedEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93942fd4446f96b782d224e3aecb35862d6f3635` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66b35eb373925b2b2ffa4f359a6d1c6f0879b7fe35c641af17a5563b083379d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
