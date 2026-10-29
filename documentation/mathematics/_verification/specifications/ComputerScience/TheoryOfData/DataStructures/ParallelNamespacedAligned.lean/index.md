# Verification target: Parallel Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b563c6ddd5afd3e7822f3389bd6f4cac4f1185af",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b563c6ddd5afd3e7822f3389bd6f4cac4f1185af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Seq.WSeq` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallel.aux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel-aux2.md) | 36 | `declaration-track:0e695d7fd40a85b2cd7518d1c8d1b8d2944733ba68b7dac20e04c44298a91b82` |
| 2 | `def` | [parallel.aux1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel-aux1.md) | 45 | `declaration-track:91c516a693f84b0c13551c03508e1d4017b2bc9df07de67f2b6ec2aec002fd4c` |
| 3 | `def` | [parallel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel.md) | 60 | `declaration-track:191591cc7885e1c861832d57d5024e332f43f96e894f3354ca39c4e69ee5454d` |
| 4 | `theorem` | [terminates_parallel.aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/terminates-parallel-aux.md) | 64 | `result-track:5515bd92db49562580d0011ebe072157a7eed4efd419578287f2650c4bad29b7` |
| 5 | `theorem` | [terminates_parallel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/terminates-parallel.md) | 137 | `result-track:ac5d6d09d605c6691c5cfa1d31fffa638bb219a01bded6e1504bb46d50d501ca` |
| 6 | `theorem` | [exists_of_mem_parallel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/exists-of-mem-parallel.md) | 212 | `result-track:e5fe37fa73b67f83a7bf2b0dc15b808a575c4c789fe1461127653c64b5758ba1` |
| 7 | `theorem` | [map_parallel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/map-parallel.md) | 292 | `result-track:860dfc6c3421a984aab1611a55f633fc08db45e4bab9e965be3168fbdef50018` |
| 8 | `theorem` | [parallel_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel-empty.md) | 322 | `result-track:6d912f5026680b3e2ae824df83b5c032a9fcda926f283f9eb4feb0cff8fc59b6` |
| 9 | `def` | [parallelRec](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallelrec.md) | 331 | `declaration-track:7b89d4a217bfdc0c89a518b642a3f826556d7410ae6ce776b975c0b04c424ab8` |
| 10 | `theorem` | [parallel_promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel-promises.md) | 365 | `result-track:c9b5bfe32b539b3ba6d5cbb2e43e21683ebfcb369d57eb2c59c1c04b9b3efd00` |
| 11 | `theorem` | [mem_parallel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/mem-parallel.md) | 371 | `result-track:45ad9355345b928225435121a06bea950c359c356bd9a96e10eaab0a973eea05` |
| 12 | `theorem` | [parallel_congr_lem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel-congr-lem.md) | 378 | `result-track:770d079d2bbf81519055021f2a03deb8e4c67baafe2aec33e945cd462091394c` |
| 13 | `theorem` | [parallel_congr_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel-congr-left.md) | 389 | `result-track:203ab38426312214aa976f37028dbcef214738260878d109ddf21870de98c062` |
| 14 | `theorem` | [parallel_congr_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ParallelNamespacedAligned.lean/declarations/parallel-congr-right.md) | 413 | `result-track:06b7688d2dd3131507c87e442bf3b1f4d8c6bfd1b725e58015ce7ba88fac1da3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3dff8dd7703d63f060e5e3c892988220eeff9d7bed3a6bbb14a8a882fa7c7ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
