# Verification target: Valuation Basic Namespaced Coe Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96b8edd43a3377d5d5423af8844c19995974241f",
  "lexical_observation_count": 151,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant65d402977ba764ae22dc575afa3a34bda8daa583c71a7aae5016105cdb0ccd3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96b8edd43a3377d5d5423af8844c19995974241f`.

Source path: `GRWTSK/Algebra/Basic/Variant65d402977ba764ae22dc575afa3a34bda8daa583c71a7aae5016105cdb0ccd3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant65d402977ba764ae22dc575afa3a34bda8daa583c71a7aae5016105cdb0ccd3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Monoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Valuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/valuation.md) | 84 | `declaration-track:5ce5f3023e4e4a204a8b789cc344f96757447773cffe84937afcab1dac9bbe21` |
| 2 | `class` | [ValuationClass](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/valuationclass.md) | 91 | `declaration-track:3a5703b619e5e6c0c6739c9d2c132e0e02d91bcf1636d61eb054b9a1758b6d8a` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/instance-source-edition-7.md) | 99 | `declaration-track:e29b3d45e71274ada715c99c1529c0e3d4eb36a13d26a831dee6d4b534ffe337` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/instance-source-edition-4.md) | 123 | `declaration-track:7e30126e05fad00f45ba4586a9a7859d9231c4c3e0ab2656c7111a4256ddf345` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:ae9e6be7304c887f05143a817a8a72326e7f739b6f6ec92047c27de678eb6e42` |
| 6 | `theorem` | [coe_mk](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/coe-mk.md) | 136 | `result-track:34b7ad95b49f9ab75cb7376d0f279ff3bf7f6e2ffb81564628145ae0bf25591d` |
| 7 | `theorem` | [toFun_eq_coe](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/tofun-eq-coe.md) | 138 | `result-track:d51c43e2e286e682d89e988cce0f6dd1ba0f135f726ab1bfb0863b36b2387621` |
| 8 | `theorem` | [toMonoidWithZeroHom_coe_eq_coe](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/tomonoidwithzerohom-coe-eq-coe.md) | 141 | `result-track:b4552470537e5f79b765569e41277219ec6d67e7fdde447eaabd3b535b688632` |
| 9 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ext-source-edition-2.md) | 145 | `result-track:fda320501bfe8be7520cd640d256cd08edaf0b9517733f36a98cefda652e9f09` |
| 10 | `theorem` | [coe_coe](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/coe-coe.md) | 151 | `result-track:8f90d7f721024997db7a7e02e6a6d573c7b07c4f18955df371aba4288483f660` |
| 11 | `theorem` | [map_zero](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-zero-source-edition-2.md) | 153 | `result-track:bdd749cd6cd014850987e0fcc599dd385e9ed3897f6e27a79494401bcc27db0c` |
| 12 | `theorem` | [map_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-one-source-edition-2.md) | 156 | `result-track:df05e8b07d10af1a996b6aa400fd5aaa5c11ed1b5762bc166a10ed14261b68de` |
| 13 | `theorem` | [map_mul](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-mul-source-edition-2.md) | 159 | `result-track:77416b5006c7a28baec926992315d1b9c254d74ebd4605fc07ebdc2c17107f57` |
| 14 | `theorem` | [map_add](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-source-edition-2.md) | 163 | `result-track:b8b91c1eab2cee38c316574583c455a2fb83a6f76a3e436b577a387ee3918bb7` |
| 15 | `theorem` | [map_add'](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add.md) | 167 | `result-track:097c4ce0fcad58411b03d1f44cbe5edd86f72ea1f00744557a56b15b3577bfb4` |
| 16 | `theorem` | [map_add_le](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-le.md) | 172 | `result-track:38f4157d9e9090313b9b142355ac2128d64a4ce0ed8c9f8e053d5f71dd3df362` |
| 17 | `theorem` | [map_add_lt](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-lt.md) | 175 | `result-track:85fcb34e9fcd0ac6baeb3e54375c0911bfe96677449b09930487e26615e6db2f` |
| 18 | `theorem` | [map_sum_le](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sum-le.md) | 178 | `result-track:1cb11aa6cdcc678c1465d1b1d8bda9a14c1e1bb14cff39583e2e7c5bae686ac7` |
| 19 | `theorem` | [map_sum_lt](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sum-lt.md) | 187 | `result-track:bc092daadb0990af99866f5ec5fb0080c03404860bdcc51afc7180b88aa1a13a` |
| 20 | `theorem` | [map_sum_lt'](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sum-lt-source-edition-2.md) | 196 | `result-track:d6147f79e49b0a49222e2492e54461c3ae2a53bbefc0463f94abafea12844814` |
| 21 | `theorem` | [map_pow](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-pow.md) | 200 | `result-track:d55f4310498b1abc7e650c11f8aee285132ce2af8aceb278420b74d3600e17ad` |
| 22 | `def` | [toPreorder](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/topreorder-source-edition-2.md) | 206 | `declaration-track:8c1ffcfda5732fc347a4edbce4febaac4885e4c2f3cc869202ad6cec5cc06178` |
| 23 | `theorem` | [zero_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/zero-iff.md) | 210 | `result-track:6360ced830254eeedf0bc91574f050b756f12485e3a87f6bf4768c90c4f14953` |
| 24 | `theorem` | [ne_zero_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ne-zero-iff.md) | 213 | `result-track:7b16c28db6e8e294ce06e35085c85ddd3775865fbbd815d662f1ad1ff1bd2424` |
| 25 | `lemma` | [pos_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/pos-iff.md) | 216 | `result-track:1454b663ab1f9c9fcf5e4a22b4ce795cd0110d1ed9168a162f87208e7bf53a8c` |
| 26 | `theorem` | [unit_map_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/unit-map-eq.md) | 219 | `result-track:be2e102699701c65b64f9de6262d6d5e5b5c77a0cd3867d86fbe36d48f2578da` |
| 27 | `theorem` | [ne_zero_of_unit](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ne-zero-of-unit.md) | 222 | `result-track:3c226cbfffad0204bd155500a152cdf80f897016383042e30ffc43d9946ce1fe` |
| 28 | `theorem` | [ne_zero_of_isUnit](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ne-zero-of-isunit.md) | 225 | `result-track:0426729c566bb3ff7794fbe41e224df8c1954f3b5463c93574954bb3f268220e` |
| 29 | `def` | [comap](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-source-edition-4.md) | 230 | `declaration-track:ec8a0be22fddc32801c8975e41821610702445713b4de700e375669ad4a2457a` |
| 30 | `theorem` | [comap_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-apply.md) | 236 | `result-track:ceb9808a7b5f2eeeea88eabe6fc5840edf94e96ff0bfee1946b9c90647027d3e` |
| 31 | `theorem` | [comap_id](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-id.md) | 240 | `result-track:d3a74d67af1e3310d40cacf6b7fde19e7bfca92aa3da3b7550c29e58e8943eb9` |
| 32 | `theorem` | [comap_comp](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-comp-source-edition-2.md) | 243 | `result-track:ef4350253de4b28b719c70d4dd420a9b7d8f5873a59105d362dcc669abe952c5` |
| 33 | `def` | [map](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-source-edition-2.md) | 249 | `declaration-track:195d34ed3a9d2ae3294c9ca29590bc1d12febddbb37270e5ddba94013d6ec09c` |
| 34 | `lemma` | [map_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-apply-source-edition-2.md) | 259 | `result-track:77624052d9f4407930d25d67f4040b2c9549297f1025e60d80822db3dd3ca498` |
| 35 | `def` | [IsEquiv](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv.md) | 263 | `declaration-track:caea768121f7c31ded66c44ad4c84d5e3a853c4fff3c871b1fcced2c54e9ad5b` |
| 36 | `theorem` | [map_neg](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-neg-source-edition-2.md) | 267 | `result-track:f4d2e1d47d3a639b45e73e37a306b73adf0d73970166b9c132d67a4b907d9e72` |
| 37 | `theorem` | [map_sub_swap](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-swap.md) | 270 | `result-track:55be493d99b1edfabafe4f2aed2d4a1ab975237a39d136ec873f99326a192e28` |
| 38 | `theorem` | [map_sub](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-source-edition-2.md) | 273 | `result-track:7dc3b8c66be9cce758fce48ded4411d46cdce26991398c4694397978eb364410` |
| 39 | `theorem` | [map_sub_le](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-le.md) | 279 | `result-track:540f1da46581acd104dcaed365eea2c701b954ca7669b7aaddf08bfe922442bd` |
| 40 | `theorem` | [map_sub_lt](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-lt.md) | 283 | `result-track:d9f293d68f7923850c5eee2136d4a4c41a5cd535ea0cd368353bf3aa32f9c809` |
| 41 | `theorem` | [map_add_of_distinct_val](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-of-distinct-val.md) | 289 | `result-track:2507e6581ed26b691e917897478b5199df3e6df1471e0ac07eccdf91ab099fd6` |
| 42 | `theorem` | [map_add_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-eq-of-lt-right.md) | 303 | `result-track:762402e5dca9c784ef2ec55048cd523728bef016548a8f51f97442bfa10a5a31` |
| 43 | `theorem` | [map_add_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-eq-of-lt-left-source-edition-2.md) | 306 | `result-track:e0b9e53613607a59da3efd3dcd6a367322274877af239887a2b0db7cabae42dc` |
| 44 | `theorem` | [map_sub_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-eq-of-lt-right.md) | 309 | `result-track:7cdf3cb2369bee09118d01cec566100b825f6319fb164099473919b8450144f2` |
| 45 | `theorem` | [map_sum_eq_of_lt](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sum-eq-of-lt.md) | 314 | `result-track:416b0b6719523430ef5e53a3d835d3e28c5de91e80b3f3d6fcc4334821eaf5f0` |
| 46 | `theorem` | [map_sub_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-eq-of-lt-left.md) | 320 | `result-track:032fd7dfdea3077a9d02dcc6bd337b9794f1c0643ca498850bc6c5fc35a64258` |
| 47 | `theorem` | [map_eq_of_sub_lt](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-eq-of-sub-lt.md) | 324 | `result-track:f98237d6388751a0a457d3d497f2f7768d1328a150a9a22e9b194c0aa3c7cff7` |
| 48 | `theorem` | [map_one_add_of_lt](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-one-add-of-lt.md) | 329 | `result-track:51708944fe32e9019f86eb78b3d12e9333fb0b7547738dbeeb05947384b6be94` |
| 49 | `theorem` | [map_one_sub_of_lt](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-one-sub-of-lt.md) | 333 | `result-track:3689714df33b679d2df41ab7e63304bf0e165b089a5c348cbb9548470d2d4be2` |
| 50 | `def` | [congr](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/congr.md) | 340 | `declaration-track:dc5ef11efc37daf431ca3691cc87a8b79ef524b79f8536daf5ec4205b86eac08` |
| 51 | `theorem` | [map_inv](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-inv.md) | 352 | `result-track:38dec4a0a59964bdf3eb4079e58abec9249ebba4d9c16fff64b76957708a4e9b` |
| 52 | `theorem` | [map_div](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-div-source-edition-2.md) | 355 | `result-track:c41ddbe6f381f6c8be180d032eedad26b6a28aabe17f6ef1e37a106f96d815ed` |
| 53 | `theorem` | [one_lt_val_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/one-lt-val-iff.md) | 358 | `result-track:a525d686ea9f5e7fa0a6efe9970b24de593372c5e4c4c1989fbd3bd21be52828` |
| 54 | `theorem` | [one_le_val_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/one-le-val-iff.md) | 361 | `result-track:e5d06fcf8235e079bd093fc5daa321ecfff19bae762d0a6eb4ae7808ee57c4fa` |
| 55 | `theorem` | [val_lt_one_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-lt-one-iff.md) | 364 | `result-track:41a1b11a855e5fdb5f73f6e4d91acebf588c1a0a333db5fdbc19f24f0dc673ea` |
| 56 | `theorem` | [val_le_one_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-le-one-iff.md) | 367 | `result-track:8688822414a43fc62fc97f8cb81bef18c23405733741f14056ee89e77392ff52` |
| 57 | `theorem` | [val_eq_one_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-eq-one-iff.md) | 370 | `result-track:3d2febf73a0def7a75bf36c6a9aecfd5d63d7cb2ed9679695b64ef5b119c442e` |
| 58 | `theorem` | [val_le_one_or_val_inv_lt_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-le-one-or-val-inv-lt-one.md) | 375 | `result-track:3e6f1aeb40867fe89c754603f2f34cdfe5ffd56708f6485d2164b4253f25120b` |
| 59 | `theorem` | [val_le_one_or_val_inv_le_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-le-one-or-val-inv-le-one.md) | 384 | `result-track:f70a998eeabc9b935576241e60ca2b947f93e5e83f2a71d57fd99386a079ce38` |
| 60 | `def` | [ltAddSubgroup](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ltaddsubgroup.md) | 390 | `declaration-track:9baebf99ccfd9c9e5c2b6ab91ea5c0c8ef3320c74868195550bba64f5832f98d` |
| 61 | `class` | [IsNontrivial](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isnontrivial.md) | 406 | `declaration-track:92e54037d6d47dff381e81832905de9bd3fc078c3bcc4b7c8594ca1e5ebaf046` |
| 62 | `lemma` | [isNontrivial_iff_exists_unit](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isnontrivial-iff-exists-unit.md) | 411 | `result-track:44b29f3967e8686a5cf4d0a37d58ff423705f1b6f326a0793ab55d990b17379a` |
| 63 | `theorem` | [refl](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/refl.md) | 428 | `result-track:400ac481f85299cb2382b3c8c918eadc5a6841d93a7c8af0f9886afe7769719c` |
| 64 | `theorem` | [symm](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/symm.md) | 431 | `result-track:f74c1700dab764872ffd05e55c5cb354ea68fb209e9a825e565f8516c85c5b57` |
| 65 | `theorem` | [trans](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/trans-source-edition-2.md) | 434 | `result-track:5b7a02900d725f0bb86fdf021085179346225b8ea0ecfc4a708085de2fbc99dd` |
| 66 | `theorem` | [of_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/of-eq.md) | 437 | `result-track:138744de45f7be21e7b84d3055d2ce4d9dd287603e4e8e853b1b5a987b28df93` |
| 67 | `theorem` | [map](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map.md) | 439 | `result-track:001b99d718e2f18d1c46d03fc5f052f3741de3a881e2a7f1b91786e38ed74887` |
| 68 | `theorem` | [comap](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-source-edition-2.md) | 449 | `result-track:ac95e4a023e55e912028b03735509b6a914d7d866957c118daef89041a17f7e7` |
| 69 | `theorem` | [val_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-eq-source-edition-2.md) | 452 | `result-track:906c86fea019937c7676684a0b0105081c8778a27259df23a380d3d8e3251301` |
| 70 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ne-zero.md) | 455 | `result-track:ab97f32f21fbb758993e16de6453975ff3fdef91c5ed2dc059f96da26b2ba339` |
| 71 | `theorem` | [isEquiv_of_map_strictMono](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-of-map-strictmono.md) | 464 | `result-track:5a2c721efba97044d77eb9eeaf63e5dc403ed7c882d13fd94c88c8fd9af7bb2f` |
| 72 | `theorem` | [isEquiv_iff_val_lt_val](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-iff-val-lt-val.md) | 469 | `result-track:61b1e20720f8948b6f23c56f22225222fe83a6648ff8fcd5b242fbaa697ccf76` |
| 73 | `theorem` | [isEquiv_of_val_le_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-of-val-le-one.md) | 477 | `result-track:518bfc0725c769f6d58c0804568e946fee495f5d3226e76832f42461ad702184` |
| 74 | `theorem` | [isEquiv_iff_val_le_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-iff-val-le-one.md) | 486 | `result-track:3647d2b4fb9f5c42676b3a6221550be38c7989437cc9c714e6d6f5ff34727981` |
| 75 | `theorem` | [isEquiv_iff_val_eq_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-iff-val-eq-one.md) | 493 | `result-track:4ec45c14aad48be5575dcbbf992eef5d45fd2c76395dd9c7e5fd612597771855` |
| 76 | `theorem` | [isEquiv_iff_val_lt_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-iff-val-lt-one.md) | 530 | `result-track:b81d247367e3a6dca7093e82e7fe38fc7810ec4444ec57a3a92215a91a5a0514` |
| 77 | `theorem` | [isEquiv_iff_val_sub_one_lt_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-iff-val-sub-one-lt-one.md) | 559 | `result-track:37f6917859c2d53589885a9d65b1d82446bb6ac41b144abc236a03ac0519b3e5` |
| 78 | `theorem` | [isEquiv_tfae](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-tfae.md) | 567 | `result-track:670023d5254769a1bbb47975c6f4e70ae3fe92125e15883ef7e572f704883a8b` |
| 79 | `def` | [supp](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/supp.md) | 589 | `declaration-track:8c5106f45f8b626b896a9c3f444bca062a75cc4e70368b64eb5af1a32c339c3c` |
| 80 | `theorem` | [mem_supp_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/mem-supp-iff.md) | 603 | `result-track:e13c9d09386f19ad18c72cf0ab233a6b01916d9b12094c1edad6a86a0991aa78` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/instance-source-edition-3.md) | 607 | `declaration-track:782f8f5e00a8f048b40642a000fa2841378428ac4b342dabccab1453722d74df` |
| 82 | `theorem` | [map_add_supp](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-supp-source-edition-2.md) | 618 | `result-track:fe2d58486c189dabb96aac56401c8ba82559dcce89639ab6612329fcada1f47a` |
| 83 | `theorem` | [comap_supp](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-supp.md) | 628 | `result-track:2b063d978794784dbc9960eab572c2654c62295e98540f9420c3dfa09f78a6a1` |
| 84 | `def` | [AddValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/addvaluation.md) | 642 | `declaration-track:6902f11202158b272985925e7e3f5f82635814b9fab34d0c8fc9805545415f08` |
| 85 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/instance-source-edition-2.md) | 656 | `declaration-track:5ff6011339c485ba1a079029e3bc52caf22096e11c8e8c93878f7985bd360a1d` |
| 86 | `def` | [of](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/of.md) | 670 | `declaration-track:b7d0f6ae32b62e7bd15a93b6fbd54fef9dc34a83d916b06191d0801b336ec67d` |
| 87 | `theorem` | [of_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/of-apply.md) | 680 | `result-track:826590164ca9e0bc3ea96b3482bb8125c74c5691b8b47325b2fc0ffd202dcd35` |
| 88 | `def` | [toValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/tovaluation.md) | 684 | `declaration-track:ba19d616202415d9d1516c26a2a56b74fe7e1ab7a87027064f58596ab2a8340f` |
| 89 | `def` | [ofValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofvaluation.md) | 692 | `declaration-track:67ff0149deeb5a196d4fdd8a3b6945040bd51c9443b2fdd4ba6d857a0cf9b09a` |
| 90 | `lemma` | [ofValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofvaluation-symm-eq.md) | 696 | `result-track:a30c0142cc32dbc330efe417d9e5004d49979b6482d829d73707491e19a86f9b` |
| 91 | `lemma` | [toValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/tovaluation-symm-eq.md) | 699 | `result-track:e0757fd5b8ab07f7f398bc8beee1de9d233987b2caf3e713c84ab2d9ef0db789` |
| 92 | `lemma` | [ofValuation_toValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofvaluation-tovaluation.md) | 702 | `result-track:c8c5fab7c9c1e76b0df8e32d0e584852231b1d11ba60f2a35e7f94e9bd561003` |
| 93 | `lemma` | [toValuation_ofValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/tovaluation-ofvaluation.md) | 705 | `result-track:936994f7e00e5104879dd9ef9d258603b1a5f66b1026f3bd31182bad56154bf4` |
| 94 | `theorem` | [toValuation_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/tovaluation-apply.md) | 709 | `result-track:c05593c20867976c6a0ad70cb53d2e8eb2dac917d38a38bb2dda1e2af8b596f7` |
| 95 | `theorem` | [ofValuation_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofvaluation-apply.md) | 717 | `result-track:9d7051307e9f422d6a3e97dffa7b2d5e5125cccbe2dd179c88678d98645c9f4d` |
| 96 | `theorem` | [map_zero](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-zero.md) | 725 | `result-track:71ba1a4aa837f91c41c0f12819d71b07c404bec7dbfd98d7a6144e74b4b80305` |
| 97 | `theorem` | [map_one](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-one.md) | 729 | `result-track:14ecfe9832da8cc3b4ba973dbd8000ce1987af01f3ff26b443297b5f26ae7152` |
| 98 | `def` | [asFun](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/asfun.md) | 734 | `declaration-track:88a51592fd0fd8058093c9cd2d4279023fa936e608ba94f0b220d5e8139ba9a5` |
| 99 | `theorem` | [map_mul](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-mul.md) | 737 | `result-track:4d48db193d3ea2519c7c2e06652113225c2508601395c680bbe910a2db19f3ec` |
| 100 | `theorem` | [map_add](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-source-edition-4.md) | 741 | `result-track:e62da78653681eddc8fb1881c6cf9004236272eb0a3cceed70a9ae0b9c3f3f1b` |
| 101 | `theorem` | [map_add'](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-source-edition-3.md) | 745 | `result-track:bb6fc87a4ed3490339ae1caafad42a496892583ca74bfe5731bfef96ed16e3d4` |
| 102 | `theorem` | [map_le_add](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-le-add.md) | 750 | `result-track:2012cc197c50072a8ac70bdea2eb0431f0fac04b52bc97904425745ed3d6836f` |
| 103 | `theorem` | [map_lt_add](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-lt-add.md) | 753 | `result-track:9dc3fc1645ef7b9db169bc54d4290d15aa0ea8029cf740f683a1885736bfe6e5` |
| 104 | `theorem` | [map_le_sum](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-le-sum.md) | 756 | `result-track:1ff42ebfd94a98e32243d13410ac2251d323a42c95343cc1704f42c368e6f198` |
| 105 | `theorem` | [map_lt_sum](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-lt-sum-source-edition-2.md) | 760 | `result-track:6c3813346dd6bcaa08a01caad42e64c51e758c6f38d9be423ec9d593543b1848` |
| 106 | `theorem` | [map_lt_sum'](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-lt-sum.md) | 764 | `result-track:605ab15670eff5e14133118153f8a44ab27fdd9f30055cf2ab349d3c4cd15815` |
| 107 | `theorem` | [map_pow](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-pow-source-edition-2.md) | 769 | `result-track:fe38a6ef606a0234c7dae919e458a796f062d8934382071e90fa54cd8d7071c1` |
| 108 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ext.md) | 773 | `result-track:ddae2d78c98730bee71cefcb660e20ed44e18783696159568632d2469b1fe825` |
| 109 | `def` | [toPreorder](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/topreorder.md) | 779 | `declaration-track:85c5b292a71a6ddd28c32d5a6264fd1abac56bf78082fb1bd26f6bf554b017d6` |
| 110 | `theorem` | [top_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/top-iff.md) | 784 | `result-track:9c42df2f3d8f7b2076dbecc0145df0ae228f7c041404066f8e013773cc0c966b` |
| 111 | `theorem` | [ne_top_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ne-top-iff.md) | 787 | `result-track:5a9be0ad19404371cf4bee145d146d388f24adbe7bab7ed7f2c7cfb24efb5f90` |
| 112 | `def` | [comap](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap.md) | 791 | `declaration-track:99d93a8c0e6e9de529d9ca30cec240400f3e7f46e194da008a5308e6b029daff` |
| 113 | `theorem` | [comap_id](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-id-source-edition-2.md) | 795 | `result-track:dff047487ffcded3b361d8f7552790250d8fe8e239b2410e29f76be756f0ebae` |
| 114 | `theorem` | [comap_comp](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-comp.md) | 798 | `result-track:d778ce68c8ad9f71f45f01aba905b9d992a88bac7331a4d0f704df2bb247028a` |
| 115 | `def` | [map](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-source-edition-3.md) | 805 | `declaration-track:90133fe45858d9736322df5057dffac98d6190f866c95ef8cbdd5d124becf209` |
| 116 | `lemma` | [map_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-apply.md) | 814 | `result-track:12ad8276e4ec102424ae8678998f56083d0db062529a2d9e06aa9278c03d4e0a` |
| 117 | `def` | [IsEquiv](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/isequiv-source-edition-2.md) | 819 | `declaration-track:e0c31b447f5ff0955bcd321984daa6bfe0f6c354bbbdbb8efdfd99bbe007831e` |
| 118 | `theorem` | [map_neg](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-neg.md) | 823 | `result-track:bdb0f16a607327e5995f56521b7fe408602772beb4663768ba526f7855aabc2a` |
| 119 | `theorem` | [map_sub_swap](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-swap-source-edition-2.md) | 826 | `result-track:aed3aadddaeec183fa022957f69c650e2ad69bf7e3f36b66dadc0e53745d94fe` |
| 120 | `theorem` | [map_sub](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub.md) | 829 | `result-track:73d96c63dae490f5325cf0bee90dfe34c7e13b5015ab3e7bec6af1d1b5ca813f` |
| 121 | `theorem` | [map_le_sub](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-le-sub.md) | 832 | `result-track:725b9c24e425a3c3312cd6e1e7421ffac83cde9a1898ffeeccfefbc59e1df5e2` |
| 122 | `theorem` | [map_add_of_distinct_val](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-of-distinct-val-source-edition-2.md) | 837 | `result-track:b3794e81ad61c3b3af18d2e5b7e526e36277b6a9fbb015b911f72c1b0163e239` |
| 123 | `theorem` | [map_add_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-eq-of-lt-left.md) | 840 | `result-track:b45a844a2145f39990d99a0d17c921a98726dbd9028bcdd3c06e9f9124f6fb56` |
| 124 | `theorem` | [map_add_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-eq-of-lt-right-source-edition-2.md) | 844 | `result-track:deed43207658417cb45a88a083c5887f34b0404b707f5b03afaabb9b6105357f` |
| 125 | `theorem` | [map_sub_eq_of_lt_left](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-eq-of-lt-left-source-edition-2.md) | 847 | `result-track:6f3690dd91dff3d8bd53c8eeaac77592fd2055803775becbb7feb526dc0c9c45` |
| 126 | `theorem` | [map_sub_eq_of_lt_right](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-sub-eq-of-lt-right-source-edition-2.md) | 853 | `result-track:ca31a4d30d30f7442db7499b24d5e10e472b13f496416ef34196f4022ccef1b4` |
| 127 | `theorem` | [map_eq_of_lt_sub](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-eq-of-lt-sub.md) | 856 | `result-track:2d366117f9fdee57defa29f9d55e8463b10c39ec5d88c92515b246a86bdc0330` |
| 128 | `theorem` | [map_inv](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-inv-source-edition-2.md) | 866 | `result-track:e2886865181624a8fd93636774f7368f93e6d43618f81044d1c93bcf5a2e0424` |
| 129 | `theorem` | [map_div](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-div.md) | 870 | `result-track:5ebabd370a22b40a6dd900109c834b8106046220852b6b22c2923afe0c0db0ff` |
| 130 | `theorem` | [refl](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/refl-source-edition-2.md) | 886 | `result-track:77e257ec9106f552b4f188200447c81dc09286d82f2a3f48dbb9190b1ea8cf8d` |
| 131 | `theorem` | [symm](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/symm-source-edition-2.md) | 890 | `result-track:f7df683d14ce4fffb870d2d0407c899317352ee2ab3e4b1aacaa0ee878c07754` |
| 132 | `theorem` | [trans](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/trans.md) | 894 | `result-track:24be75baf0286c45e37b0a9aa86878d1d68a51e7db8ce1384bfcb7b46ef42880` |
| 133 | `theorem` | [of_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/of-eq-source-edition-2.md) | 897 | `result-track:bc61e7271ebf36445c129033ae9ab2a0c747d678baf52b3df09a6994cf455932` |
| 134 | `theorem` | [map](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-source-edition-4.md) | 900 | `result-track:c8ca7be5d417f9bbba087a61280422d9450ab78d9f72ca377e603dda803ee1e1` |
| 135 | `theorem` | [comap](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/comap-source-edition-3.md) | 909 | `result-track:eaa1446dfe629d4a7741086d3341a0912dc031279af6bc652328d522dc1bc1c4` |
| 136 | `theorem` | [val_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-eq.md) | 913 | `result-track:5b88c15acd5c70858d594a7cf75d0ec0ffbbfe9b3ea440a44a65df177156db5c` |
| 137 | `theorem` | [ne_top](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ne-top.md) | 916 | `result-track:71436b75791da5e5499e1f377f87016a0ee90ec5103a0d4d2068735df51bc04b` |
| 138 | `def` | [supp](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/supp-source-edition-2.md) | 926 | `declaration-track:a6488788a537734dc0dc5df31cc6d0caf13426886977861ffd12f1837130144f` |
| 139 | `theorem` | [mem_supp_iff](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/mem-supp-iff-source-edition-2.md) | 930 | `result-track:f2654824b644a2a6c54935bf5faec46f05eddc55066112f83c9e5cc76d2c2b99` |
| 140 | `theorem` | [map_add_supp](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/map-add-supp.md) | 933 | `result-track:f2d41f6eb7c2480e6723e7bc5d80fe694645fc738d492665d56f75c5659eeae5` |
| 141 | `def` | [toAddValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/toaddvaluation.md) | 946 | `declaration-track:7fc7ac6056bcf39fd8a6b928b9726d81bfd976f88d8dc78bc96e0a657ef358ac` |
| 142 | `def` | [ofAddValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofaddvaluation.md) | 957 | `declaration-track:c0a8a2d5d30b552bd9e5714e8194e5e76a8d64705ea1985888d8caab4026433b` |
| 143 | `lemma` | [ofAddValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofaddvaluation-symm-eq.md) | 967 | `result-track:311a0ee403d9294858030cd54cfdf35c5bece496b41f4a3ca255adc2c62d241e` |
| 144 | `lemma` | [toAddValuation_symm_eq](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/toaddvaluation-symm-eq.md) | 970 | `result-track:edf263d8d98db81e436e2c86af7546597b895e75f41370dda694cce4fc9c32a7` |
| 145 | `lemma` | [ofAddValuation_toAddValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofaddvaluation-toaddvaluation.md) | 973 | `result-track:3c03044bb4cfdb88996ccc7aa51219c2d38046518d0017a766e81d2a87ef4b61` |
| 146 | `lemma` | [toValuation_ofValuation](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/tovaluation-ofvaluation-source-edition-2.md) | 977 | `result-track:d04ca1620d87d6f54a9f1232559f8dae0733b7db7b638090f36a9af689ba9144` |
| 147 | `theorem` | [toAddValuation_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/toaddvaluation-apply.md) | 981 | `result-track:09f10c96dd9cad7ee04e7dcc9fd19d22268b4de60bc46da9139bd8c879b9715d` |
| 148 | `theorem` | [ofAddValuation_apply](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/ofaddvaluation-apply.md) | 986 | `result-track:2ca5f7e2003f9b60c314ba11830706304a70e8bafb95851c7dcb17e32b4ca3a3` |
| 149 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/instance.md) | 990 | `declaration-track:1538e225f4e484b03e0b43c5d07829df4faac919ea2a3aa312409b11b6d4b15c` |
| 150 | `lemma` | [val_mrange_zero](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/val-mrange-zero.md) | 1000 | `result-track:805e557bf6b53b1c43e8b0a7898383514e80767cb98a49d185cd1f236ed25eda` |
| 151 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationBasicNamespacedCoeMk.lean/declarations/instance-source-edition-6.md) | 1002 | `declaration-track:af8021260c809461b49565a02d104c188589daef051b98635e3a682ae1c118c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=544b3ce08e1ed3914de8824159f4f110e17be9b61f853b124ebb07ca88bf970e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant65d402977ba764ae22dc575afa3a34bda8daa583c71a7aae5016105cdb0ccd3a.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant65d402977ba764ae22dc575afa3a34bda8daa583c71a7aae5016105cdb0ccd3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
