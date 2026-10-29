# card_hammingWeight_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4c9395286e12721fa79dfc466b943d2ce3354d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 684,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7162ad9d-5abe-80f9-37af-1222717404ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e61f6f83-6c41-a001-5b95-d8a2a3c40a56",
  "kind": "theorem",
  "lexical_name": "card_hammingWeight_eq",
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
  "slug": "card-hammingweight-eq",
  "source": {
    "blob": "c4c9395286e12721fa79dfc466b943d2ce3354d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 684,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f786410718bece3e15f9a82bbf3277fb3e03e738494dc26ff867aedc878ef0f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e61f6f83-6c41-a001-5b95-d8a2a3c40a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_hammingWeight_eq (n k : Nat) :
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
      Nat.choose n k := by
  classical
  calc
    (Finset.univ.filter fun x : Bits n => hammingWeight x = k).card =
        ((Finset.univ : Finset (Fin n)).powersetCard k).card := by
      apply Finset.card_equiv (bitsSupportEquiv n)
      intro x
      simp only [Finset.mem_filter, Finset.mem_univ, true_and,
        Finset.mem_powersetCard, Finset.subset_univ, true_and]
      rfl
    _ = Nat.choose n k := by simp

/-- Hamming weight of the one-bit derivative at an input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/AvalancheEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c9395286e12721fa79dfc466b943d2ce3354d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9add41a04d3dfc6de994cfe4290d2bf1418c50c590886ad65104f6b4cb018769 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
