# Verification target: List Lex Namespaced Lex Cons Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0f075374b912b6c6c918d9cb065c9609944d6be",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant5a9d7e16937b724af87e478e001d95c655e8bd41e9bac97e0dcf54ecf46d4d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0f075374b912b6c6c918d9cb065c9609944d6be`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant5a9d7e16937b724af87e478e001d95c655e8bd41e9bac97e0dcf54ecf46d4d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant5a9d7e16937b724af87e478e001d95c655e8bd41e9bac97e0dcf54ecf46d4d55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelClasses` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lex_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/lex-cons-iff.md) | 46 | `result-track:f3f52005d2de802e1e39ca2015f770486752a60bf26f5d441cb5d951b407fb1c` |
| 2 | `theorem` | [lex_nil_or_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/lex-nil-or-eq-nil.md) | 52 | `result-track:8288271307b471cbfd3c022fc66e514f003ff7b9e367fdf6bf38c939f99f77f4` |
| 3 | `theorem` | [lex_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/lex-singleton-iff.md) | 60 | `result-track:5627ec0fbcf85aa02252fa99b30020fb2fca27e5b7d681b36cf79f2db6acae86` |
| 4 | `instance` | [isOrderConnected](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/isorderconnected.md) | 67 | `declaration-track:0ffe1d08735e7de584ec41ad07bb2b2e3736802c2154728cbf52a4e9218cdfe5` |
| 5 | `instance` | [isTrichotomous](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/istrichotomous.md) | 82 | `declaration-track:aa85fecded62409949eea0572c3624fbe29381fb54716407a4812e335b5ec8c1` |
| 6 | `instance` | [isAsymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/isasymm.md) | 95 | `declaration-track:18fcdc499eef9346e0bc631e416fc9f982903e2cad6ed5796430d5c4e528ae35` |
| 7 | `instance` | [decidableRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/decidablerel.md) | 103 | `declaration-track:0aac4667c5370d289ee64f8578488e0bc9d9b22889f5cac675f78d2b2c32cb56` |
| 8 | `theorem` | [append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/append-right.md) | 116 | `result-track:e709b70f48ae33230ee9809e362688537bfa9348cd19913010a0e4c877c63c40` |
| 9 | `theorem` | [append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/append-left.md) | 121 | `result-track:68a92800fd72361ddd5036e94cae09ce489d7ef0ece3a1ff3f07f74d76de4b71` |
| 10 | `theorem` | [imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/imp.md) | 125 | `result-track:f6fd93eddc02b1e55c6f59225d4aaea9a998daf15e112223b70ceb9204d6f355` |
| 11 | `theorem` | [to_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/to-ne.md) | 130 | `result-track:4c5a3268e196dc8401a53fbf912b4e92dbbeeae84564afec05af67c2203457ca` |
| 12 | `theorem` | [List Lex Namespaced Lex Cons Iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-le.md) | 134 | `result-track:1c3fd09c121ad709d90c8f2551ae8151c190a033d854a3a2f18e273460467080` |
| 13 | `theorem` | [ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/ne-iff.md) | 146 | `result-track:185e462043d813c92f0a89e0e2f696f5245e6efba74670b04447d1dfc8b42876` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/instance.md) | 152 | `declaration-track:1a5ad5bf96be7dc1e152a5dff846ce2e6a2419f8485f9104030dbde4d0f6eb7a` |
| 15 | `instance` | [LE'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/le.md) | 158 | `declaration-track:18179eb81b165753a806e8ac212ccbcd09306678d2b70ba5556e980eaae29665` |
| 16 | `theorem` | [lt_iff_lex_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/lt-iff-lex-lt.md) | 161 | `result-track:600c3a520adfe59db7f91df4a5a59fc35a8e697ef49ec7e55b351210c979de38` |
| 17 | `theorem` | [head_le_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/head-le-of-lt-source-edition-2.md) | 164 | `result-track:e9c2793bf720921b4ab7847a96fdb163400d2f43ee440dfaca794c370774476c` |
| 18 | `theorem` | [head!_le_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/head-le-of-lt.md) | 170 | `result-track:615afcf0c573e566346bb580098568b4fa22d3469b2e5e4f0c6720be7297e7e6` |
| 19 | `theorem` | [cons_le_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLexNamespacedLexConsIff.lean/declarations/cons-le-cons.md) | 178 | `result-track:658efd521d45ca91bfe0cf67bf45f1b07ba58dd737b070e4307c780001e8740f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=230f063ebf3b1460e0034afce3f7bc9f92ae5fc8b62dc05d26e84a10b385d890 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant5a9d7e16937b724af87e478e001d95c655e8bd41e9bac97e0dcf54ecf46d4d55.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant5a9d7e16937b724af87e478e001d95c655e8bd41e9bac97e0dcf54ecf46d4d55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
