# Verification target: Equal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "191cf737b69fc6d54dadf1665f08fe588dfe329a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `191cf737b69fc6d54dadf1665f08fe588dfe329a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a.lean.json)

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
| 1 | `theorem` | [Bool.not_beq_not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bool-not-beq-not.md) | 21 | `result-track:d3cb3ba67ba0bcdd4b3c1d264148ec646637ae3a96c5e547ccc8d59acae45e56` |
| 2 | `theorem` | [BitVec.not_beq_not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-not-beq-not.md) | 25 | `result-track:7e7ca22fcb5bd6cd44f876bb7f9be2377df68851cc42775154c459a6e6d9ccdd` |
| 3 | `theorem` | [BitVec.xor_beq_zero_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-xor-beq-zero-iff.md) | 30 | `result-track:2a6f6ce08fccb9caa029fb6f80272c23194293bf69c1a5c4a90a434779a679c4` |
| 4 | `theorem` | [BitVec.zero_beq_xor_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-zero-beq-xor-iff.md) | 35 | `result-track:c788de74f60e9f6237328a4ec8558f2c2ee95e1a4de886c0a675fb1b7fc22554` |
| 5 | `theorem` | [BitVec.and_eq_allOnes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-and-eq-allones.md) | 40 | `result-track:1e8bb6a45d213e9b97d52ebd89822e5c09bfb6eb813a093ad17b92596416d9f4` |
| 6 | `theorem` | [BitVec.allOnes_eq_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-allones-eq-and.md) | 44 | `result-track:ffe7049f393fe45407a652e04cfdb67f12f052126a72f4d277faf11e54b7c275` |
| 7 | `theorem` | [BitVec.xor_left_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-xor-left-inj.md) | 49 | `result-track:6ce49b06cc3eca89409caa7c5b8e9a50f0c15ebe498256cdd7a56b1e473dd44c` |
| 8 | `theorem` | [BitVec.xor_left_inj'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-xor-left-inj-source-edition-2.md) | 54 | `result-track:818ac6673edd3ccd9f269be303132580520e9a46a88b5af68e76d6a426b9bffc` |
| 9 | `theorem` | [BitVec.xor_right_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-xor-right-inj-source-edition-2.md) | 59 | `result-track:e4de85c8dcd960c4b6bc010f1064193dc097151ca0c3de70bb2eb72110977056` |
| 10 | `theorem` | [BitVec.xor_right_inj'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-xor-right-inj.md) | 64 | `result-track:63a989393e7be86f986281340f2131438d3f39c12b1e63b07d8f25e72288a34d` |
| 11 | `theorem` | [BitVec.add_left_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-add-left-inj-source-edition-2.md) | 68 | `result-track:fb08e0d5a34b57e4409130a384c7cc162adf7b8a0d47c5b20c6a55e86f26168c` |
| 12 | `theorem` | [BitVec.add_left_inj'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-add-left-inj.md) | 72 | `result-track:9b5397f1482f3b464fa89201e0fccd6119b640801c1335a1856d78acd80a9ee5` |
| 13 | `theorem` | [BitVec.add_right_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-add-right-inj-source-edition-2.md) | 75 | `result-track:1abfd95f2f47ff3716b92336035059ebb5ffb4c990f2f8e7680753e76dc00f95` |
| 14 | `theorem` | [BitVec.add_right_inj'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-add-right-inj.md) | 79 | `result-track:18c941444ff1346f3801aa2014e92cba35b54896fb5502324b22888d8b759472` |
| 15 | `theorem` | [BitVec.add_left_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-add-left-eq-self.md) | 82 | `result-track:f5a07f914481a8f419931ee11bea7108398dfb2c4b9d623666423982db7d79df` |
| 16 | `theorem` | [BitVec.add_right_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-add-right-eq-self.md) | 86 | `result-track:878e734d8ef734854fb2ccbe2e7feb45224a0cd6eb66201d96357978ac8d5ae5` |
| 17 | `theorem` | [BitVec.self_eq_add_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-self-eq-add-right.md) | 90 | `result-track:5a1d1b1ddd057395c4bb1b72d84d45f6249a69e80f5635accfcb35e04a4b462a` |
| 18 | `theorem` | [BitVec.self_eq_add_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-self-eq-add-left.md) | 94 | `result-track:bc70856a41afe16b06a31a70670e84ff4ba91a0088d5e38d587d8358d6586d73` |
| 19 | `theorem` | [BitVec.eq_sub_iff_add_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-eq-sub-iff-add-eq.md) | 99 | `result-track:ae969ae113da587dfe3a5ac22e5f4ee01234ee08867210c294c356e576e3f056` |
| 20 | `theorem` | [BitVec.eq_neg_add_iff_add_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-eq-neg-add-iff-add-eq.md) | 104 | `result-track:5ebcd5df99d564aff494e61752de7eec60e6f66039f07e7e9a9333ac0d7425fc` |
| 21 | `theorem` | [BitVec.sub_eq_iff_eq_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-sub-eq-iff-eq-add.md) | 109 | `result-track:6dd35476ddece3e60ddbc1b9e8c82609a434cf118fe2ba4239698228997a8954` |
| 22 | `theorem` | [BitVec.neg_add_eq_iff_eq_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-neg-add-eq-iff-eq-add.md) | 114 | `result-track:c728d69d00800cfbf37fb042701c9f5b681f509de7414fa8b69f87c0e45e57bd` |
| 23 | `theorem` | [Bool.bif_eq_bif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bool-bif-eq-bif-source-edition-2.md) | 119 | `result-track:82d175c78c3af03254ac9e2ddfc514d2f0e507087688f1732125100891d59c64` |
| 24 | `theorem` | [Bool.not_bif_eq_bif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bool-not-bif-eq-bif.md) | 124 | `result-track:378adcf859ee8594bb7f71f59265d67cb48428698f117c9b63fefd052840561c` |
| 25 | `theorem` | [Bool.bif_eq_not_bif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bool-bif-eq-not-bif-source-edition-2.md) | 129 | `result-track:9ce1570389373a2f10a17e2b1bb5ee54d6ec778e1f1c07cd430be9acc86be04f` |
| 26 | `theorem` | [Bool.bif_eq_bif'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bool-bif-eq-bif.md) | 134 | `result-track:3b022758d60e9b5235aa4217dd922502ded05c7f2fc6d18eaa3539c1b095ff7b` |
| 27 | `theorem` | [Bool.not_bif_eq_bif'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bool-not-bif-eq-bif-source-edition-2.md) | 139 | `result-track:a49182cffb3b2d6b102a47539199ab7802e204c20080ced19faf4c8e3a994e60` |
| 28 | `theorem` | [Bool.bif_eq_not_bif'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bool-bif-eq-not-bif.md) | 144 | `result-track:5656ed066433da47a22550d123b68937c1a11113bb058206679c0184a8d2d4d2` |
| 29 | `theorem` | [BitVec.bif_eq_bif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-bif-eq-bif.md) | 149 | `result-track:ba0f92b9a2cd489e1c3dfe582b5cddb0f9b2166b2cc4d0941a4d45914926603d` |
| 30 | `theorem` | [BitVec.not_bif_eq_bif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-not-bif-eq-bif-source-edition-2.md) | 154 | `result-track:f9466e1314e9101d9775d425da21f0d88d7d05b5161ff95d67a9a9e31127d9cd` |
| 31 | `theorem` | [BitVec.bif_eq_not_bif](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-bif-eq-not-bif.md) | 159 | `result-track:7e27d13ec00d44268f868bb334f900de5e43a6c63a2cae319639174ffd2876e8` |
| 32 | `theorem` | [BitVec.bif_eq_bif'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-bif-eq-bif-source-edition-2.md) | 164 | `result-track:e097e015f1241d8d82cd0ac7b0954ed68a082c18dd60d513b45bdb1ab257e3e4` |
| 33 | `theorem` | [BitVec.not_bif_eq_bif'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-not-bif-eq-bif.md) | 169 | `result-track:d0903db85632facb7c8e0db920ee731d9c0d9011df011865428dccba4bc1aeda` |
| 34 | `theorem` | [BitVec.bif_eq_not_bif'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-bif-eq-not-bif-source-edition-2.md) | 174 | `result-track:b5a2bef10971d5154dc990a68dd6801dbae6f21c32aae06eb930dbb66696ad05` |
| 35 | `theorem` | [BitVec.not_eq_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-not-eq-comm-source-edition-2.md) | 179 | `result-track:ee0b04133cee5ac9af095da3e4aaa623d2af8d6025e546507148e40d970a77c8` |
| 36 | `theorem` | [BitVec.not_eq_comm'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EqualPublic.lean/declarations/bitvec-not-eq-comm.md) | 184 | `result-track:159760cf04b277df938416632947303d5e5cc82f3aa44daddfd1cf3e1582133f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1db5c23be735ac9d0a96f2254ce917cd4e6fe7bb1e210745096f3576295b7dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equal/Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
