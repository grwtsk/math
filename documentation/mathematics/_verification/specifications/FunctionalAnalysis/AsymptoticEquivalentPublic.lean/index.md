# Verification target: Asymptotic Equivalent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65a10717f7602d2d07809c67a3ce7d3c260caf83",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65a10717f7602d2d07809c67a3ce7d3c260caf83`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent.md) | 76 | `declaration-track:5fbef0c783e43538e4691d92d68884ec4f7c6a9bc340aa84d5aabcf42ba21858` |
| 2 | `theorem` | [IsEquivalent.isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-islittleo.md) | 81 | `result-track:4009dede2bf07171221357afab21a0df8b42aa6f8e926fc0751716db5fa7c215` |
| 3 | `theorem` | [IsEquivalent.isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-isbigo.md) | 83 | `result-track:7d4143b4c72c5a441718a2b22b41b75849877f5a372ff6dbc04a494103a47f87` |
| 4 | `theorem` | [IsEquivalent.isBigO_symm](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-isbigo-symm.md) | 86 | `result-track:e183359d8a3967048f39de4d8f7fce03253ff73f0a3c588293618bc1757bba20` |
| 5 | `theorem` | [IsEquivalent.isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-istheta.md) | 90 | `result-track:e20ae8c5a066ab95d412406a41b00bfb5f6bc9be7b44d6fe176003558f5aee00` |
| 6 | `theorem` | [IsEquivalent.isTheta_symm](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-istheta-symm.md) | 93 | `result-track:554c78dc8faffae54162ff1f2060b40390d940c5ba360284e5f8924fbce03776` |
| 7 | `theorem` | [IsEquivalent.refl](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-refl.md) | 97 | `result-track:d54c33b3f2e1737c4d0a0c3b2da70ed6cf9a4ffe243d1419ef1071a8e7ee68f8` |
| 8 | `theorem` | [IsEquivalent.symm](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-symm.md) | 102 | `result-track:6e60e8212a8889f3bdb9d2312526197b65d41afd57331c14e7c5caa0fedc46b7` |
| 9 | `theorem` | [IsEquivalent.trans](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-trans.md) | 106 | `result-track:af5f5043fe79e1797896fe7522bba370a40711aae5319f6ad82f8bb1be809fbe` |
| 10 | `theorem` | [IsEquivalent.congr_left](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-congr-left.md) | 110 | `result-track:2882373a1ec4c14230257f93747c7fc3fe6d25c742c7a63ec9741bdde5d8173a` |
| 11 | `theorem` | [IsEquivalent.congr_right](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-congr-right.md) | 114 | `result-track:b134add128034feee908ad64f2fef217a7e329b21131fee108f3410131b99545` |
| 12 | `theorem` | [isEquivalent_zero_iff_eventually_zero](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-zero-iff-eventually-zero.md) | 118 | `result-track:a4d999bb837f39ec8c99f099826d983f142d687a70fa54037026ce658dfe188f` |
| 13 | `theorem` | [isEquivalent_zero_iff_isBigO_zero](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-zero-iff-isbigo-zero.md) | 122 | `result-track:966d2c543ddc05db731ae4f7ab3a8b24bde56d36dc444d0593337179e6083a88` |
| 14 | `theorem` | [isEquivalent_const_iff_tendsto](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-const-iff-tendsto.md) | 127 | `result-track:94c389ff0b4ea7037ed3a5847a124cb24a7bd83442a2c7cabba61150593a91c8` |
| 15 | `theorem` | [IsEquivalent.tendsto_const](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-tendsto-const.md) | 137 | `result-track:b0a4eaa230ae1c24ff973f77c49805d6a985e881ef449d5df2b07c5095ff6b9a` |
| 16 | `theorem` | [IsEquivalent.tendsto_nhds](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-tendsto-nhds.md) | 142 | `result-track:b48b61fed5931f65650064d6b3cd82e55d23d5e766060323bf6e9be58548b4f4` |
| 17 | `theorem` | [IsEquivalent.tendsto_nhds_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-tendsto-nhds-iff.md) | 151 | `result-track:3646fd447477da072f09827c6ef4ada064af59d9c4b8fb8af90224e0df1bcf8a` |
| 18 | `theorem` | [IsEquivalent.add_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-add-islittleo.md) | 155 | `result-track:cb5ee590af61baa039fded5e5a084e83d6195d8e6b5131f438ed5b755a82d392` |
| 19 | `theorem` | [IsEquivalent.sub_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-sub-islittleo.md) | 158 | `result-track:f2deb753bae381ed5290f8cd520ba1f69e38b97e312fe5690bb08b380aa19528` |
| 20 | `theorem` | [IsLittleO.add_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/islittleo-add-isequivalent.md) | 161 | `result-track:ff17ea29b22b57fb45f1cdba5d533ca9ba56fce77849c9c5132ff195a0102dc3` |
| 21 | `theorem` | [IsEquivalent.add_const_of_norm_tendsto_atTop](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-add-const-of-norm-tendsto-attop.md) | 164 | `result-track:26596d7863bf2fac7a5668cd94d1789af1b801c611283d0dd4b113d4754663c9` |
| 22 | `theorem` | [IsEquivalent.const_add_of_norm_tendsto_atTop](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-const-add-of-norm-tendsto-attop.md) | 169 | `result-track:7dac60cddbb9058566c37401cd70907983a516e9b74ae0e9f0797742bd4605f7` |
| 23 | `theorem` | [IsLittleO.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/islittleo-isequivalent.md) | 174 | `result-track:09efe78ad7864c159d00e4ec604ceacd08a31709d7fc7d0738e7b40789a65a1e` |
| 24 | `theorem` | [IsEquivalent.neg](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-neg.md) | 176 | `result-track:785836472a652c25e954f30fb69a9cc3d12e31c4fd3d247ccb777b015d36804b` |
| 25 | `theorem` | [isEquivalent_iff_exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-iff-exists-eq-mul.md) | 189 | `result-track:f127d557d439cf29eb5963468a809952a61febb3d969043f8722b100242f85f4` |
| 26 | `theorem` | [IsEquivalent.exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-exists-eq-mul.md) | 200 | `result-track:091bfaf4577a845a9a56520484961f58cbc4c1ac7c8f6e0bc1ae3edc9a7f86fe` |
| 27 | `theorem` | [isEquivalent_of_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-of-tendsto-one.md) | 204 | `result-track:52758d12700cccec94080cea1124cdc1c5a08959aa783baa6d66e4881e1431ab` |
| 28 | `theorem` | [isEquivalent_iff_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-iff-tendsto-one.md) | 213 | `result-track:3c65c551fb46f455f7bca5135742d5bb17a50515f2f0386cc83a360e19b2247d` |
| 29 | `theorem` | [IsEquivalent.smul](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-smul.md) | 230 | `result-track:03283ffaa41dc664fe87b0d814f1e4db31aa4b15caf0dd751268abdbd3757406` |
| 30 | `theorem` | [IsEquivalent.mul](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-mul.md) | 270 | `result-track:c4ebe3c8cb61d05341b1485c9eb67bb46deeede76455fa688f8a1837476e1b74` |
| 31 | `theorem` | [IsEquivalent.listProd](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-listprod.md) | 273 | `result-track:4ddd01d53f999dd22cc4bb39edefc6d7078bb0041fb41aa6472aafe60e086463` |
| 32 | `theorem` | [IsEquivalent.multisetProd](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-multisetprod.md) | 281 | `result-track:5fb653c2a262355b35c413e2e3aa196f74eb9f0a5211d8b14c210339f6feb5db` |
| 33 | `theorem` | [IsEquivalent.finsetProd](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-finsetprod.md) | 286 | `result-track:f583f4e810ec925859b7657e0682538df14f150b30baf710076a4e9bdba7017e` |
| 34 | `theorem` | [IsEquivalent.inv](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-inv.md) | 290 | `result-track:fb530ee928fc48277f47ffbbfb7edfe016badf3e70a880108b2e01f4238d8ccc` |
| 35 | `theorem` | [IsEquivalent.div](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-div.md) | 298 | `result-track:525f4147f6410aadf104e8f36b2fa7ae7039a5bf534602a2b6f6ae9ec856800e` |
| 36 | `theorem` | [IsEquivalent.pow](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-pow.md) | 302 | `result-track:e5e578c14329ac76876cdc1cc3ac87e9065a994451910a1705fb7112c1d70030` |
| 37 | `theorem` | [IsEquivalent.zpow](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-zpow.md) | 307 | `result-track:ab52d94cdc5e4ca808b9adce6a6ea9ad7478e589e1a36b3b5c747065fdff6619` |
| 38 | `theorem` | [IsEquivalent.tendsto_atTop](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-tendsto-attop.md) | 319 | `result-track:45ded44588301ae8c4eaf4bacff66599dd9e315fd43abe00dd1c777a655047c9` |
| 39 | `theorem` | [IsEquivalent.tendsto_atTop_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-tendsto-attop-iff.md) | 324 | `result-track:bdc2786e7d894710f4f217128e7cf06a5e8e7d3b90f58b8ac229f9e8d2d96ce5` |
| 40 | `theorem` | [IsEquivalent.tendsto_atBot](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-tendsto-atbot.md) | 328 | `result-track:4b98b93360fee8dcac8410767ec37b8673484f2f9609f784bb481a178155e709` |
| 41 | `theorem` | [IsEquivalent.tendsto_atBot_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-tendsto-atbot-iff.md) | 334 | `result-track:f426209e0631f84c89e66be95d47e6461d3909c18b640864d3ca43f108f037c7` |
| 42 | `lemma` | [IsEquivalent.exists_pos_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-exists-pos-eq-mul.md) | 342 | `result-track:23c538f4fa8e49a0d8c8e7fa429680a63ca9257117457cc44460ed2bbc5537e6` |
| 43 | `theorem` | [IsEquivalent.eventually_nonneg](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-eventually-nonneg.md) | 347 | `result-track:79802d2d620eb0147b307c9f0c463f5ae2c059240926a793fc2c7f25e1a35a85` |
| 44 | `theorem` | [IsEquivalent.eventually_pos](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-eventually-pos.md) | 352 | `result-track:378abfacea728fc3dc79c5588ff5cc4fbf9c7e9b276e4ce257a40f8d9fa636f8` |
| 45 | `theorem` | [IsEquivalent.eventually_nonpos](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-eventually-nonpos.md) | 357 | `result-track:7b173b230e7e533cc4075310be7f76b772eb202100cf0283d8c60eca50b7712e` |
| 46 | `theorem` | [IsEquivalent.eventually_neg](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-eventually-neg.md) | 363 | `result-track:a8b84c45103ef0b529bd63236f3327abb53beed2be5edfb77edbe5511fdf14a2` |
| 47 | `theorem` | [IsEquivalent.add_add_of_nonneg](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-add-add-of-nonneg.md) | 374 | `result-track:f0de39857c59226708d19f90a863d3c47552d1ce258770f305c4ad09da2b212e` |
| 48 | `theorem` | [Filter.EventuallyEq.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/filter-eventuallyeq-isequivalent.md) | 392 | `result-track:09975295d47f00c28b9cfa8c782ac1ac2a8ec30deb3bc72b9a8a907154745dc1` |
| 49 | `theorem` | [Filter.EventuallyEq.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/filter-eventuallyeq-trans-isequivalent.md) | 396 | `result-track:81b81d39363f37a60363fb5c6dc34b02fcabd930a9e7bc2f55b240022601e6d7` |
| 50 | `instance` | [transIsEquivalentIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transisequivalentisequivalent.md) | 402 | `declaration-track:6b324ea3b434b85a7cdbba22f0fb59eea8f73d85a726ef082bb18fd8311e4b87` |
| 51 | `instance` | [transEventuallyEqIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transeventuallyeqisequivalent.md) | 406 | `declaration-track:449513d74f065821d9c492d029169a8cffd6ab9691b58778d91a1d95559db894` |
| 52 | `theorem` | [IsEquivalent.trans_eventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-trans-eventuallyeq.md) | 411 | `result-track:0553dd7da65b4d5822565f26932f22e8725460b555e62dcda5119fa0842d8ae1` |
| 53 | `instance` | [transIsEquivalentEventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transisequivalenteventuallyeq.md) | 415 | `declaration-track:5e64bccde43e7d7b70faf9a130d678caf5c0830982ae693fcf11852e13a9840d` |
| 54 | `theorem` | [IsEquivalent.trans_isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-trans-isbigo.md) | 420 | `result-track:4c30e7a606e694074c9d55032e0df147cdfa365443ab93c5dc25d592ffa64d4a` |
| 55 | `instance` | [transIsEquivalentIsBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transisequivalentisbigo.md) | 424 | `declaration-track:1ce8b07b15ddd1e5dcb11ef29d289c5c50635a23b949d2e67ed30af6fa1a47f3` |
| 56 | `theorem` | [IsBigO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isbigo-trans-isequivalent.md) | 429 | `result-track:2e574a70de51c88a5dd71f40226c9fcab03c5d16f112fb56f16967d80cf4360f` |
| 57 | `instance` | [transIsBigOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transisbigoisequivalent.md) | 433 | `declaration-track:9459c6539f1123a2c32eec1695de5e4f239f366b2976b70773b8ca3e9eb74c89` |
| 58 | `theorem` | [IsEquivalent.trans_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-trans-islittleo.md) | 438 | `result-track:125fc80f6c008a64dc46e8c31e49cb7d8adfe69ca31069d447d44233a375cb75` |
| 59 | `instance` | [transIsEquivalentIsLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transisequivalentislittleo.md) | 442 | `declaration-track:499cce2c653a481275410afdb79544d9ec90942cf44ebe3e902404005cb34437` |
| 60 | `theorem` | [IsLittleO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/islittleo-trans-isequivalent.md) | 447 | `result-track:c122c0d3118bce8894911bb5176c24f2a700213fa54777967517e2cc3555ae3d` |
| 61 | `instance` | [transIsLittleOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transislittleoisequivalent.md) | 451 | `declaration-track:6648f8dfc7a08b4dbf8c1e5b77f0844956bca5dd658aa192bd93ba7ca4c60111` |
| 62 | `theorem` | [IsEquivalent.trans_isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-trans-istheta.md) | 456 | `result-track:cb2a398280686137e9439c6940f78a485eabcf8a850a7882c4f330629e4a1440` |
| 63 | `instance` | [transIsEquivalentIsTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transisequivalentistheta.md) | 460 | `declaration-track:022607b6a882f6bef4bf3002b5fa8ae5f2b9e23be9a955bc4a933d718a98c80f` |
| 64 | `theorem` | [IsTheta.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/istheta-trans-isequivalent.md) | 465 | `result-track:0f615f00f2e7d879309970425a0844a89d5e969d239f56ec6ed6046bf80dab31` |
| 65 | `instance` | [transIsThetaIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/transisthetaisequivalent.md) | 469 | `declaration-track:431ce3132a45af15503dc6650426a16a3206ae1c140e8f1d3ea766ed34f42e3e` |
| 66 | `theorem` | [IsEquivalent.comp_tendsto](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-comp-tendsto.md) | 473 | `result-track:c37d4f4e2bccb0e883797de82844b6d30306478f0a50f7c90bd9bdd234cef586` |
| 67 | `theorem` | [isEquivalent_map](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-map.md) | 478 | `result-track:0092b29f942884fe1615562becf70eaff6ec05e62adb6ec09ee5f8190c249cd0` |
| 68 | `theorem` | [IsEquivalent.mono](../../../../FunctionalAnalysis/AsymptoticEquivalentPublic.lean/declarations/isequivalent-mono.md) | 482 | `result-track:e8a90922e6b3c8377274f66e0109a59cefc93dcc86707cd1f181cbfec1929240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccce5c6881d63d0e457ab676e814f1ab2e9c15f1b72ef16ad56bf53ecb6101ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
