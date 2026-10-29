# Verification target: Norm Le One Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22ee702d4e5918abbd259fc06dfc7d00056637d7",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22ee702d4e5918abbd259fc06dfc7d00056637d7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean.json)

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
| 1 | `theorem` | [logMap_normAtAllPlaces](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/logmap-normatallplaces.md) | 140 | `result-track:e45af36ef3961cf676750c7f0c9543bbaa2d49e371061a13ab94278702b8e22d` |
| 2 | `theorem` | [norm_normAtAllPlaces](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/norm-normatallplaces.md) | 145 | `result-track:6db8ecbea5a3f3e4bb254a54388e160417304ee7b63c7698a63062d3f0250982` |
| 3 | `theorem` | [normAtAllPlaces_mem_fundamentalCone_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/normatallplaces-mem-fundamentalcone-iff.md) | 150 | `result-track:debb93dfffe3feba568829c59c8c82818d95147ecc8e4067b0f402889bc72aee` |
| 4 | `abbrev` | [normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/normleone.md) | 166 | `declaration-track:0f79f43d4bb30b9098d9be4b9e773c2a0fbc472ad7f20086cd143ed9ff228107` |
| 5 | `theorem` | [mem_normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/mem-normleone.md) | 170 | `result-track:b81abb201272b7e7a11d236f266630f8854ba8c89ea004cc114ab7f70e2df103` |
| 6 | `theorem` | [measurableSet_normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/measurableset-normleone.md) | 173 | `result-track:84c94191b90d3eb4cf1b61413c2256b2440f5413a61505ff3f49ec8686dea462` |
| 7 | `theorem` | [normLeOne_eq_preimage_image](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/normleone-eq-preimage-image.md) | 178 | `result-track:682e5b214716342ea2ee510f4b830cb77a2aee952a692a803bd7f344226849c7` |
| 8 | `theorem` | [normAtAllPlaces_normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/normatallplaces-normleone.md) | 187 | `result-track:7a6d76d5812deaca3950b094dff119a1e574b64b51b782121fa19318e4bc2b81` |
| 9 | `def` | [expMap_single](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-single.md) | 215 | `declaration-track:2d41aecf5117c172092156b07d55eb93fb400a198afa9360cf18e373e0678183` |
| 10 | `abbrev` | [deriv_expMap_single](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/deriv-expmap-single.md) | 232 | `declaration-track:458b5e3ae6f9d0c4a061560d4c0abc4198d4d39eba0633dd6ef3153197739597` |
| 11 | `theorem` | [hasDerivAt_expMap_single](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/hasderivat-expmap-single.md) | 235 | `result-track:0420435855990e88c0b8fd96215c2887000781ca3d9fd4bcbebb647b533412bb` |
| 12 | `def` | [expMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap.md) | 247 | `declaration-track:7f7368545c57fbf2ead48d3bb32d98a507ad4a7594ade74d625981e5ad0892b9` |
| 13 | `theorem` | [expMap_source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-source.md) | 252 | `result-track:b9ea14bf86092384ee7402c47e4c0a4b99f0f6011d34748fd1d621414adfef7d` |
| 14 | `theorem` | [expMap_target](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-target.md) | 257 | `result-track:273964333243d088c466181b0f6749ab16444a546fdff32c8bd5aef81629548b` |
| 15 | `theorem` | [injective_expMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/injective-expmap.md) | 262 | `result-track:69a4ecd112db9e97143d5a2dcf9fae061f92d06dd9d722d3560df998f622e9c1` |
| 16 | `theorem` | [continuous_expMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/continuous-expmap.md) | 266 | `result-track:b99ac6a4328e2ed848e611faff64ca9b103cd24fb2f8973ae3c34de7f692ca82` |
| 17 | `theorem` | [expMap_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-apply.md) | 273 | `result-track:95dfd77a4d3e996f557c854951238359cde67bf2dab65ff25528e404856b7c2e` |
| 18 | `theorem` | [expMap_pos](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-pos.md) | 276 | `result-track:ae3e163a3c8e07a5191d7d51c19ce9ec6084d75c9b954de3b453f1f038b0f703` |
| 19 | `theorem` | [expMap_smul](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-smul.md) | 279 | `result-track:e9fa6970f34663b6aa5cc8ed920dbacf67ff0da89e43d9e0c8d72e249548aaf8` |
| 20 | `theorem` | [expMap_add](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-add.md) | 284 | `result-track:f29e69a6ca18c85b49b14a4809fb0f057e4b23e20d9b3af49a365edc4decf9c8` |
| 21 | `theorem` | [expMap_sum](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-sum.md) | 289 | `result-track:46646fd010dd33df80173c2a6a8b5319fecf5de13721b4344d5a6578cc01aab4` |
| 22 | `theorem` | [expMap_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-symm-apply.md) | 295 | `result-track:8c52f6a4e770ba255a93e64a218fa72bdd9510d29cd180cd1c89032d3ca9ee99` |
| 23 | `theorem` | [logMap_expMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/logmap-expmap.md) | 298 | `result-track:5122c33817905b424209ae1a38a5391e8a4a00e2297fd885e1386666ff62a761` |
| 24 | `theorem` | [sum_expMap_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/sum-expmap-symm-apply.md) | 305 | `result-track:a2205ced3dfe557e518aa6d793bf4c237826339129bf6323df89f1f0e39c2dda` |
| 25 | `abbrev` | [fderiv_expMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/fderiv-expmap.md) | 314 | `declaration-track:9843296431a7d3b8de4a23460b0d6e5c74ba38d34844c0c265d36977d3ec0cfb` |
| 26 | `theorem` | [hasFDerivAt_expMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/hasfderivat-expmap.md) | 318 | `result-track:1e62b267388f8d2a5a085369174eb56f4a4180cadfb1d50c2b0f316cb2ff183b` |
| 27 | `def` | [equivFinRank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/equivfinrank.md) | 336 | `declaration-track:a36a2c5ad44db386ea530f2795dd4064fee9ea38bcbb50ea4f764916364ebae4` |
| 28 | `def` | [completeFamily](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/completefamily.md) | 346 | `declaration-track:82f75c775bdd098952f9c9cdba90aba40df914a33274c09619483f060a55a09a` |
| 29 | `def` | [realSpaceToLogSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/realspacetologspace.md) | 354 | `declaration-track:2018e5e4dc2631cf4f063a3d279cfd9d09286363016cafdb6dc668226ec7025a` |
| 30 | `theorem` | [realSpaceToLogSpace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/realspacetologspace-apply.md) | 359 | `result-track:131c9de63c7b5ab3df6016d90a68495a8de376994d2011dd41c42b48539e9bbf` |
| 31 | `theorem` | [realSpaceToLogSpace_expMap_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/realspacetologspace-expmap-symm.md) | 362 | `result-track:15d27c121d8ec59769119ddc1d5732a305738a3ca34bf0056f1c113deff0dac8` |
| 32 | `theorem` | [realSpaceToLogSpace_completeFamily_of_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/realspacetologspace-completefamily-of-eq.md) | 369 | `result-track:39238d35abfdd4a9cd13b4d18274d56b1a0ea31c3157b7c97dca5b58c411c0cc` |
| 33 | `theorem` | [realSpaceToLogSpace_completeFamily_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/realspacetologspace-completefamily-of-ne.md) | 375 | `result-track:a4bcc5f783e7ccf1b2362c6993a598a0001dcc4f3d5d09f9b8745aedd6c1eeb0` |
| 34 | `theorem` | [sum_eq_zero_of_mem_span_completeFamily](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/sum-eq-zero-of-mem-span-completefamily.md) | 382 | `result-track:dcdef2cc7e8d7d05a7f964316034c0f8300496aea5ff76136730cf008b823c23` |
| 35 | `theorem` | [linearIndependent_completeFamily](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/linearindependent-completefamily.md) | 396 | `result-track:9a5e24c6a2a80544d408fb8d7d218200421a1c25ed798570d4362427c3ee90f5` |
| 36 | `def` | [completeBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/completebasis.md) | 419 | `declaration-track:4ef56e1b21fcbd25df5a77ca933d831e0c0f557422a0f4b63a3c7bcd2a6c05f8` |
| 37 | `theorem` | [completeBasis_apply_of_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/completebasis-apply-of-eq.md) | 423 | `result-track:cb44f8666d5a1e5b56b8045796489c33bb26ac6b3cd40a6330ace2fb0cd34cf8` |
| 38 | `theorem` | [completeBasis_apply_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/completebasis-apply-of-ne.md) | 427 | `result-track:138d8de871eb272612d1e0e403b3e941d6a33498be54f6a9c7474cfdf62b837a` |
| 39 | `theorem` | [expMap_basis_of_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-basis-of-eq.md) | 432 | `result-track:2d0277ff71965b15fc89c134a8cd258bfdb23c70df491ded9e0996741c7b7490` |
| 40 | `theorem` | [expMap_basis_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmap-basis-of-ne.md) | 437 | `result-track:56ccea3f9a8300408b17af417df0e47da874b9613b0487777b636a715cf8aa37` |
| 41 | `theorem` | [abs_det_completeBasis_equivFunL_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/abs-det-completebasis-equivfunl-symm.md) | 442 | `result-track:1f3a0213c286805c91bff7213dc36f53b29420043f639c3088cdf2596d745911` |
| 42 | `def` | [expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis.md) | 469 | `declaration-track:ba60b89db08b954bcc7d1450f865d0cdcb2df293f2bc8fe7a1529a9cc765b672` |
| 43 | `theorem` | [expMapBasis_source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis-source.md) | 474 | `result-track:af717d4117375afd5064a21819c2f991943f4fa5a92e472a5694534b300e6bd7` |
| 44 | `theorem` | [injective_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/injective-expmapbasis.md) | 478 | `result-track:7bcdaaee6bd9df3b4306b9e1e1c58087c5f58c5d574ad2d86b0b7540a3e56d56` |
| 45 | `theorem` | [continuous_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/continuous-expmapbasis.md) | 482 | `result-track:605374ff936e21ea830e9de7ad807104271a039b0b37a50ac93babb7f96a23fb` |
| 46 | `theorem` | [expMapBasis_pos](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis-pos.md) | 488 | `result-track:fca90e7d2f9a541ca6eeca0318ea387273dc224b8fcb37e819d8e3d2765f31b9` |
| 47 | `theorem` | [expMapBasis_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis-nonneg.md) | 491 | `result-track:52f14b106bb0e77efd4ea3785d4ff13ae2a1b10c92aad05502e2438e6b41b58b` |
| 48 | `theorem` | [expMapBasis_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis-apply-source-edition-2.md) | 494 | `result-track:33772e2799198e077092a3bdede83585c6be273706824ee00b19c9dba61c4dcd` |
| 49 | `theorem` | [expMapBasis_apply'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis-apply-source-edition-3.md) | 498 | `result-track:b1db648c35f07556586e4088e9683f6a135820e226e9897ed0bc09b523b7df74` |
| 50 | `theorem` | [expMapBasis_apply''](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis-apply.md) | 508 | `result-track:035b7bfb6d7d9073f596ab3d73e97e06ebfb25432870fabacd068c92e5eb2fc1` |
| 51 | `theorem` | [prod_expMapBasis_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/prod-expmapbasis-pow.md) | 515 | `result-track:b6dfa7606ac34ed280c86f1eae30fa4308c33279da0e4f733b6fbe942ae2e3c4` |
| 52 | `theorem` | [norm_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/norm-expmapbasis.md) | 524 | `result-track:af15699f676157882ef1a748596ba80f922d0bc2b87b885b0718c5e118fe3360` |
| 53 | `theorem` | [norm_expMapBasis_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/norm-expmapbasis-ne-zero.md) | 530 | `result-track:c1bfa497aa772ac6c17a91b5c8e1c60fc5a840bb7685bc97dbbe7e393787d343` |
| 54 | `theorem` | [logMap_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/logmap-expmapbasis.md) | 535 | `result-track:165bee2460aa0a129354a97ff4f8ea6c9cd8bab268fb9abc07baeba9c3e1ce91` |
| 55 | `theorem` | [normAtAllPlaces_image_preimage_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/normatallplaces-image-preimage-expmapbasis.md) | 555 | `result-track:b7ab81f950283c865d925567727cf356cfa88e24899e2c79796b2809139e5338` |
| 56 | `theorem` | [prod_deriv_expMap_single](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/prod-deriv-expmap-single.md) | 562 | `result-track:df0d3deebbdd4e79cbc46fb90314526a51bade08e0f98a885f3e9b350ea3e8d8` |
| 57 | `abbrev` | [fderiv_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/fderiv-expmapbasis.md) | 579 | `declaration-track:e78b408638a784cf280eaa3937645afe1294d96cd91a5e8195a2163b34d8a03a` |
| 58 | `theorem` | [hasFDerivAt_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/hasfderivat-expmapbasis.md) | 583 | `result-track:604eb6dd9c190a6190c634d35182aef2a35833f7cd135dafe3239baa99cad3f3` |
| 59 | `theorem` | [abs_det_fderiv_expMapBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/abs-det-fderiv-expmapbasis.md) | 589 | `result-track:0c68967ffd8a7e23151ebe8cafd24746c9cb98ac4364624c6030b8c10555eff6` |
| 60 | `theorem` | [setLIntegral_expMapBasis_image](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/setlintegral-expmapbasis-image.md) | 607 | `result-track:681fb48a25994189bd8c90c475e0e036317c5953688ad48a421713a1921086b7` |
| 61 | `abbrev` | [paramSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/paramset.md) | 641 | `declaration-track:966a97e4ab504fc62c7dfe89a39fc8a2c78414a732d85b5224cac156ba0f3780` |
| 62 | `theorem` | [measurableSet_paramSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/measurableset-paramset.md) | 644 | `result-track:6c3783db732d87db242a15057515524dfd0faa85df998bb5c8aaf10fadd0db7b` |
| 63 | `theorem` | [interior_paramSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/interior-paramset.md) | 652 | `result-track:aa8848d11c6834c263c8438df747b5e0734260f8022ca8d101e30f3f722e1ce3` |
| 64 | `theorem` | [closure_paramSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/closure-paramset.md) | 657 | `result-track:e61acaf48e9fd48475415e6cd0d819e6bc32e364cff68d905461a93347823124` |
| 65 | `theorem` | [normAtAllPlaces_normLeOne_eq_image](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/normatallplaces-normleone-eq-image.md) | 661 | `result-track:ba2c3fafde73025a0eb26246a5bf4316c919821a28ac9a9430b50cd3a40f8e7b` |
| 66 | `theorem` | [normLeOne_eq_preimage](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/normleone-eq-preimage.md) | 680 | `result-track:f6d1c10d4e764eb19defb144429dede21690f7d0c14939c160c8584ac833937e` |
| 67 | `theorem` | [subset_interior_normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/subset-interior-normleone.md) | 684 | `result-track:9028c7fd081c9a66d0786b7088381c8605bd3151cbb0e94c3ca96a70e80b3a10` |
| 68 | `theorem` | [closure_paramSet_ae_interior](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/closure-paramset-ae-interior.md) | 695 | `result-track:e2c05c1ebd5f762e8ae3a4a8358141757841e754cf1c7580e8d7d6d586cffffc` |
| 69 | `theorem` | [setLIntegral_paramSet_exp](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/setlintegral-paramset-exp.md) | 702 | `result-track:27c933d5e619e920b6ffcd28b47df84cde7d9b367b76a5edb78bb9c1bab0d1b8` |
| 70 | `abbrev` | [compactSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/compactset.md) | 730 | `declaration-track:f2b256d59c574baf42399c3c207d621911479a8918aea53cebc60dea9e7f9548` |
| 71 | `theorem` | [isCompact_compactSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/iscompact-compactset.md) | 733 | `result-track:b61ee96d2aacf2a92b07f9a2f2fa639f78e4f112e7b28277ba097884c8cc9cd5` |
| 72 | `theorem` | [zero_mem_compactSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/zero-mem-compactset.md) | 741 | `result-track:7f06c20b37d33812e3d773030ca4c7fc0e08cd663885e3bf54fc49536ebe2844` |
| 73 | `theorem` | [nonneg_of_mem_compactSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/nonneg-of-mem-compactset.md) | 746 | `result-track:ec604acf961bbccdbe92a0c2db52a1d2828e388081a9bdef6df10d0398299926` |
| 74 | `theorem` | [compactSet_eq_union_aux₁](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/compactset-eq-union-aux.md) | 752 | `result-track:32dd8455c8a6d2950fd83d6aac764af0746b71529d6472465387273f3c69d1d4` |
| 75 | `theorem` | [compactSet_eq_union_aux₂](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/compactset-eq-union-aux-source-edition-2.md) | 773 | `result-track:b453eac69dff0f842c89cecbbda615638a79268beae385f3651a6fcab82cb2e4` |
| 76 | `theorem` | [compactSet_eq_union](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/compactset-eq-union.md) | 787 | `result-track:aae242462fc7660c74796609858371d58b87033ae3fb8e06cbe383d66fb252f1` |
| 77 | `theorem` | [expMapBasis_closure_subset_compactSet](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/expmapbasis-closure-subset-compactset.md) | 796 | `result-track:919a6a30e9235241c88ecdfdd569f082de22b43b48e982fb2c9037d1aca939fa` |
| 78 | `theorem` | [closure_normLeOne_subset](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/closure-normleone-subset.md) | 801 | `result-track:87989e52f96c2aef07b7cd119cd8e61a80f433a46ff0cd9453e1aa2a9e94e574` |
| 79 | `theorem` | [compactSet_ae](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/compactset-ae.md) | 810 | `result-track:054f21a8b8280f8650be7ec0f84806cfc64117a6cb8e223fd7c4ef10391784cf` |
| 80 | `theorem` | [isBounded_normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/isbounded-normleone.md) | 823 | `result-track:4ec0cc49b845e8d8d07b3e7f7236c62b419b04266e0c31e1542a0371ac2d7bf6` |
| 81 | `theorem` | [volume_normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/volume-normleone.md) | 838 | `result-track:5cc113d67905dbba27b5a82f94fb1b1433989b3dc3aa1884292408cf9f6374b3` |
| 82 | `theorem` | [volume_interior_eq_volume_closure](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/volume-interior-eq-volume-closure.md) | 854 | `result-track:9251f37da191da0736868ad4d26dcafd96c8c9873153de1c3d674e48bbec78ef` |
| 83 | `theorem` | [volume_frontier_normLeOne](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NormLeOnePublic.lean/declarations/volume-frontier-normleone.md) | 875 | `result-track:a03067a830e319188959ddd4114888d7ed97dafb3a54fe1ad82a0c415f9b0b2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65aecea6634c5e8240ebec71acf1673e4c5ec4b52bdfd08cfa98378cebcc24d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
