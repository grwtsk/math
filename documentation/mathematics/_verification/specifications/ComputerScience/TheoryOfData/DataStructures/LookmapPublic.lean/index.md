# Verification target: Lookmap Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8cd889475560171c908108361a6bab478a74ad0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8cd889475560171c908108361a6bab478a74ad0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07.lean.json)

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
| 1 | `theorem` | [lookmap.go_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-go-append.md) | 21 | `result-track:df0cd457544866db06d03ef638e261f88b09fee86d03ebb9df70f1bcda1d0476` |
| 2 | `theorem` | [lookmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-nil.md) | 34 | `result-track:4159b78ac728efa52987d65a6b5af35ce6858fe939f531fd2b89c409d4c999d5` |
| 3 | `theorem` | [lookmap_cons_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-cons-none.md) | 38 | `result-track:a227ad81943eb855795b104d55774bf816950d9fda604dda19aed78cccb36c02` |
| 4 | `theorem` | [lookmap_cons_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-cons-some.md) | 44 | `result-track:1852cffb13bcb78f11cbb4977f577cf7f169a48086eed3fc050e5a485be22ad7` |
| 5 | `theorem` | [lookmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-cons.md) | 50 | `result-track:f6d2bbd82975242654942c74c77bd90dc7083dcd4877b9651a18975ad82d9948` |
| 6 | `theorem` | [lookmap_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-some.md) | 56 | `result-track:9984811b0fa739e5f0d68d3736e910dbc2cebd0fc1518db751333cbaeb395dda` |
| 7 | `theorem` | [lookmap_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-none.md) | 60 | `result-track:96295313d68b5c70406a0bb8a3db52cf70819d3cc0b6965cb4170cf2a9aed853` |
| 8 | `theorem` | [lookmap_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-congr.md) | 64 | `result-track:3fe2e0dc4a8cf29fb87e0e3b77e9008b7d69aa32a3c738522bccb792f03b2e2b` |
| 9 | `theorem` | [lookmap_of_forall_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-of-forall-not.md) | 73 | `result-track:a091947b986e89c19144fe5ffcfb2c7cc52c36955a6f2050373f05d658b7f322` |
| 10 | `theorem` | [lookmap_map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-map-eq.md) | 76 | `result-track:6ee59d2f69a1c764d86ca5da15dc37704c3b766fe0e26645a954849d714789df` |
| 11 | `theorem` | [lookmap_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/lookmap-id.md) | 84 | `result-track:6048b9f54807965673d44d0c29daea71f72f67fde90c1bcd6fea1852271c390d` |
| 12 | `theorem` | [length_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/length-lookmap.md) | 88 | `result-track:dc2d1b652311490791b9e29090fb5636b91466404f530627ccd28409933c5d7d` |
| 13 | `theorem` | [perm_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapPublic.lean/declarations/perm-lookmap.md) | 92 | `result-track:15b092bc8f5256fce0f39157aa05761ba970ab61f5091f1d437a0ef4ec718488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bcfc5ef74405edef32434d36d357ae37db767b0f099d6a46e56c4870ceae7b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
