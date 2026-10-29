# Verification target: Topology Partition Of Unity Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd90182ed9dfeb4dd376fad5798aa979b6b17af9",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd90182ed9dfeb4dd376fad5798aa979b6b17af9`.

Source path: `GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartitionOfUnity](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/partitionofunity.md) | 109 | `declaration-track:059fec5d685f6b0279ef7531d1fd532dba991bcebbc244a8bef9e4315d5b811a` |
| 2 | `structure` | [BumpCovering](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/bumpcovering.md) | 136 | `declaration-track:dfcbd6b4fa9f665d8234f9c2dd19ef0214fe8c5ea0116d333e659e1829eff8d7` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/instance.md) | 156 | `declaration-track:0b1e4b512f90a831306f1ea369fd4fd55786dd5683552ee1a3a93759313d381b` |
| 4 | `theorem` | [locallyFinite](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/locallyfinite-source-edition-2.md) | 160 | `result-track:fcff824260486db13a44cc49aab5edd584771b78fcc9f80b9441bd7970543147` |
| 5 | `theorem` | [locallyFinite_tsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/locallyfinite-tsupport-source-edition-2.md) | 163 | `result-track:386113c6ba74a80bab950ae694076b88049216a934d003a0affd38f5ece8e588` |
| 6 | `theorem` | [nonneg](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/nonneg-source-edition-2.md) | 166 | `result-track:c0a7a89ae488f8f763ae37f3861387a9ab9f1787ee5a701a2d88f8fce6e1679f` |
| 7 | `theorem` | [sum_eq_one](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-eq-one.md) | 169 | `result-track:7cb56a073f7f5fb5ac99981b9ae86095de2edba9387d92045bf771b021e69b96` |
| 8 | `theorem` | [exists_pos](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-pos.md) | 174 | `result-track:88d4530228403b4139707c2f129ddddbe431f9e4925057ea896cd2367ef14ca2` |
| 9 | `theorem` | [sum_le_one](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-le-one.md) | 179 | `result-track:dc9cdff35e3960004c4e7b7f3138db31ef823b944b84558e890455be4466ad20` |
| 10 | `theorem` | [sum_nonneg](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-nonneg.md) | 182 | `result-track:86f2e7757f18362e1c513e3ffd24c43e3a3a954162e5f9d7b2682d4f4721ad11` |
| 11 | `theorem` | [le_one](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/le-one.md) | 185 | `result-track:03e025d6ffe92ad3c17927b738e0c119069c603c409f17b394d7b6bc9712ceed` |
| 12 | `def` | [finsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/finsupport.md) | 194 | `declaration-track:c7ae504896e40ff2e9ce52797aedddc9b4fae65cef6915b3f5950f1daa00754c` |
| 13 | `theorem` | [mem_finsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/mem-finsupport.md) | 197 | `result-track:d75a4e4636d81620ae96eefb6a550fc517dde751afe465969c5df28afb397c54` |
| 14 | `theorem` | [coe_finsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/coe-finsupport.md) | 202 | `result-track:6037a797662541bb524ec0451ccbc61cf53343a87fc3ad9524620a94aa65eee9` |
| 15 | `theorem` | [sum_finsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-finsupport.md) | 209 | `result-track:4c795808ea33739a5161ccc9f50ae57fce6dea816f5823fce8ec42e573a0a0af` |
| 16 | `theorem` | [sum_finsupport'](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-finsupport-source-edition-2.md) | 212 | `result-track:99e708798f7470bcdd15028a2e2818d397a158cda23f4ef3930dd80f347b696c` |
| 17 | `theorem` | [sum_finsupport_smul_eq_finsum](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-finsupport-smul-eq-finsum.md) | 223 | `result-track:717ffc996494935bfc3ca9ee233f1091825c7e139c3b260a2d2fda5da6535fa0` |
| 18 | `theorem` | [finite_tsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/finite-tsupport.md) | 238 | `result-track:fbaf01f89a3a58110e1071b763f203e019688035c45009afd64e5aeb72d907af` |
| 19 | `def` | [fintsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/fintsupport.md) | 247 | `declaration-track:99bab585bff2758b14004184bbc6017e86053b92884ea61a71459e14aab9f796` |
| 20 | `theorem` | [mem_fintsupport_iff](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/mem-fintsupport-iff.md) | 250 | `result-track:958384a458d9b3065cbd10a1d6f01c38e244f226a7c3488f161ff3bd1c377256` |
| 21 | `theorem` | [eventually_fintsupport_subset](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/eventually-fintsupport-subset.md) | 253 | `result-track:f07c224585765cbaddeb083e30c691d868e7771a983ea698b477260d45a24173` |
| 22 | `theorem` | [finsupport_subset_fintsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/finsupport-subset-fintsupport.md) | 260 | `result-track:3ce132c3c8e770be36ccb95d255a3e99ba1e649571c324ec3d65dff5a1b751d6` |
| 23 | `theorem` | [eventually_finsupport_subset](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/eventually-finsupport-subset.md) | 265 | `result-track:d59d2181f91e62903a27117556a0e5bc24fe94b0a41fca323697beab33b5fba7` |
| 24 | `theorem` | [continuous_smul](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/continuous-smul.md) | 274 | `result-track:9bd5fb99e5f7b3361feb5dec6d357400e5889fa2ffa7c8b313eb09f6fa51a6cb` |
| 25 | `theorem` | [continuous_finsum_smul](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/continuous-finsum-smul.md) | 283 | `result-track:42df6649097c531657d0a9b2f10fef24138df844ec4ce01cf5aa574f79a57549` |
| 26 | `def` | [IsSubordinate](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/issubordinate.md) | 291 | `declaration-track:3d982593c5829fee611543fef45e1161c2932fb3ed42ab68525cc1021155a949` |
| 27 | `theorem` | [exists_finset_nhds'](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-finset-nhds.md) | 296 | `result-track:4c77459db5d2575ed2411303e88488bbbae8685d855bfba7e155a1e7aaf91366` |
| 28 | `theorem` | [exists_finset_nhds](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-finset-nhds-source-edition-2.md) | 304 | `result-track:f16f7dab415c11fdd5ebdab8ab26e04c4aed75c5d4693845b574407cfdfe3baf` |
| 29 | `theorem` | [exists_finset_nhds_support_subset](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-finset-nhds-support-subset.md) | 310 | `result-track:2faf916318f4cd3076ac89251fe562570d429e649d022b364a3454818b1c0213` |
| 30 | `theorem` | [IsSubordinate.continuous_finsum_smul](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/issubordinate-continuous-finsum-smul.md) | 318 | `result-track:359ad4f1648ea347eb2dc12e0b6f5d56cfe6b78ec18c54af801c5f487a8ea9ad` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 330 | `declaration-track:9dbf35bc294336828065e395d1447d6f8bd7ecec1fec45aedc0d9dc8bebd9a25` |
| 32 | `lemma` | [toFun_eq_coe](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 334 | `result-track:17589c862834416789dfb255ab0273a532510110654245249e58ee18f779e04d` |
| 33 | `theorem` | [locallyFinite](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/locallyfinite.md) | 336 | `result-track:498be17018c7624c7877fe302f02af30ef47958a9f0b81c8c62c3ea8a09de838` |
| 34 | `theorem` | [locallyFinite_tsupport](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/locallyfinite-tsupport.md) | 339 | `result-track:33f5438642ca0d8630a844eb8aa57250be085999eec7532d5f86c389c5a0e567` |
| 35 | `theorem` | [point_finite](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/point-finite.md) | 342 | `result-track:e38f3457926ac1dd70bfd2b83e55c4350bdaaa9db677b68677b0b3526373bda1` |
| 36 | `theorem` | [nonneg](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/nonneg.md) | 345 | `result-track:44bb610b58887ac572a850a8c9cd5dfd4c13688fd32626611e4575f23933799d` |
| 37 | `theorem` | [le_one](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/le-one-source-edition-2.md) | 348 | `result-track:6f3aeb4a80d23011d505e1754a0da83781ec2e1571825496371d8001072a7e22` |
| 38 | `def` | [single](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/single.md) | 354 | `declaration-track:646c067f50848f293d00cb2d62119ccafa6f551bbdeed77e6fa9d71851db95f8` |
| 39 | `theorem` | [coe_single](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/coe-single.md) | 368 | `result-track:bbba569a166eb5dc48c9d1d8529f290a6a70a7584c92fd2d325302e8d40450b0` |
| 40 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 371 | `declaration-track:feca05c51f36dd9fef876e5a60333b198ba921b6d81d998ffdbe10613f927d20` |
| 41 | `def` | [IsSubordinate](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/issubordinate-source-edition-2.md) | 376 | `declaration-track:fd42c37a601004b7b1b44d58553acb0f31da5c2847633e3608568235c2f18eb1` |
| 42 | `theorem` | [IsSubordinate.mono](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/issubordinate-mono.md) | 379 | `result-track:f548c70d187e9e4f70e80bcd95b4b64029976b686437059b79761e4740671c6c` |
| 43 | `theorem` | [exists_isSubordinate_of_locallyFinite_of_prop](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-of-locallyfinite-of-prop.md) | 389 | `result-track:c5ba6ffe935093e22d7f68790fa188ad3e1b50b8b776733d830448b323e6c1f5` |
| 44 | `theorem` | [exists_isSubordinate_of_locallyFinite](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-of-locallyfinite.md) | 414 | `result-track:2fe30d27d7192a0bd17f30c6d87c61b3e36499eb4ce524882f671a30d98cf859` |
| 45 | `theorem` | [exists_isSubordinate_of_prop](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-of-prop.md) | 428 | `result-track:c369465592beaed7100300cda2f7a97c9e827e41f5cf0d815024c5e949b07f4c` |
| 46 | `theorem` | [exists_isSubordinate](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-source-edition-2.md) | 439 | `result-track:93d55bfe1fd376da5a03a1a7a584795567e2a8c7dbec1590223315e5be4ccbd6` |
| 47 | `theorem` | [exists_isSubordinate_of_locallyFinite_of_prop_t2space](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-of-locallyfinite-of-prop-t2space.md) | 451 | `result-track:4c8b6c376b9d34b0e89f8ef6ee9e54bcb65a687a15fab5080e2fb933d07b22fe` |
| 48 | `theorem` | [exists_isSubordinate_hasCompactSupport_of_locallyFinite_t2space](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-hascompactsupport-of-locallyfinite-t2space.md) | 478 | `result-track:1d395bd7152af7f525c567c0a0e0435bae7e8ade36e4c8d9c779b2a9e2543ff2` |
| 49 | `def` | [ind](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/ind.md) | 491 | `declaration-track:c6f5fdc0932d5d75c3f567ff71e1ef9b66a7070add33039d2cd33c5f4bf1d07b` |
| 50 | `theorem` | [eventuallyEq_one](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/eventuallyeq-one.md) | 494 | `result-track:93900363054f7c8f77dca3a1233084bde39325e6b78432182ec459f5d6da3661` |
| 51 | `theorem` | [ind_apply](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/ind-apply.md) | 497 | `result-track:3f882b1f3d3e8739ccce7feefd38d3430e294046c36831ba9dd7bc93d5e0fe0c` |
| 52 | `def` | [toPOUFun](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/topoufun.md) | 510 | `declaration-track:315056ed1d7bbca9066e895036b05cfd2ef4975f496b1661d28a0f9f62c8f404` |
| 53 | `theorem` | [toPOUFun_zero_of_zero](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/topoufun-zero-of-zero.md) | 513 | `result-track:bfd3fbdb2222114cf31f8973d204727f554d9b139b4430960757b71b03791583` |
| 54 | `theorem` | [support_toPOUFun_subset](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/support-topoufun-subset.md) | 516 | `result-track:b46dec6807789e0f4bd8fdd2e6d8d821494326509ee231c7ea60c739ae189b00` |
| 55 | `theorem` | [toPOUFun_eq_mul_prod](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/topoufun-eq-mul-prod.md) | 520 | `result-track:6e687f34a6e0f82f3ccf0ed8bfcd1b2f35ee2f631f25122868e8f16024d0b58f` |
| 56 | `theorem` | [sum_toPOUFun_eq](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-topoufun-eq.md) | 528 | `result-track:b4512145824a9bfad35522677092199ef777eb7a948e4d3b459700eb9de3bed8` |
| 57 | `theorem` | [exists_finset_toPOUFun_eventuallyEq](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-finset-topoufun-eventuallyeq.md) | 546 | `result-track:b05824d100edb5ab69989452645a5562bf2266787e926ce4fbd2e6f0d5ab40e6` |
| 58 | `theorem` | [continuous_toPOUFun](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/continuous-topoufun.md) | 556 | `result-track:00a83165f8b149bedae83722e37d879d1c07d22626e86f57cbc1ac1e586dd1b8` |
| 59 | `def` | [toPartitionOfUnity](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/topartitionofunity.md) | 569 | `declaration-track:e83207c32b7034812465e34f847b8f88afbbcac3082ecb9e613cc6fd70a9ec22` |
| 60 | `theorem` | [toPartitionOfUnity_apply](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/topartitionofunity-apply.md) | 584 | `result-track:5f80c0650f6189ea2c82e93c632864373a1e18d107c75225a605f3e0cadb7637` |
| 61 | `theorem` | [toPartitionOfUnity_eq_mul_prod](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/topartitionofunity-eq-mul-prod.md) | 588 | `result-track:6cd3823bfddd344e3de40331f907dd223100660e3a985e712258047038b036fa` |
| 62 | `theorem` | [exists_finset_toPartitionOfUnity_eventuallyEq](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-finset-topartitionofunity-eventuallyeq.md) | 594 | `result-track:4a21dd5dfdcb6c8d56799d8dae4cc5237d8d3f20ad0986a9d4a4b60e14c71207` |
| 63 | `theorem` | [toPartitionOfUnity_zero_of_zero](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/topartitionofunity-zero-of-zero.md) | 598 | `result-track:c234e36759ca1b689d5af180965d14061ca598badebf93a26a477135bf1f0d55` |
| 64 | `theorem` | [support_toPartitionOfUnity_subset](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/support-topartitionofunity-subset.md) | 602 | `result-track:a5587ee52fc07cc4a05cada08e83f7870d2c31f610b140c73e2076dcd68ca190` |
| 65 | `theorem` | [sum_toPartitionOfUnity_eq](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/sum-topartitionofunity-eq.md) | 606 | `result-track:31bf03e56e9551147d024c1c0dd0e904c05e917ed40521b2b29e138ae796b276` |
| 66 | `theorem` | [IsSubordinate.toPartitionOfUnity](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/issubordinate-topartitionofunity.md) | 610 | `result-track:6d59d68ec2358952bc13ffe2239fb85c16f8c0eb43660748d75671e32dfd1259` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 620 | `declaration-track:dea2c642464e87d83bb57bb4a46bf0337d1e8ceac1d6049cae16c397d8e4b2dc` |
| 68 | `theorem` | [exists_isSubordinate_of_locallyFinite](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-of-locallyfinite-source-edition-2.md) | 627 | `result-track:75c00b1ca11a4114f7990c1183a820324fc0ecdd90cf48b8d83c6a96e099a222` |
| 69 | `theorem` | [exists_isSubordinate](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate.md) | 635 | `result-track:7793f9c8a9cbc7fdbf5872db7fe2022b11a2e615beaaffc6f53ebccfa028d7c7` |
| 70 | `theorem` | [exists_isSubordinate_of_locallyFinite_t2space](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-issubordinate-of-locallyfinite-t2space.md) | 643 | `result-track:b20a7c766fb15cbcb7470665ffd068fef1db4455d94fe4bb8647287c8d0f822b` |
| 71 | `theorem` | [exists_continuous_sum_one_of_isOpen_isCompact](../../../../GeneralTopology/TopologyPartitionOfUnityNamespacedPublic.lean/declarations/exists-continuous-sum-one-of-isopen-iscompact.md) | 659 | `result-track:7260fad90d8c9a617998f25514462cec545b4321ac70be4ab25985b0dce99f11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fca06e2eab860ea18cf95399866b0de3d6768203f3ab91a0a0bbab7384e4efe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
