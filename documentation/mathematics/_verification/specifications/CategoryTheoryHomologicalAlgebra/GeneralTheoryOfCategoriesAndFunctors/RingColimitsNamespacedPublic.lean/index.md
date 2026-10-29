# Verification target: Ring Colimits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83064d548eb81ab665c9ce286f3cbaeb88b1f673",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantfbcec730b1c34fe5d491080e1898eac223d50477ba479fce0a513806302159c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83064d548eb81ab665c9ce286f3cbaeb88b1f673`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantfbcec730b1c34fe5d491080e1898eac223d50477ba479fce0a513806302159c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantfbcec730b1c34fe5d491080e1898eac223d50477ba479fce0a513806302159c1.lean.json)

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
| 1 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/prequotient.md) | 51 | `declaration-track:b532e26d74bbbfa779cd43ee8067e503f5cbf3a53e261b2c9b0634c652cb2545` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/instance.md) | 61 | `declaration-track:34eab727729f31f4785749d022c488d9b17e6a7c711dbe361a3b3ad5052efaf2` |
| 3 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/relation-source-edition-2.md) | 70 | `declaration-track:633c36297ef4285580894e443898cf25daf92887c207884e4bee3f3cdfb27b62` |
| 4 | `instance` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimitsetoid-source-edition-2.md) | 109 | `declaration-track:7a7d20b817442f59985000c88bd85b4bdc4da7f3454a956987df100a8358094b` |
| 5 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-source-edition-2.md) | 115 | `declaration-track:a468efda53e7ea2dbdb7a0c423a91a6bdf118475f7c3358285550bc11cd56d27` |
| 6 | `instance` | [ColimitType.instZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-instzero.md) | 118 | `declaration-track:00b197b2e92d1ba54a2b9e797208a81e791627a5931dfefb276cab9a00174729` |
| 7 | `instance` | [ColimitType.instAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-instadd.md) | 120 | `declaration-track:9a7dbde058277ff8da5c45dd740c63ba346c89f3b803be9e7aa43a68badbdbfc` |
| 8 | `instance` | [ColimitType.instNeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-instneg-source-edition-2.md) | 124 | `declaration-track:d38bb65b6b4bf219cf6ca8fbdc7a618a08a89bb0190d1e57da22587127a261b4` |
| 9 | `instance` | [ColimitType.AddGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-addgroup-source-edition-2.md) | 127 | `declaration-track:f1fdfbf82e49cbfcdb01ccb656bdc4d3572b929b0e90ab0545e1e971541306ea` |
| 10 | `instance` | [InhabitedColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/inhabitedcolimittype-source-edition-2.md) | 137 | `declaration-track:90c6a54ec37225996032c1e51526965b6271432ebb89eb95774600b45adb2c8e` |
| 11 | `instance` | [ColimitType.AddGroupWithOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-addgroupwithone-source-edition-2.md) | 140 | `declaration-track:bf6fa69cd2bf904969460a8eff023b7237bce6880af2ed3d971609098ffe3c5c` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 143 | `declaration-track:db87d69b9505a1c3d60aa7a6ef06a189613deaa6e41c7be962f0373ae500032c` |
| 13 | `theorem` | [quot_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-zero.md) | 162 | `result-track:008ce76a2ef66461a4182dd98cbc30fc0b49ab05247bdb016199010e52d0122e` |
| 14 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-one-source-edition-2.md) | 166 | `result-track:eb06721aceeadc65ea4b33511bb2e16c3c1c21482a5968dae6486a932fb89224` |
| 15 | `theorem` | [quot_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-neg.md) | 170 | `result-track:02419a3eeb456af4c51f3f18c99ab4b7ccd9833c911d001f2b8aa3f518e65e01` |
| 16 | `theorem` | [quot_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-add-source-edition-2.md) | 175 | `result-track:e3d6e0288ec3cb182d6b58cf2297c3a86cc983863376f90391fedd3fbf65d73a` |
| 17 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-mul.md) | 181 | `result-track:13d16e98f92f5eb66e8fa1749679a79629952dce8ddef31f3f6935d5dd8feb56` |
| 18 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimit-source-edition-2.md) | 187 | `declaration-track:dafac7c3f6c9d35b1f8fb18408b4ca9ffdb54a54254c49e5131fef28a3ee087c` |
| 19 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/coconefun.md) | 191 | `declaration-track:42a05dbd638b89ee47a107fd5141312190a6cc0e9f24cf1929d76681d0cdb710` |
| 20 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/coconemorphism.md) | 196 | `declaration-track:81c74c5d3a368b96fbce98d970e0ec056e42920bab684605f853a95dbc31a269` |
| 21 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/cocone-naturality-source-edition-2.md) | 204 | `result-track:8ade244813ca4b54bac5f1b68d7adbb690600b6a45098005f50f96bed77b1b40` |
| 22 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/cocone-naturality-components.md) | 211 | `result-track:8f9a6ce4d686623ed34d5526742f0a5f9540593e89eccc2954f91c7d67d9e95f` |
| 23 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimitcocone.md) | 217 | `declaration-track:2bc711cb4cb55518f33d462bd536866fa0c6ca33fc6e95e3bdb65d7cb99a62da` |
| 24 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/descfunlift.md) | 224 | `declaration-track:4713f7f3b562eca745fe17b371bf78fa25c74a29ff27b0272260f350eebc3811` |
| 25 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/descfun.md) | 234 | `declaration-track:d813523f6877de23d07aca137833087eac339cb32424a6181038fff323c82c8a` |
| 26 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/descmorphism-source-edition-2.md) | 268 | `declaration-track:c4cc4ae9ee26f037ae1bd2b510af6e916481d53e137817beb9d3f863689c2315` |
| 27 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimitiscolimit-source-edition-2.md) | 281 | `declaration-track:fab8d44d4c9739d59006807eee04b199d30a807c4f35d0131b23902b3b0e5f94` |
| 28 | `instance` | [hasColimits_ringCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/hascolimits-ringcat.md) | 295 | `declaration-track:608f146d32c723f267751444f8e383d8c544726a35b5368e2548007d449f4273` |
| 29 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/prequotient-source-edition-2.md) | 347 | `declaration-track:dd92ef93b0eb99cb25ff9907b0eadadd048886ac6defc6103ed659a2b5a8d0ce` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 355 | `declaration-track:8b00ac091ee2348056acc36daed9d3a570d20a6094efbd78c47d219a3ab8c590` |
| 31 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/relation.md) | 364 | `declaration-track:571d1b640083434ef37fd051a5286b7e7e9706d908957e3724e4c19387b83901` |
| 32 | `instance` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimitsetoid.md) | 404 | `declaration-track:648666fe35aa75a46fceca58c1e939e82ee1a51c6fecbc602dd4f81ee9854441` |
| 33 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype.md) | 410 | `declaration-track:8f958304cbb6e6aeb46d6824d1d2963eafd0bfcabc62ff12e34008c5991f07d7` |
| 34 | `instance` | [ColimitType.instZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-instzero-source-edition-2.md) | 413 | `declaration-track:c01683388a70140b6d1ee3631158999e54ef6f48c834bca2542de33239a215d2` |
| 35 | `instance` | [ColimitType.instAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-instadd-source-edition-2.md) | 415 | `declaration-track:e63c9367b5274296463e50e57befbaac2237bb66169eb4927e552488458a312a` |
| 36 | `instance` | [ColimitType.instNeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-instneg.md) | 419 | `declaration-track:9691b6eeb49c39c69c9db5b6b0bfd694c0fd2989cfaf5be454db103c7c467774` |
| 37 | `instance` | [ColimitType.AddGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-addgroup.md) | 422 | `declaration-track:c3a758ef88ec90a11db7cfa4d0db7efe5e313f3dc07c8f5dbc8bbd479fbd2788` |
| 38 | `instance` | [InhabitedColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/inhabitedcolimittype.md) | 432 | `declaration-track:68ccb5829e2d396278390e461dff74f98b2de32afc2a128cec12d643ab092e1f` |
| 39 | `instance` | [ColimitType.AddGroupWithOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimittype-addgroupwithone.md) | 435 | `declaration-track:6bca97b511ba168756a4130a95ef91c5775c45ec93524e789d34847a02db80f2` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 438 | `declaration-track:729821d7bd2048645bc1439d9fa39e841f2b7e5df6f7b366eecbddad48b35f82` |
| 41 | `theorem` | [quot_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-zero-source-edition-2.md) | 458 | `result-track:274bdc430c2f5b07d6efc2d461cda03b57938e70027b836457670a2a13a35ced` |
| 42 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-one.md) | 462 | `result-track:2fae78dd464edfe3f0703b510f7d4786355442c9237dbbcfe5bb669f40c72402` |
| 43 | `theorem` | [quot_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-neg-source-edition-2.md) | 466 | `result-track:b8718aaf85301dbbce6d786609c863ab108953ee4e36a6e6b866e4a43b2e9dea` |
| 44 | `theorem` | [quot_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-add.md) | 473 | `result-track:55ee3c6fd2364d838ab8558db77c36aad25274e41ccc62e84747e04e49bf609e` |
| 45 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/quot-mul-source-edition-2.md) | 481 | `result-track:4473d9f5d6306d9300d822b29cd422c90d612327f3a9285aeee59468d3916522` |
| 46 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimit.md) | 487 | `declaration-track:4a9c3f7762b69872f9e35600667f8bd2f45ba6aac5ddb6ed78aa6dcf2f61602c` |
| 47 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/coconefun-source-edition-2.md) | 491 | `declaration-track:8aecc039cb93b9e2c0246e711d4d796e653c53d982fe5f98d3e325a50eb96855` |
| 48 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/coconemorphism-source-edition-2.md) | 496 | `declaration-track:a8994acfa693d28c71f72147068d57d1d6a0aacced3850400eaf30e152d331c6` |
| 49 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/cocone-naturality.md) | 504 | `result-track:3f257fcc7549e72c55e942f0afb50a53c3d99fcb1636f873fa23aa1f58c04497` |
| 50 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/cocone-naturality-components-source-edition-2.md) | 511 | `result-track:ad3daf69c3380ff5f7f0d919adea33e6147456ae4760c717f406cbe05c65aa43` |
| 51 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimitcocone-source-edition-2.md) | 517 | `declaration-track:bbfdcb7571808ca97a2fcaf1242f40aad459449efd2667dd99e53eaf366d03aa` |
| 52 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/descfunlift-source-edition-2.md) | 524 | `declaration-track:a3681fd05def4ad23ed4860952f79de55bab49c16d912a43b831d26d2fdfca03` |
| 53 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/descfun-source-edition-2.md) | 534 | `declaration-track:f791211090635677c130c5b36f75f612b6175c5bed9c142882d78d5027d9b135` |
| 54 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/descmorphism.md) | 569 | `declaration-track:b5dfd58e5262cd171f2fad43caa0226738a5cee831a43a2ee6e5264aa16bba0b` |
| 55 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/colimitiscolimit.md) | 582 | `declaration-track:508483036e19eedfba0e3d195e2cfd62cbe6e9ee846a38d427486ee8360f58ae` |
| 56 | `instance` | [hasColimits_commRingCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingColimitsNamespacedPublic.lean/declarations/hascolimits-commringcat.md) | 596 | `declaration-track:53ca6292254981074dbf1c16596b21573ccdcd72d7eadccdb5b108c83ea9a174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32664e486103fab3b7acecd629544b6dcce0df91b3e01364f191e085696cfe9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantfbcec730b1c34fe5d491080e1898eac223d50477ba479fce0a513806302159c1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantfbcec730b1c34fe5d491080e1898eac223d50477ba479fce0a513806302159c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
