# Verification target: Basic Basic Public Merge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74e3845a99d7959cd5c1a345140152065843d522",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74e3845a99d7959cd5c1a345140152065843d522`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [merge](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/declarations/merge.md) | 39 | `declaration-track:87c12978ebdb5558ee3e048868e729f156ee22669b29fb782222a4524b489081` |
| 2 | `theorem` | [nil_merge](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/declarations/nil-merge.md) | 49 | `result-track:e9fc2def21d4d60bbca03633540cafd6946765ed7f7674256abdb5e689ba43a3` |
| 3 | `theorem` | [merge_right](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/declarations/merge-right.md) | 50 | `result-track:b7837151824ec1d7f1cb050d8e552c2196fc8320fccb68751617a6db64c615ae` |
| 4 | `def` | [MergeSort.Internal.splitInTwo](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/declarations/mergesort-internal-splitintwo.md) | 60 | `declaration-track:15c36560e083aa8cd45c78aff11898a3ffeeed2817cd64ff2e375f393a2b03eb` |
| 5 | `def` | [mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/declarations/mergesort.md) | 79 | `declaration-track:136068c1f435894f4f5299efcae0de5e24e7c5d72b5d6a5424172483fc8a5edf` |
| 6 | `def` | [zipIdxLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicMerge.lean/declarations/zipidxle.md) | 98 | `declaration-track:2dde7672619119f4b657c5dbb240b4218eb9f5b2cb1253229faa0497fd1b4b1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa8ee4a0a53db209f6dc60444302116bfd6e9d38984d63ecaa0bfc78cf305f68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta100c2a753aae0dda38a6e3afaca64f7ea70f4eba73d007ac29b5889fbf842ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
