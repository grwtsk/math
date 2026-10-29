# Verification target: Closure Network

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8e7bed3fc899bfa567f8be235b84c02a7f4db5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureNetwork/Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8e7bed3fc899bfa567f8be235b84c02a7f4db5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureNetwork/Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureNetwork/Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresentationIndex](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/presentationindex.md) | 15 | `declaration-track:f72b32224f3a70724e5ae04169a6885e9c4a8974c0cc67624bb5c2d257814cf8` |
| 2 | `structure` | [ClosureEnvironment](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/closureenvironment.md) | 21 | `declaration-track:0150c9fff432cd18bd9edb4c66348a93f82c002a60500d748c90ddcafa6accb3` |
| 3 | `structure` | [ClosureInput](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/closureinput.md) | 29 | `declaration-track:757e1d2394a02cdf7f213cd3f08463d8b274809dde56a4c40068e0fe3477633e` |
| 4 | `structure` | [ClosureOutput](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/closureoutput.md) | 34 | `declaration-track:acfdec42a84411389c055af2f91b1556d7c13887e7e8d677f437243834650014` |
| 5 | `structure` | [PureNodeClosure](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/purenodeclosure.md) | 41 | `declaration-track:d16a2f0c849ad0387c59a04807e949eec6ec7831d01264697ad473f4ec02ae5f` |
| 6 | `structure` | [PresentationFiberState](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/presentationfiberstate.md) | 53 | `declaration-track:c34dc318bfa6e31bc4706df294056f555ba23ede94c0ff4c71ebe2ea6a9de416` |
| 7 | `structure` | [ReducerFiberWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/reducerfiberwitness.md) | 59 | `declaration-track:446442144f97084797c774c1818fdb4bb71f584d45190fe2b6321f049e4c8479` |
| 8 | `structure` | [ReducerFiberEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/reducerfiberedge.md) | 73 | `declaration-track:167bc0c20c76038e3da69cdee2ea8dc7b3663e09151ca7681d1d408de3bff33f` |
| 9 | `structure` | [PresentationIndexedClosureNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/presentationindexedclosurenetwork.md) | 79 | `declaration-track:8077705ba168b3666196b2f83caebb3978aa02d08d33249432a6c5617aa2f9d3` |
| 10 | `theorem` | [presentation_indexed_closure_network_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureNetwork.lean/declarations/presentation-indexed-closure-network-sound.md) | 105 | `result-track:2b725941dcc2242afbbb00e09d255338942c01368ae8060ff595c3d96e53dfc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db895377954a44d9f77a760d1b00004e092e1e43e6d4efe1aa87139ee3910415 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureNetwork/Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureNetwork/Variantf320b79f46d682fde8330050d0d9e272963814ef167c13d00d7904e2a9b7cf5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
