# Verification target: Bisect Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c62ef9c4edd4c125ffb02b7b190676f2246ec85a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c62ef9c4edd4c125ffb02b7b190676f2246ec85a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [avg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/avg.md) | 23 | `declaration-track:bc6e9dfd7bff9ffe5f186a57580a8150a73cf9fc1cba52728d82253162d3e0f7` |
| 2 | `theorem` | [avg_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/avg-comm.md) | 25 | `result-track:596b13ef9ac2c8e5626dcf8126f76ab3b7a7a5bd8dade404b3a3ff1ef36e56a9` |
| 3 | `theorem` | [avg_le_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/avg-le-left.md) | 28 | `result-track:a53e25c2631550044ea0f77fbc9507f0183a51391b0bce86691f2e58b3ca666c` |
| 4 | `theorem` | [avg_le_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/avg-le-right.md) | 31 | `result-track:ffa7b625638238d0ad47151d38ba6f35731b463ccf4221bbecbabb2cd9d55e59` |
| 5 | `theorem` | [avg_lt_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/avg-lt-left.md) | 34 | `result-track:c74f30defdcf489802be1638e4785e379e079310e530622051458a3c0ee435dc` |
| 6 | `theorem` | [avg_lt_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/avg-lt-right.md) | 37 | `result-track:b973a6c0c00826a3e2ffe2064d3ed5c8b6b9daac7cbe853fd7e74663a06ddffe` |
| 7 | `theorem` | [le_avg_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/le-avg-left.md) | 40 | `result-track:5da9e65b45be065238a43c21d3bd1e1a69b77da8c800dd407f2b60a8467af6bc` |
| 8 | `theorem` | [le_avg_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/le-avg-right.md) | 43 | `result-track:1465db2ecec4b57b8b7138adbe79cc323e34e8830333e1f973715cfa5d1ca902` |
| 9 | `theorem` | [le_add_one_of_avg_eq_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/le-add-one-of-avg-eq-left.md) | 46 | `result-track:5d6da1980fef15b40d6406fd546d246a359e3bcbb2a0a6f25acc975aa539b2d4` |
| 10 | `theorem` | [le_add_one_of_avg_eq_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/le-add-one-of-avg-eq-right.md) | 55 | `result-track:1eab178fa1b5bf37445c6485815cb277c2cd8b99e2c53009cf31a1eee8461983` |
| 11 | `def` | [bisect](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/bisect.md) | 68 | `declaration-track:2e28e6ad6523fe630ff6025e97622bbdcbeda47a04c4c465ad4e5608a9c721d8` |
| 12 | `theorem` | [bisect_lt_stop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/bisect-lt-stop.md) | 79 | `result-track:75f4302889a125a768186ecd645aa397d6857f0e270d13f5df7eedaeda754d70` |
| 13 | `theorem` | [start_le_bisect](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/start-le-bisect.md) | 95 | `result-track:d23ac22d7833b504f814507bab4e3d58df8a6b1ec899f74d99462e78bfa7ab59` |
| 14 | `theorem` | [bisect_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/bisect-true.md) | 112 | `result-track:d40bcdcfb9d7becffee21181e7e282e407a857d3abb002a1960b2360f7268224` |
| 15 | `theorem` | [bisect_add_one_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BisectNamespacedPublic.lean/declarations/bisect-add-one-false.md) | 129 | `result-track:4809fb4ff94e98bdf780238970cde8fb45df74c7c82e2722aec98a6ff41d74fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47f4cd156ab15295093782c34f718d2e15a94644148969b50137263ea32dc085 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bisect/Variantf8b6e5392678dd7036978d259f10e34b58e691e3ee450706d085d6131cffbe37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
