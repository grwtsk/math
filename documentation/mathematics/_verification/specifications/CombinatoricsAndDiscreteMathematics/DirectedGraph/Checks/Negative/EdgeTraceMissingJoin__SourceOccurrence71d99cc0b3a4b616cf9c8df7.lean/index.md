# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.EdgeTraceMissingJoin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cb59abc196da51145e91c33af9ff96f437b90e1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/index.md) · [Full source](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cb59abc196da51145e91c33af9ff96f437b90e1`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.EdgeTrace`](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/declarations/instance--42b1697a2b2decd8102bc7b7.md) | 13 | `declaration-track:42b1697a2b2decd8102bc7b7490381fadb265099a8e4b78ff8677d37811a621f` |
| 2 | `def` | [firstEdge](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/declarations/firstedge--fa44103d8e04438aecca84a4.md) | 15 | `declaration-track:fa44103d8e04438aecca84a4eabb520c15659ff6ff7f8d7bac64e4eb1ce87880` |
| 3 | `def` | [brokenEdge](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/declarations/brokenedge--6f6534413668b4db473d8874.md) | 17 | `declaration-track:6f6534413668b4db473d88748a7d2c0ac62b4d613dcac7a93b07e791a8757681` |
| 4 | `theorem` | [valid_initial](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/declarations/valid-initial--d14338a75120c4090d06ae90.md) | 19 | `result-track:d14338a75120c4090d06ae90e87705b39cb1093278b52e54c12433b416736797` |
| 5 | `theorem` | [broken_join_rejected](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/declarations/broken-join-rejected--ba4ec8ab67302d56cbcd74f9.md) | 21 | `result-track:ba4ec8ab67302d56cbcd74f94439b0e7fdc3e2b5ed4333de485221c0f808e2f9` |
| 6 | `example` | [(anonymous)](../../../../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean/declarations/example--df4f6280b72ed0f9d11b0604.md) | 25 | `declaration-track:df4f6280b72ed0f9d11b06040258b101a09fc8eb7b57f7038b160fa534dc79cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75543ca6a0680228162fe2d4dd5d4275c5b88216f4645421b81da14ad2435d33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/EdgeTraceMissingJoin__SourceOccurrence71d99cc0b3a4b616cf9c8df7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
