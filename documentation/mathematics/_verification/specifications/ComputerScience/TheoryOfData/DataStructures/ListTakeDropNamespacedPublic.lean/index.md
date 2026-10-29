# Verification target: List Take Drop Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "548075856c3ee4895b662e30ae433625aa4963b6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc0b1ac49ffb6709689995e3da3fde2716a487841f86b82d8fd83a58ab4cd480c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `548075856c3ee4895b662e30ae433625aa4963b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc0b1ac49ffb6709689995e3da3fde2716a487841f86b82d8fd83a58ab4cd480c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc0b1ac49ffb6709689995e3da3fde2716a487841f86b82d8fd83a58ab4cd480c.lean.json)

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
| 1 | `theorem` | [take_one_drop_eq_of_lt_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/take-one-drop-eq-of-lt-length.md) | 45 | `result-track:fafbc071942263e76753930e2ed451ac848d68b2b230527760a9fca14bfec658` |
| 2 | `lemma` | [take_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/take-eq-self-iff.md) | 50 | `result-track:aa095290c12e774467d02409dd1ef1937f63949444a42a070e3177150523107d` |
| 3 | `lemma` | [take_self_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/take-self-eq-iff.md) | 53 | `result-track:54bd10c09891df3075c46e8333e92c3542accb621acab7d09050cb8fba41c92d` |
| 4 | `lemma` | [take_eq_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/take-eq-left-iff.md) | 56 | `result-track:0a9ccff0bea36954c48a6dd0ed49853e0c469f8dc7d1d3a31192e1c4246e563b` |
| 5 | `lemma` | [left_eq_take_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/left-eq-take-iff.md) | 60 | `result-track:d8b5213ba63f79ce847178aa9304c2947572590538cfc3cce90a66b329e944c4` |
| 6 | `lemma` | [drop_take_append_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/drop-take-append-drop-source-edition-2.md) | 64 | `result-track:60490ab37cd964d71f1b83e94ff6cb5afddaa231d659e1a48220dc6de939e6a0` |
| 7 | `lemma` | [drop_take_append_drop'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/drop-take-append-drop.md) | 68 | `result-track:3862a504c732b4c3d0729a3dca83742467120ed0f15c51dd8784037a0948d0e4` |
| 8 | `lemma` | [take_concat_get'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/take-concat-get.md) | 72 | `result-track:c6c4f33fd17b7e2fc6d28af0c251ed21a483594d7cecfd74750403485592f5a9` |
| 9 | `theorem` | [cons_getElem_drop_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/cons-getelem-drop-succ.md) | 75 | `result-track:b724cb2daf4f5d706595da9c8b1a431166a858e55d24ef8e2089f09b9fdedd2c` |
| 10 | `theorem` | [cons_get_drop_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/cons-get-drop-succ.md) | 79 | `result-track:b7ee24441e9e80c34ea78c8ae3e92604b5af88d055ffb953dcd3e4743b08c448` |
| 11 | `lemma` | [drop_length_sub_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/drop-length-sub-one.md) | 83 | `result-track:0285b0ceec3db2ca85e087464730d254882c4c7a3cade09bae6f76e95fff040c` |
| 12 | `theorem` | [tail_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/tail-iterate.md) | 93 | `result-track:dff4801db121b4b77496b2f1440162503415a42bf2f5477d558b22176a309a65` |
| 13 | `theorem` | [tail_take_eq_take_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/tail-take-eq-take-tail.md) | 102 | `result-track:2bb7df0f7da2e6998de2880de43788edc1f93127b2c5055613b36fd9c7c0d1ae` |
| 14 | `theorem` | [dropLast_take_eq_take_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/droplast-take-eq-take-droplast.md) | 106 | `result-track:0057658fa8740e9433d065c6c6cae8c428beda175acb3523dcd75121a44974be` |
| 15 | `theorem` | [tail_drop_eq_drop_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/tail-drop-eq-drop-tail.md) | 110 | `result-track:9861a4c0f3859d244dd98bc6c7425ca90bbdec9556309cfa27cdffc351284669` |
| 16 | `theorem` | [dropLast_drop_eq_drop_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/droplast-drop-eq-drop-droplast.md) | 114 | `result-track:4ca63748a6d884ae833f8774ddc722efa184b803279f3eea404f9b5cdc0541f1` |
| 17 | `theorem` | [takeI_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/takei-length.md) | 125 | `result-track:a0bc899269670eb8be5adc1618d21012b85ab729d4247697097d015be10e4a10` |
| 18 | `theorem` | [takeI_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/takei-nil.md) | 130 | `result-track:0db9e4375b687def8cea7765df8c1f29364147a15b690b04616b9213ae5513c7` |
| 19 | `theorem` | [takeI_eq_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/takei-eq-take.md) | 134 | `result-track:9549fae873b901f48b6aa2e8d5b17d56dd9e1207ae0a00a3dbe69b87a0160123` |
| 20 | `theorem` | [takeI_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/takei-left-source-edition-2.md) | 139 | `result-track:670f7bad8f382ff3078e4e6b37983cd0241be5cf88c4527860be0ef427311a4c` |
| 21 | `theorem` | [takeI_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/takei-left.md) | 142 | `result-track:5ce918581b2aac23eb63ab0c61d808679edcb5989b91ebab378b5b72e81fd538` |
| 22 | `theorem` | [takeD_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/taked-length.md) | 151 | `result-track:418a23e383143f4879c9b916580e04ddca445a656632dfb9b327dd523722c766` |
| 23 | `theorem` | [takeD_eq_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/taked-eq-take.md) | 157 | `result-track:ed342521b295199cd06494d47decd8d10ceb3a8c6a7d725345565f27f1d507c6` |
| 24 | `theorem` | [takeD_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/taked-left-source-edition-2.md) | 162 | `result-track:b8e9ee8d9a58e64da86a1acf61576e30b32aaf599f4d0c0e53761fed4f4f5843` |
| 25 | `theorem` | [takeD_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/taked-left.md) | 165 | `result-track:18be57d8c156cd2d71e29a9c6cbdff1763a3ce8ba2383d863e49e2de922e63a6` |
| 26 | `theorem` | [span.loop_eq_take_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/span-loop-eq-take-drop.md) | 178 | `result-track:1bec847d1209f19f981eeb5517dc46deb76254d6ee3784b2d9117434dca468ab` |
| 27 | `theorem` | [span_eq_takeWhile_dropWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/span-eq-takewhile-dropwhile.md) | 185 | `result-track:e169e73ed49f5c4ff0399b1bdc1db84211c0b3ffdb3d46dad8c1b0415b72b643` |
| 28 | `theorem` | [dropSlice_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/dropslice-eq.md) | 192 | `result-track:ce733f7124ffafd7b5438ef1cf6ff752a687b02736376ed9e79327542ff24b3e` |
| 29 | `theorem` | [length_dropSlice](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/length-dropslice.md) | 196 | `result-track:dc24337472f2dee7b10a04f9cb294cec4e86967f503de17a7966c45a21e682fd` |
| 30 | `theorem` | [length_dropSlice_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/declarations/length-dropslice-lt.md) | 200 | `result-track:9a20db0a9a1dab41b2bc8935419d771e1a1a8e051ab3b77307109e32ef96561f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6e87bbbbfbd18e8f6be33a7ad2a3d2d0db6fe0708beb4d140e4f03ac5a2394b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc0b1ac49ffb6709689995e3da3fde2716a487841f86b82d8fd83a58ab4cd480c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc0b1ac49ffb6709689995e3da3fde2716a487841f86b82d8fd83a58ab4cd480c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
