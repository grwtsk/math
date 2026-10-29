# Verification target: Pi Lemmas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c6fff9d700c8bf472eb97f897eaaf5d8a0e062",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantd3a27c45b5501cecb7c4f4deb2bb49e385cfa15285454c909769df077f62cc41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c6fff9d700c8bf472eb97f897eaaf5d8a0e062`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variantd3a27c45b5501cecb7c4f4deb2bb49e385cfa15285454c909769df077f62cc41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variantd3a27c45b5501cecb7c4f4deb2bb49e385cfa15285454c909769df077f62cc41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Delaborators` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.range_one](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/set-range-one.md) | 46 | `result-track:91c5c54fa21bb48bbfe8dd8c15930cc36a02ac3427f3a69433ad27f38327c733` |
| 2 | `theorem` | [Set.preimage_one](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/set-preimage-one.md) | 50 | `result-track:b444491fefb8d120204d1ced265f566de29f587630a29283abfd3e1787132359` |
| 3 | `lemma` | [one_mono](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/one-mono.md) | 58 | `result-track:6c12498afd17a0afc5e58fd44a2cbebfc6faee52a4fb0e7a2f02c2e81b318879` |
| 4 | `lemma` | [one_anti](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/one-anti.md) | 59 | `result-track:8b8605f34f594d32f3d9ceccdef6e83169842eece150588305ad5d07a09e2944` |
| 5 | `theorem` | [Pi.isSelfInv_iff](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-isselfinv-iff.md) | 64 | `result-track:b1b56b7c1fc70123c36ffeaff3eb16496b831fb9512164e239d4aa97a212326e` |
| 6 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/coe-mul.md) | 70 | `result-track:f982008e8b532a70e00a21e3bb043f60d0c7572b769f3584555e016afeabb37e` |
| 7 | `def` | [MulHom.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulhom-pi.md) | 84 | `declaration-track:a09539e8c0f763db0adff34a735f9a4c7b789e697f9e82682a9bea41202db62c` |
| 8 | `theorem` | [MulHom.pi_injective](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulhom-pi-injective.md) | 93 | `result-track:f2d369af41e8083fef0f078eb98e86d8e76b4dc6a5cda63fcf5e3240ae87fc5c` |
| 9 | `def` | [Pi.evalMulHom](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-evalmulhom.md) | 112 | `declaration-track:6037a48527437b3ff3d738cc53e533e003749195a63365c4dc17909058ecd000` |
| 10 | `def` | [MulHom.piMap](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulhom-pimap.md) | 123 | `declaration-track:04289d5cc08583ab4e1067762689bec08c85a403d6a0000aee806a18b9fa32f0` |
| 11 | `def` | [Pi.constMulHom](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-constmulhom.md) | 129 | `declaration-track:87152b781d35d107907ce34f4a5af76af8ff5391755cc3c12842804126a1cc1e` |
| 12 | `def` | [MulHom.coeFn](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulhom-coefn.md) | 140 | `declaration-track:eac5d7709e6fcb768f5d2ed5d7ed864505c9713c9f13515c85d3dd9f03b08f95` |
| 13 | `def` | [MulHom.compLeft](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulhom-compleft.md) | 149 | `declaration-track:c068218b8fb666178c5b2bb38acfec7c97659cdd35752dea17cfdc800f77e41a` |
| 14 | `def` | [MonoidHom.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-pi.md) | 165 | `declaration-track:8e06f5796a1fdcff040c1d9dd92e189f15d73323f7d515c7de8b97b309a643b8` |
| 15 | `theorem` | [MonoidHom.pi_injective](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-pi-injective.md) | 177 | `result-track:7f49643eef9bb05cb35982f4cf03103441801032f4a2510ed29aefb9b5e14478` |
| 16 | `def` | [Pi.evalMonoidHom](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-evalmonoidhom.md) | 196 | `declaration-track:7270e387a647de78166050415ab934583a8389d9220461e0553bd1d89d1f6a76` |
| 17 | `lemma` | [Pi.coe_evalMonoidHom](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-coe-evalmonoidhom.md) | 202 | `result-track:566dea0ca9ef6cc11cda203251c798890bf97f5b3509fd345e2796b26acacbfe` |
| 18 | `def` | [MonoidHom.piMap](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-pimap.md) | 211 | `declaration-track:0cc733a03fead13c067aeaac695c3163b25603015c2ed11e1e8e34a1d0cc72af` |
| 19 | `def` | [Pi.constMonoidHom](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-constmonoidhom.md) | 217 | `declaration-track:d624cd54e901b832a4c0918446c0ce46c81ebe87ea1b7163dd38bdec25751889` |
| 20 | `def` | [MonoidHom.coeFn](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-coefn.md) | 229 | `declaration-track:dfcca712674f2adb580b4c0a51d14f52fee3b9810010b0d801464b9f399a727f` |
| 21 | `def` | [MonoidHom.compLeft](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-compleft.md) | 239 | `declaration-track:c95c79eecee0ed61510908c1a9de8fb065b3c52e6ca0bbd96fe33e8619c803f4` |
| 22 | `def` | [OneHom.mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/onehom-mulsingle.md) | 263 | `declaration-track:82c125c8b8839cbb8c904e33f893a7171ab58f25081f33a5ecefac63747c9395` |
| 23 | `theorem` | [OneHom.mulSingle_apply](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/onehom-mulsingle-apply.md) | 268 | `result-track:662bc008156ab7522c64ee7c318a76b4f3a5d6d0def3ba8ae91821b32411f4ae` |
| 24 | `theorem` | [OneHom.coe_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/onehom-coe-mulsingle.md) | 272 | `result-track:e53cc4c087c357d2f0ff7bdf79012d58fbec9b8b94c50cc0cc1003c95fc12549` |
| 25 | `def` | [MonoidHom.mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-mulsingle.md) | 285 | `declaration-track:529fa687412d5e4735beb73c180e1b8ffde8ab48c3b3de108747f97ad6f548b7` |
| 26 | `theorem` | [MonoidHom.mulSingle_apply](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-mulsingle-apply.md) | 289 | `result-track:5719176b75c20ba1315314a795f7ad9a7379d31ad83522f718146bac76d1a600` |
| 27 | `theorem` | [MonoidHom.coe_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/monoidhom-coe-mulsingle.md) | 294 | `result-track:1108707f8d6c286b9d53703d0b13300dd99555c17aaf15f4d4e5014dc48fab58` |
| 28 | `theorem` | [Pi.mulSingle_sup](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-sup.md) | 298 | `result-track:4f7cfc2f65e28806777098bd6f1adb8048c752d6da50376a121c3e0c12931ee8` |
| 29 | `theorem` | [Pi.mulSingle_inf](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-inf.md) | 303 | `result-track:35ce604b6e7540f8aeba133473192a7194e269910a010c48919c6fca1270fade` |
| 30 | `theorem` | [Pi.mulSingle_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-mul.md) | 308 | `result-track:671a94a4db19114e0ac378205a578d2227919141153995409cffd588e76631c9` |
| 31 | `theorem` | [Pi.mulSingle_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-inv.md) | 313 | `result-track:0795056fa96212daa82e0957cf202b2a1715c0f04f0f8e1e75cf14f439c207ca` |
| 32 | `theorem` | [Pi.mulSingle_div](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-div.md) | 318 | `result-track:7f5d5ab875695e0f69c8dabfe4248baf9a594dd3ca5a61a26e2f35b22a8ce15b` |
| 33 | `theorem` | [Pi.mulSingle_pow](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-pow.md) | 323 | `result-track:0fd095cecdd5f8c63c7661672027bcdc7fa419c50882ed1ab7c130777524cda1` |
| 34 | `theorem` | [Pi.mulSingle_zpow](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-zpow.md) | 328 | `result-track:25eeb391b94a4aef3846b0cded6ba97a1d3b41dc0bb21c3a9552c21fd6c8f6b5` |
| 35 | `theorem` | [Pi.mulSingle_commute](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-commute.md) | 339 | `result-track:5288fb45b552d5b8bf85ea24085be7e0f27a256fb7db7e27992aa8a7061db17e` |
| 36 | `theorem` | [Pi.mulSingle_apply_commute](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-apply-commute.md) | 346 | `result-track:b75a08dda16a23b447f6060e118815f1b09070523bc22b1bf24295663025258b` |
| 37 | `theorem` | [Pi.update_eq_div_mul_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-update-eq-div-mul-mulsingle.md) | 353 | `result-track:f47f37f6b878e3b93613a0d411f5dedce6cca2a3df6c2b497de97e44c3f2cf7e` |
| 38 | `theorem` | [Pi.mulSingle_mul_mulSingle_eq_mulSingle_mul_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-mulsingle-mul-mulsingle-eq-mulsingle-mul-mulsingle.md) | 361 | `result-track:6dab9aaab25bbb586cc6d508d266fb362fcca07cce0d861a0df5bb571315bfea` |
| 39 | `theorem` | [SemiconjBy.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/semiconjby-pi.md) | 379 | `result-track:10cdc7ec3f6aca7dcaf7663d7f715a6639dc662707b9ed2023472888bafb340d` |
| 40 | `theorem` | [Pi.semiconjBy_iff](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-semiconjby-iff.md) | 384 | `result-track:1dcbd532e3e8d2470d529877ba42c2cca574ace0c061698666b8732b20a51e33` |
| 41 | `theorem` | [Commute.pi](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/commute-pi.md) | 388 | `result-track:fe0a134b089df841488401fbd544ae6660c5d5b149d42f5ffdfd74f5285bf39a` |
| 42 | `theorem` | [Pi.commute_iff](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/pi-commute-iff.md) | 391 | `result-track:5c4d0abf7a9e8bbc4bd4cb666e404c21a44a3ee56b8230c76b923fb9790ce589` |
| 43 | `theorem` | [update_one](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/update-one.md) | 398 | `result-track:1e81c8999cb7e90620cb7a3d12f5b1e4a76a457aa39da0d2f52f02f39f5a00b0` |
| 44 | `theorem` | [update_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/update-mul.md) | 402 | `result-track:14898fde093452ebdfb1e49ed0b7ea654ea132ab7c3edee9414c1e12008f495a` |
| 45 | `theorem` | [update_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/update-inv.md) | 407 | `result-track:ef7e4f53c46b76fde8f28f5fb68d4ca7ea8a817cc9fb289bf45ec826ba04b11b` |
| 46 | `theorem` | [update_div](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/update-div.md) | 412 | `result-track:b13d3518eee59b4c49ca368e20d92b9d30b2e21425be148430fe5ae1d6907515` |
| 47 | `theorem` | [const_eq_one](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/const-eq-one.md) | 419 | `result-track:45314d5d7308e2ea3dbc327c584d9decdd79dc4925b29914b7fca14b20d21507` |
| 48 | `theorem` | [const_ne_one](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/const-ne-one.md) | 423 | `result-track:1f6117b601c426f618020805c41d1c046c79bc521a05097bf83e280b6ef3d80e` |
| 49 | `theorem` | [Set.piecewise_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/set-piecewise-mul.md) | 431 | `result-track:d774f421b8155ce51adc45c6471dfe104ed89b095bf873ba56bf01926d6c8613` |
| 50 | `theorem` | [Set.piecewise_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/set-piecewise-inv.md) | 437 | `result-track:f7cbc4c50af90275582607bd03048cea7b561fdc5dd88a054233728159002821` |
| 51 | `theorem` | [Set.piecewise_div](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/set-piecewise-div.md) | 442 | `result-track:c946b606bec8e040ef78481358836fd6d8e3669a6e069bcde0bf2b1cac978fa5` |
| 52 | `def` | [Function.ExtendByOne.hom](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/function-extendbyone-hom.md) | 456 | `declaration-track:f8f4a14c10c6c7b167f8bebdecf2dae59630b9da99ff9b56734cb333b98200d7` |
| 53 | `theorem` | [mulSingle_mono](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulsingle-mono.md) | 469 | `result-track:7c81ca4b591b5e5b635063d956697a35fd713988877b84d45467e227c578e7bc` |
| 54 | `theorem` | [mulSingle_strictMono](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulsingle-strictmono.md) | 473 | `result-track:699a17b6a1ad0da07c77b53fa8877c58d0f4a455d1665547576794042fd039b2` |
| 55 | `lemma` | [mulSingle_comp_equiv](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/mulsingle-comp-equiv.md) | 477 | `result-track:19849e34ca46640326eaa428896af086d2bf9749d1fe5be63f17b0560b128017` |
| 56 | `theorem` | [curry_one](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/curry-one.md) | 489 | `result-track:0792890b82b874e9e619e600de394037704a8a56ec449da8e425ee16d9e95232` |
| 57 | `theorem` | [uncurry_one](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/uncurry-one.md) | 493 | `result-track:24cc6b1c9849bbe0aceb822888d854df1b5189a8a1db1f6da2e40e1927b64932` |
| 58 | `theorem` | [curry_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/curry-mul.md) | 497 | `result-track:77af918653204015953d61429062ff6e91cc092a63304e8729c1b0727fdb8df7` |
| 59 | `theorem` | [uncurry_mul](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/uncurry-mul.md) | 502 | `result-track:ab852022ca5894e9d6d89c41f7a9556567c98474e473d59ab5705f548bcbc3af` |
| 60 | `theorem` | [curry_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/curry-inv.md) | 507 | `result-track:43f8f7a223e5bc83b904b2b1aab66481e0f249c8a260ff4f707bfc3b6ad78bbe` |
| 61 | `theorem` | [uncurry_inv](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/uncurry-inv.md) | 512 | `result-track:38ee9d9b5d59a08e11ef26d0ae4d88ee2ebabc4c6b0c064008646f3741cbf9ec` |
| 62 | `theorem` | [curry_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/curry-mulsingle.md) | 517 | `result-track:e4ef46dc130be4b406ae22e9115a63e21c2c2660af775c95974750e3100b9863` |
| 63 | `theorem` | [uncurry_mulSingle_mulSingle](../../../../GroupTheoryAndGeneralizations/PiLemmasNamespacedPublic.lean/declarations/uncurry-mulsingle-mulsingle.md) | 523 | `result-track:228560a4a776e0b0978ad607420605cddc75275ccd2e2d4f9388dcb15a48fc3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5319b7c334cd725a6b527b6aa90c0004cd544f5acfc6687e64cfb99aa188c34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Variantd3a27c45b5501cecb7c4f4deb2bb49e385cfa15285454c909769df077f62cc41.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lemmas/Variantd3a27c45b5501cecb7c4f4deb2bb49e385cfa15285454c909769df077f62cc41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
