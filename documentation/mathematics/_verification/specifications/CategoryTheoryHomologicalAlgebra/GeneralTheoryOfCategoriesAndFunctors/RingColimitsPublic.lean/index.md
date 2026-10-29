# Verification target: Ring Colimits Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31092bcece65090d2a8e1b39694c69ba382d1402",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31092bcece65090d2a8e1b39694c69ba382d1402`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean.json)

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
| 1 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/prequotient.md) | 43 | `declaration-track:0ae6b3b5e381fe622b048ba462f16fb400242bfe7a1a540b7fd1105459915454` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/instance-source-edition-3.md) | 53 | `declaration-track:623e29a047dd7feb1318370d5f99da0339414aa771f8962463dc32e767d0bb33` |
| 3 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/relation.md) | 62 | `declaration-track:8926f066b287b68a3d963c03ca159d134518f7427ad0018dc46d19c972d65ec9` |
| 4 | `instance` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimitsetoid.md) | 101 | `declaration-track:33e270bdbd4e147a0e1845be8e3d84b0077e2a7c2ef091ba4a69d262a7390705` |
| 5 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype.md) | 107 | `declaration-track:5d37e44da16a8aec544c11c868cc9a294379ebfabd466aa793f9a500e8361de3` |
| 6 | `instance` | [ColimitType.instZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-instzero.md) | 110 | `declaration-track:15b716945997c64f8400883af03c13320628c698a03ef0f0fed576e68b2122e7` |
| 7 | `instance` | [ColimitType.instAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-instadd.md) | 112 | `declaration-track:0cdfb36edcb03215a73039009ec19cc4ea9499ff88356ebc639269479ebea802` |
| 8 | `instance` | [ColimitType.instNeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-instneg.md) | 116 | `declaration-track:1a2d6712a51e8dcaa54695d0dd6a986f7bc856d4f3616fabbaacbb725fe694ec` |
| 9 | `instance` | [ColimitType.AddGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-addgroup-source-edition-2.md) | 119 | `declaration-track:33c54110ae39dea612b4540919110f18dc813f4db55372f10b104df7abc64b1a` |
| 10 | `instance` | [InhabitedColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/inhabitedcolimittype.md) | 129 | `declaration-track:69e5879b7755008e7a455337cebe2534cc803e92530c137b34ec26db4dd67f8c` |
| 11 | `instance` | [ColimitType.AddGroupWithOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-addgroupwithone-source-edition-2.md) | 132 | `declaration-track:b805368637c916a48e715d7f0d979a0b5d58bbc91f0921a452a2e10b3875092e` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/instance-source-edition-4.md) | 135 | `declaration-track:f6fcd5126660295e87547dcca1589ec46b4ef97f92c9f68268763efbbaef53b5` |
| 13 | `theorem` | [quot_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-zero-source-edition-2.md) | 154 | `result-track:9b685cf79d6c8459e6c628039455cc789878f2ffbebbc4d76ef6aad8ecbc99aa` |
| 14 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-one.md) | 158 | `result-track:1df6ff6f96456b80e1f23a0dbd4ea62a1c45cb53dfbf565de6bdb631f0ecba26` |
| 15 | `theorem` | [quot_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-neg.md) | 162 | `result-track:a8ef23a45a141046760c5c47e5f951b1d0ab94fc7cb52ade7354f553982cee88` |
| 16 | `theorem` | [quot_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-add.md) | 167 | `result-track:7618d4f5cdb74f00f53666e692a71395ff326fcefef3c6d6a5f421cb189ec8e2` |
| 17 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-mul.md) | 173 | `result-track:c19ca44045970724568dac973d2e768217b46384ff23032737b80bbec4978078` |
| 18 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimit-source-edition-2.md) | 179 | `declaration-track:2f36a791e778a5c831ce6382e20d484b8c204c731b6ad1e260f929b9254c06c5` |
| 19 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/coconefun-source-edition-2.md) | 183 | `declaration-track:f1074465ebe937a19c8e5948c86200517c86fa98425b744b3e7dc24143e22e75` |
| 20 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/coconemorphism.md) | 188 | `declaration-track:6e0e06367af8b1007609587e062cf9a39bcd4eee3878886bfd58028915b107ec` |
| 21 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/cocone-naturality-source-edition-2.md) | 196 | `result-track:650f5f64c1ff963f6c7f93aa9908fe9a393074d10a54de8f9944f7f3e5194b06` |
| 22 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/cocone-naturality-components-source-edition-2.md) | 203 | `result-track:c5d4f8be3e96935138623e725a94626a2e5cda752ead70763484dffb56471b32` |
| 23 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimitcocone.md) | 209 | `declaration-track:be2409afe094b345af619f3621ba3c6d07d9499dd62a35205f94e8901776a6c3` |
| 24 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/descfunlift.md) | 216 | `declaration-track:9e2744a70b32da60503b2af1da1b9356a57452fff66df6da97b9249403f84071` |
| 25 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/descfun.md) | 226 | `declaration-track:23e5f5237afaaf5ebc228d2bdd20a276e3a790c4faefa4c54f4e5501720b4c4d` |
| 26 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/descmorphism.md) | 260 | `declaration-track:c7768a193d1ccb71431d48b229688d2f1d25933a5f05b1f75e4295418f25599e` |
| 27 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimitiscolimit.md) | 273 | `declaration-track:cf9f71f9987bfbf7b4080683df70bd84dbd50c3f0edf1622d7b1cc57ebf18041` |
| 28 | `instance` | [hasColimits_ringCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/hascolimits-ringcat.md) | 287 | `declaration-track:12f099c8b76820ba72eb557d611486d7ee3a3966def838e8fcbe81be897ef202` |
| 29 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/prequotient-source-edition-2.md) | 339 | `declaration-track:2b035333bcacf986cf4584ccd440014678c74eec32a80313edf6411b6db89425` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/instance-source-edition-2.md) | 347 | `declaration-track:4101d406ec40452661b810014b590c8e6447ed945ceeb6512b376870c49f781c` |
| 31 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/relation-source-edition-2.md) | 356 | `declaration-track:a9b32c1423f2b90cb5720f7b8788c90611b91fd453dd9a5296480b820e3ae245` |
| 32 | `instance` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimitsetoid-source-edition-2.md) | 396 | `declaration-track:bfd555846dcf22f6c77538e5e27d61fbfddf7537f835c945269172555807ac7a` |
| 33 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-source-edition-2.md) | 402 | `declaration-track:bbf6ac0f2c6d58b532fd025e4a922567638d0b5a7405549df8475d3bf8833a41` |
| 34 | `instance` | [ColimitType.instZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-instzero-source-edition-2.md) | 405 | `declaration-track:eda2ae816db1ad2732c8fa515188b0e90fd3598ad2decca693de2f745db6238b` |
| 35 | `instance` | [ColimitType.instAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-instadd-source-edition-2.md) | 407 | `declaration-track:aafb23b1628674bc67ad6a1f321c2016231a2da753576ccb77ff69a81891d6dd` |
| 36 | `instance` | [ColimitType.instNeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-instneg-source-edition-2.md) | 411 | `declaration-track:ca2b23d35920cc1f7653fa35b3991fde6a0c8594eda43358530bb35da711860f` |
| 37 | `instance` | [ColimitType.AddGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-addgroup.md) | 414 | `declaration-track:090a186f21f07cbb50f4f5dcdc9be64078b033cece14172c9fc649558fa23b43` |
| 38 | `instance` | [InhabitedColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/inhabitedcolimittype-source-edition-2.md) | 424 | `declaration-track:9ac9904b3a6304aa5f3bab4da8df638b65ea32117d96a7ec6301f39dff7eabfc` |
| 39 | `instance` | [ColimitType.AddGroupWithOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimittype-addgroupwithone.md) | 427 | `declaration-track:4d3447fbd2216d3e1bc3dd916803b5bee494b6b16b9c21a17c190b49115b171d` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/instance.md) | 430 | `declaration-track:34cc0cc70bf8f88558531f83f4121e44bf5fe8a7906be00701b76f66a84954bd` |
| 41 | `theorem` | [quot_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-zero.md) | 450 | `result-track:54daab3e18c82f6171c19991a775e66fec9be5b1bb4342a3b66ebe1dc337991a` |
| 42 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-one-source-edition-2.md) | 454 | `result-track:943fcb28e45761b5e5a4509c182f1e916c56c9fe5a057d852dd70efa50eb8e7b` |
| 43 | `theorem` | [quot_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-neg-source-edition-2.md) | 458 | `result-track:f2d9871906134f7973f20e342effabb1f4041684a38d50dbd6054b87082099ca` |
| 44 | `theorem` | [quot_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-add-source-edition-2.md) | 465 | `result-track:f7692a15fc9fa376c9ca7f85919db6ae2eb6790b7d77c4d29583cd7515ee6bd5` |
| 45 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/quot-mul-source-edition-2.md) | 473 | `result-track:d4b1e58879d85afb22eeab63507d710db5eeeb055404a7a57594b384c5a1726e` |
| 46 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimit.md) | 479 | `declaration-track:1964250008f50e4b9a8562d06e2eb1c890b0835c2bdbbd1cfbf2bbe0ab2c16f3` |
| 47 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/coconefun.md) | 483 | `declaration-track:3919c5715954727a9268ea5acfec768d9d99344f4b131698c25fd9eca2d08080` |
| 48 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/coconemorphism-source-edition-2.md) | 488 | `declaration-track:fab97bf4efd20d42736965174ca3e5b2537b9d845e50e7234f570ebeb8d165c6` |
| 49 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/cocone-naturality.md) | 496 | `result-track:251b8455fe778cceeaee60eec043313dcc2e7c880765720c84ded30abf26ae59` |
| 50 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/cocone-naturality-components.md) | 503 | `result-track:a28ecf5da90ce9703b8ef94b1a660ba53fa1f769f74963d13a60a36acb5aab59` |
| 51 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimitcocone-source-edition-2.md) | 509 | `declaration-track:e0e1aaae5085cfed0a870e5e09a17477739830e7f2041da8e56abe6b12663cc0` |
| 52 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/descfunlift-source-edition-2.md) | 516 | `declaration-track:c424ff03d0956835694934c238c16192c917f7723b362b17176294b1a8fd58c6` |
| 53 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/descfun-source-edition-2.md) | 526 | `declaration-track:fb104ef785b2b3844e48f885fb8f2531f259aa54f22fa3ca3a71181b903a8194` |
| 54 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/descmorphism-source-edition-2.md) | 561 | `declaration-track:de4e6cf29009355eb14bf656cabe8f72652bc8f9387a11daf92ef4dac1691db0` |
| 55 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/colimitiscolimit-source-edition-2.md) | 574 | `declaration-track:d9f9e8fd70c596cadaf578eaec1fb9a43dddcc848aaa078cf1cb421251a550ce` |
| 56 | `instance` | [hasColimits_commRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsPublic.lean/declarations/hascolimits-commringcat.md) | 588 | `declaration-track:0062107d2b793ac098d728b8933e2b2dc171f9539fc54f867641b63fe6bcfa10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc30cecfd8a33185f9ee96455a30f580447d29ea4a502d8073d349802062f262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
