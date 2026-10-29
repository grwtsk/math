# Verification target: Option NAry NAry Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "700597bbfc7a4dff18c362e25c5d6057bd7c52c4",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NAry/Varianta820e7994b175c2b0e569e35f628f7a4e87bc563cd21ad39de4ca3ed8fa3cdcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `700597bbfc7a4dff18c362e25c5d6057bd7c52c4`.

Source path: `GRWTSK/Algebra/GroupTheory/NAry/Varianta820e7994b175c2b0e569e35f628f7a4e87bc563cd21ad39de4ca3ed8fa3cdcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NAry/Varianta820e7994b175c2b0e569e35f628f7a4e87bc563cd21ad39de4ca3ed8fa3cdcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map.md) | 49 | `declaration-track:9f640dbdeeb4ef9a41eaec6cea8a3e27064265882d71808a08e15e542c141ea7` |
| 2 | `theorem` | [map₂_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-def.md) | 55 | `result-track:624c178a34546d984012bce62db638899be1b1db3c0018082068f1df2a154459` |
| 3 | `theorem` | [map₂_some_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-some-some.md) | 61 | `result-track:f4fc383b5262b544bfe761064a288b8e02ec61d135a748d4682c9d410b9e79d9` |
| 4 | `theorem` | [map₂_coe_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-coe-coe.md) | 64 | `result-track:14517392e38e6135082e21c4fe9b6e6fb500d7eeb91416c86044174207bf5b5d` |
| 5 | `theorem` | [map₂_none_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-none-left.md) | 68 | `result-track:917fcde5ffb820083d8fd960ddd8ae5aca5dbd35d94dd12a4cf64320b4c928de` |
| 6 | `theorem` | [map₂_none_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-none-right.md) | 72 | `result-track:708c42d1a565b4f2f28ec4cff86e09880a09b3c04ad1056b8699c1e2e5fdcafa` |
| 7 | `theorem` | [map₂_coe_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-coe-left.md) | 76 | `result-track:108af2a47ca0cca974fbc4bb9b7c17673c6faad7b3d345035d33400ce8725941` |
| 8 | `theorem` | [map₂_coe_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-coe-right.md) | 82 | `result-track:fa099edfa33344f6959bf576c5d44660ef5aab24cd390b228bde4037e8dc7779` |
| 9 | `theorem` | [mem_map₂_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/mem-map-iff.md) | 87 | `result-track:a3e03d9c1a3a4092cf1447a0bbed8fcb032537dc04134c0bfcc2d85327dba5be` |
| 10 | `theorem` | [map₂_eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-eq-none-iff.md) | 92 | `result-track:9d1c27a3334d5e608f2b117bb671a7639f86547f010edf941a306dc4a401d8c9` |
| 11 | `theorem` | [map₂_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-swap.md) | 96 | `result-track:6ff864d37c66fa2bc4ef77ddeda18609303542671c3b832a8dae39c30c483d33` |
| 12 | `theorem` | [map_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map.md) | 100 | `result-track:d89170532bb0b6d847d4876f7284d672479d2ea53b1a19a58fe8bca528a77f83` |
| 13 | `theorem` | [map₂_map_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-left.md) | 104 | `result-track:ff83e9a45f37a83bfdaa4e58ef41147d0b87fa8cb0ed4f68fc32c490c310df75` |
| 14 | `theorem` | [map₂_map_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-right.md) | 108 | `result-track:e01bc4ec7afaa57aa7998cc4b9b395e9298fd4dfb3e7d324c1c9545ce8c156e0` |
| 15 | `theorem` | [map₂_curry](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-curry.md) | 113 | `result-track:ca6def846cbdab8c9d3a990a10a6785fc660885ab560860e4fe27b01e9d7db87` |
| 16 | `theorem` | [map_uncurry](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-uncurry.md) | 118 | `result-track:8968fb7a4e35c5a18b7b8ed6a04fcef761a5d1de802c62a93c57651ea157bb46` |
| 17 | `theorem` | [map₂_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-assoc.md) | 131 | `result-track:bfff9b2dc12d4c7541cccb877b1bab0dd4162f3a7cb933c9b13fbb6cdce7eae3` |
| 18 | `theorem` | [map₂_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-comm.md) | 137 | `result-track:257dad2bf9dd5c7d701e7a0e8242ec703e01697311667fefb36fe26821cb2453` |
| 19 | `theorem` | [map₂_left_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-left-comm.md) | 141 | `result-track:b5c94c1206d8e411b083e2d8ea422dec71af7eba6aba14444488c7adaf61ab65` |
| 20 | `theorem` | [map₂_right_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-right-comm.md) | 147 | `result-track:7410e495810805e8c923b5bc0c6afeefeeefcaf0025ca4db72a621cd039fee89` |
| 21 | `theorem` | [map_map₂_distrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-distrib.md) | 153 | `result-track:f1ad6650cfd603faab5da379d472cb420999a086ea9b813275b279e879d1a646` |
| 22 | `theorem` | [map_map₂_distrib_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-distrib-left.md) | 165 | `result-track:641145c68009d7c83aeb5cadd184be1e16d3b96c4e819b6ae50037cf093f5771` |
| 23 | `theorem` | [map_map₂_distrib_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-distrib-right.md) | 171 | `result-track:e5a596a279bd9d417fbe282fd2c99fada3a3f5a1cf73fc999b479dc1b4d9a3d2` |
| 24 | `theorem` | [map₂_map_left_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-left-comm.md) | 177 | `result-track:0818b5d211c47b5288137fa25f9f30ba9efd0bb156c86cfbe133554aacce13b1` |
| 25 | `theorem` | [map_map₂_right_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-right-comm.md) | 183 | `result-track:fb4b9f3498e2300680c289d91708c36028b09f7b1bc7a7f01927a1b60061e51d` |
| 26 | `theorem` | [map_map₂_antidistrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-antidistrib.md) | 188 | `result-track:fb3c94da993ed5a84672ac8f53b1ea750cd13ecaf7d4e35e925cfa3f70635a9e` |
| 27 | `theorem` | [map_map₂_antidistrib_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-antidistrib-left.md) | 195 | `result-track:5873b496c394809ceb83544463f690abf9a7f10e17349941cbf62c476d335fc0` |
| 28 | `theorem` | [map_map₂_antidistrib_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-antidistrib-right.md) | 202 | `result-track:82c859e7904daba29d219de6b2bd1aa5bbb8c0561ba356d4bdc2fcb3dc69e663` |
| 29 | `theorem` | [map₂_map_left_anticomm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-left-anticomm.md) | 208 | `result-track:64bc5ff1d179a2fe8efd9daf15fbd2d664228951353ca63c685756b141d3bab7` |
| 30 | `theorem` | [map_map₂_right_anticomm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-map-right-anticomm.md) | 214 | `result-track:8b3e5a659d60bbc75828bb627c24386436cdab6eacaa5151d502fcfef8c22b67` |
| 31 | `lemma` | [map₂_left_identity](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-left-identity.md) | 221 | `result-track:76fc55e52458ce229c967794f7c9e74193be38afe70374bdb9be5e8161a1ff28` |
| 32 | `lemma` | [map₂_right_identity](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionNAryNAryNamespacedSourceEdition1.lean/declarations/map-right-identity.md) | 228 | `result-track:193eaa8cd376d1e00af9dded998600a40b4042e7caee14df4faa698b58857ad9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fe0e4653c28e2554aebff1f7dc866e65b53ba3272281519827b046007fd3b3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/NAry/Varianta820e7994b175c2b0e569e35f628f7a4e87bc563cd21ad39de4ca3ed8fa3cdcd.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/NAry/Varianta820e7994b175c2b0e569e35f628f7a4e87bc563cd21ad39de4ca3ed8fa3cdcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
