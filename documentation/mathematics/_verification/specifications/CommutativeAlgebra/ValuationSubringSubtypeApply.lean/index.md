# Verification target: Valuation Subring Subtype Apply

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7984ce1909c32310a0ed7719e002efbc0b423603",
  "lexical_observation_count": 133,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7984ce1909c32310a0ed7719e002efbc0b423603`.

Source path: `GRWTSK/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.ValuationRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AsSubring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Field` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ValuationSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuationsubring-source-edition-2.md) | 36 | `declaration-track:93b33fa3ed4b60e16ee3177713c1992a7979398029da80b22fda84caac1c98b8` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-14.md) | 44 | `declaration-track:dcd9187e37fc7b29217637c52f37b9721dec5b4183e09decae658bb258fc140a` |
| 3 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-carrier.md) | 51 | `result-track:15fdcc67ca62f42ca7b69ae82ea95702e24d1c0eb1fac6bc2ac9ec4e62f2a088` |
| 4 | `theorem` | [mem_toSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-tosubring.md) | 54 | `result-track:95366dbb00451bfb0c36b0be32140e1dfe729ecf30b6e22227b04a1558b7354b` |
| 5 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ext.md) | 57 | `result-track:5fd11856f2a5226b5909e7fa306e24a9a879d0240ebd1d7dd1699030d2a50d07` |
| 6 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/zero-mem.md) | 59 | `result-track:f9790b0a628c2d8dbe5a18592759e3e8e72299e2d6074c4777dc31c02c4a033a` |
| 7 | `theorem` | [one_mem](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/one-mem.md) | 61 | `result-track:b54f4ae600221846bdf7dfd476f10cc90271d870fc1f567f211e2cf2d73699ab` |
| 8 | `theorem` | [add_mem](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/add-mem.md) | 63 | `result-track:1296ad22fe87429846882429dea24fa854b867e8471a112a896ba3273fa649b9` |
| 9 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mul-mem.md) | 65 | `result-track:76ce948c6b2a87266ea958e517f0d966d26764515c51d685d9b3fcdd8c17752b` |
| 10 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/neg-mem.md) | 67 | `result-track:10071991c316fa4d168df9e1c7cac1b7972bd38aa0de9f752c131b2566388d8f` |
| 11 | `theorem` | [mem_or_inv_mem](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-or-inv-mem.md) | 69 | `result-track:b0ff2cdf67bc27bfdb5c592297ff1b416f7899d89777ec67674cf88f50e22840` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-4.md) | 71 | `declaration-track:5f81b9f357fd586770e64ede4b1996a765eedac81826fb2178b5f7f529db62d3` |
| 13 | `theorem` | [toSubring_injective](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/tosubring-injective.md) | 78 | `result-track:6012063c65cc5a293efca6f6f8ab673c82a60179b9f4a50ae6970c26b9212864` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance.md) | 81 | `declaration-track:06205477491704e0bf03be1ea8262839b0bda733bf0e8c563f6ee54b6a6c70a4` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-6.md) | 84 | `declaration-track:6a4c1e66e1e6e277dc0dcc2ec99313c8e1adea2e2c55d3088196b9901ace63d2` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-7.md) | 87 | `declaration-track:6db56d976c84466cbd472432a81e0cf6611d00cd5baa8d2b8b19955a27ab4df3` |
| 17 | `theorem` | [mem_top](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-top.md) | 90 | `result-track:dbee2ebe98610cc4ff84c8913635282137c4e4f1dfeffaf25277ab0b934fe891` |
| 18 | `theorem` | [le_top](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/le-top.md) | 93 | `result-track:822baead3998f6f95f1311935ee067ec9558bded248aa87a0a84ca7d26ea03fc` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-10.md) | 95 | `declaration-track:942992cab494bd7bec063a409f95de88a67c9339551cbae80b19f5026e1f0c0e` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-11.md) | 99 | `declaration-track:c19e308a55a370db50b949ec4421e9263e476ce7d47ac030ef63be6d47c6978a` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-13.md) | 102 | `declaration-track:dac4c36fdcd13977b61ff4c22fc01606bff02cf8b845921929f71b6c1fe34e60` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-2.md) | 124 | `declaration-track:1c1e9c7f09ac22755c55a4f7a80518d77bccd94d406d6789f5d9ffbe3d5b6e1b` |
| 23 | `instance` | [isLocalRing](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/islocalring.md) | 128 | `declaration-track:5d6eec4d6c624c3cccbe9b91bf4a5be0d16135680d75883c093b907d0cde6601` |
| 24 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/algebramap-apply.md) | 131 | `result-track:24158ec94446347cdda695d9e9adfd97c3c99e68e466f3d993a6cea91d3f2243` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-12.md) | 133 | `declaration-track:cfeb8a7eeaae9eed005bc63896024870781fd96529ec6a292a11df90cbddc2fa` |
| 26 | `def` | [ValueGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuegroup.md) | 145 | `declaration-track:de5716c3d17274358c16013397b2e68cd099fd1818121933d194a541b0babb50` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-5.md) | 150 | `declaration-track:697497a4199d307f3692ce2b3b9f52cc65bbc2bbddd4e8eaa4e9265aec4f14f0` |
| 28 | `def` | [valuation](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation.md) | 155 | `declaration-track:9082f61e99ff0bff5c30991e8f9b700ad30843f0dc23301df8046b38cf8b69f5` |
| 29 | `instance` | [inhabitedValueGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/inhabitedvaluegroup.md) | 158 | `declaration-track:35a9b99444775340f174b6e0b976fe433215704f307542acd9506d16d95f867a` |
| 30 | `theorem` | [valuation_le_one](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-le-one.md) | 160 | `result-track:d414b8953fba9135d513a95665d284bd57001496baab031acdbb74f9dba5ad89` |
| 31 | `theorem` | [mem_of_valuation_le_one](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-of-valuation-le-one.md) | 163 | `result-track:8ce639538bf0e4959faf875cc44f7a9608cd9c9d17203e1afc9a95d8a7eab14f` |
| 32 | `theorem` | [valuation_le_one_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-le-one-iff.md) | 167 | `result-track:79860d1ddb54a32596853b1492541b4f8a9759fcc537d39adeb77e22c61fd546` |
| 33 | `theorem` | [valuation_eq_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-eq-iff.md) | 170 | `result-track:89f0fb0a773b3a236fd001af5811131668bcf9e6385eef09ee5975d2239138f9` |
| 34 | `theorem` | [valuation_le_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-le-iff.md) | 173 | `result-track:89cb9ba56b043eca82590a91aa08ba0fd5707c525589acfc23ed96583ed3deac` |
| 35 | `theorem` | [valuation_surjective](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-surjective.md) | 176 | `result-track:08377b6912aadc2937da15b0f5f2412277bbb6f8d36ddf0196a29ca12fec8216` |
| 36 | `theorem` | [valuation_unit](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-unit.md) | 178 | `result-track:d38abb8bc1d942197176a8af38311ee9d0d41bc1de85ba5cb0dea234f601757b` |
| 37 | `theorem` | [valuation_eq_one_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-eq-one-iff.md) | 181 | `result-track:3519ff20ab4d1ed238eb061ce436dd589ce96dc4da506b19225ecaecf1967069` |
| 38 | `theorem` | [valuation_lt_one_or_eq_one](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-lt-one-or-eq-one.md) | 190 | `result-track:caf5bb55a0cd84a50c9e123b905c3ea508ad97d14068c63dfb2160183a102123` |
| 39 | `theorem` | [valuation_lt_one_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuation-lt-one-iff.md) | 193 | `result-track:edde4d8d40aff09299f7b544ad88e383fd361ff01a19160c31cdf10155f95856` |
| 40 | `def` | [ofSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofsubring.md) | 200 | `declaration-track:03d566c6ff1f2fd6fa18e3d1e21c0246abde31ecbc8acad7e643e8f2817a6360` |
| 41 | `theorem` | [mem_ofSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-ofsubring.md) | 204 | `result-track:4cbe39392844a291615499d1bb27bf4a064fb75120ec9f424ad5eade175d277e` |
| 42 | `def` | [ofLE](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofle.md) | 209 | `declaration-track:e3ae5236dc4139b0ec41c50d296ec71e234bf53847d2ff25171a99cc4f3d2ff3` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-9.md) | 214 | `declaration-track:76aa0f203b5c373ff6cd268d22ec415295bf65730f1b9af800a9fda671e0ad9e` |
| 44 | `def` | [inclusion](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/inclusion.md) | 222 | `declaration-track:43c701e250663f43b5e2c901687084d1b64abc0825ba94cbd6f4fc34a321ece3` |
| 45 | `def` | [subtype](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/subtype.md) | 226 | `declaration-track:386b69d7818d4d00c11d96c742c8161fed95ef45b5f30b751cae58e3b877dbfd` |
| 46 | `lemma` | [subtype_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/subtype-apply.md) | 230 | `result-track:0efd2e240d097f76f891dc87e3e08564c3e45fc21b42feeb2ceff3934d6a715d` |
| 47 | `lemma` | [subtype_injective](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/subtype-injective.md) | 233 | `result-track:e5c701908b40cf2a63d64dd671679f0e5025cbc4cc96e6359ca5978efa50d1fd` |
| 48 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-subtype.md) | 238 | `result-track:72234c7109a59e89182fc20fa73f49ba69f255a75816fe699aa646d80fcd3278` |
| 49 | `def` | [mapOfLE](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mapofle.md) | 242 | `declaration-track:39303ed76e5afaaa06d070b0611e0c9d3248a42c66168848d8684cd2fffca3d9` |
| 50 | `theorem` | [monotone_mapOfLE](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/monotone-mapofle.md) | 249 | `result-track:48a11517629559889b7cfdd48d3206bd560e9c17ee9b6451aa3d08cb04045901` |
| 51 | `theorem` | [mapOfLE_comp_valuation](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mapofle-comp-valuation.md) | 253 | `result-track:d810344adcedf710ea907dcbdc41576bcb9da59590845c7d9818fb277b4f59da` |
| 52 | `theorem` | [mapOfLE_valuation_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mapofle-valuation-apply.md) | 257 | `result-track:7e4c733d4eb7aacc84a0e087cfe3386b9cacfdd9c7e670fbe31f8d2873833bd5` |
| 53 | `def` | [idealOfLE](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/idealofle.md) | 261 | `declaration-track:d9467a457da81d3cdca71991dd4e65852aa7fbec2f42550c0bda8ef3bb53eed6` |
| 54 | `instance` | [prime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/prime-idealofle.md) | 264 | `declaration-track:335ecec3edf72bef2469c7cc7cd4a28aa0226e2a51ef80fbd605eb7d98d40430` |
| 55 | `def` | [ofPrime](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofprime.md) | 268 | `declaration-track:bf9d1881d9ba673f88b762fcc9e428f66d588093b40594e42d177ae0f63b5a7e` |
| 56 | `instance` | [ofPrimeAlgebra](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofprimealgebra.md) | 274 | `declaration-track:3fb6ab4a6a466a679e434fa621eb0b6f25f8c69e3ebac05a48a5f69e5c49aa3e` |
| 57 | `instance` | [ofPrime_scalar_tower](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofprime-scalar-tower.md) | 278 | `declaration-track:8b0f618a51b65efcd69f95cda2653a03388201fafb083a7017f08d5e57bf0a80` |
| 58 | `instance` | [ofPrime_localization](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofprime-localization.md) | 284 | `declaration-track:11d6efa648dd110b21e2bcb880bfb1cb4c12d95d1500d48109ff1c78dc70c14b` |
| 59 | `theorem` | [le_ofPrime](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/le-ofprime.md) | 290 | `result-track:1c690e7e4559d762c4a70269d2e68eca8ed28050f415dc02d71b196eb217682d` |
| 60 | `theorem` | [ofPrime_valuation_eq_one_iff_mem_primeCompl](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofprime-valuation-eq-one-iff-mem-primecompl.md) | 293 | `result-track:5ba52bf028fac164f6bc79d10b01ed117e3b2d1dbb0b1ffc6b8736262f4633c1` |
| 61 | `theorem` | [idealOfLE_ofPrime](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/idealofle-ofprime.md) | 298 | `result-track:5096cffa68899524d4d8ec53269a10abe5db6617464380be3a92f0a6cafafffb` |
| 62 | `theorem` | [ofPrime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofprime-idealofle.md) | 305 | `result-track:5bccdc5984c8af9cf726b8119dc17b3679fab8f2be7eea2bf1e6b2edd82d7f31` |
| 63 | `theorem` | [ofPrime_le_of_le](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ofprime-le-of-le.md) | 325 | `result-track:b70916d95b2d28b8576fc655a929021c0c674da79c932c84cd62b7fb1e7776cf` |
| 64 | `theorem` | [idealOfLE_le_of_le](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/idealofle-le-of-le.md) | 328 | `result-track:4914510cfd4727ffd6e18b7ff74a7810cefea7aeaf3a20137c81a884a2f167bb` |
| 65 | `def` | [primeSpectrumEquiv](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/primespectrumequiv.md) | 338 | `declaration-track:dcb22452851c576728936d016f8f45d19b830c12a5a8bfc459d98a112e983e42` |
| 66 | `def` | [primeSpectrumOrderEquiv](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/primespectrumorderequiv.md) | 346 | `declaration-track:78b9fee287b5666620b9901877fec4213a293cba498451ff61f1fec240e287cb` |
| 67 | `instance` | [le_total_ideal](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/le-total-ideal.md) | 357 | `declaration-track:7d8f19edd061dfd8d353436a1026089ab22c00bb99100231c0aedaad17173964` |
| 68 | `instance` | [linearOrderOverring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/linearorderoverring.md) | 363 | `declaration-track:a53e6d4303854058dbaf2d962a56bb92a0a96ddefd085e404e8698cc8eac79aa` |
| 69 | `def` | [valuationSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuationsubring.md) | 380 | `declaration-track:7ab6d15a825eb1509820aeb353226076fdee47f3cb38a6ca82c57fd9161b36ea` |
| 70 | `theorem` | [mem_valuationSubring_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-valuationsubring-iff.md) | 388 | `result-track:528dedc50602b4f7cb14d803762bc3aa530daad77b456da2e16198b7a17e6c0b` |
| 71 | `theorem` | [isEquiv_iff_valuationSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/isequiv-iff-valuationsubring.md) | 390 | `result-track:121e86b91f63abc7da33c1fe305ac3f06c961c1c67839c268a8cdbbfeb5e9206` |
| 72 | `theorem` | [isEquiv_valuation_valuationSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/isequiv-valuation-valuationsubring.md) | 399 | `result-track:772aff333e05bd16a43250679dc2179a95ba5403d4424f73347ae83df4c61d0d` |
| 73 | `theorem` | [valuationSubring_valuation](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/valuationsubring-valuation.md) | 413 | `result-track:36c31dc6277cd98fb6360c8816e55ff0495f62246a1fd2c7b1f06935f5097b78` |
| 74 | `def` | [unitGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitgroup.md) | 419 | `declaration-track:59cab4c17239c4071019b0cd0c4cf00a06fb82e8b243b355e279b53b2ad2aaa2` |
| 75 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-unitgroup-iff-source-edition-2.md) | 423 | `result-track:280543136e66305908b7a71fee8d6db285520664d54f4f8055067a15b7eb1d24` |
| 76 | `def` | [unitGroupMulEquiv](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitgroupmulequiv.md) | 426 | `declaration-track:45d73bce21f43bf8932ddb26d9fda28a81b71fb61e94e6ea414c9351ba5592f0` |
| 77 | `theorem` | [coe_unitGroupMulEquiv_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-unitgroupmulequiv-apply.md) | 440 | `result-track:f42304d825c8efb0c36fcd6c738532259942d2686188771972650582259cc297` |
| 78 | `theorem` | [coe_unitGroupMulEquiv_symm_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-unitgroupmulequiv-symm-apply.md) | 444 | `result-track:fe48ae01c4753804907824e2d4d0de71072183150b7bfe8cff71b95fbd77262d` |
| 79 | `theorem` | [unitGroup_le_unitGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitgroup-le-unitgroup.md) | 447 | `result-track:a521028b653c2dd06c8c4bc153405ad79d19c8c531911742600c8e196a9c2082` |
| 80 | `theorem` | [unitGroup_injective](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitgroup-injective.md) | 465 | `result-track:a087e7e4db4ce66d44c8f92d7b77aa61b8c74be3a5143b93cb7cab01ad4f8d2a` |
| 81 | `theorem` | [eq_iff_unitGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/eq-iff-unitgroup.md) | 468 | `result-track:ef0bc705d72757ba1a313901d8923fb4b2ac640d6122133d363781c780eae988` |
| 82 | `def` | [unitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitgrouporderembedding.md) | 472 | `declaration-track:390e222125001d628ab73800ee69c02c287492e8ae4be8a3e1a337cf22ff24f4` |
| 83 | `theorem` | [unitGroup_strictMono](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitgroup-strictmono.md) | 477 | `result-track:a8fcc3c7de072c5eb872213ac0ff7697f36b164d35f1c9482524e9d94374d5a1` |
| 84 | `def` | [nonunits](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/nonunits.md) | 485 | `declaration-track:c04365c757ba349134ccfbd6dabcfc6896e432cccc8f168f5cbba746776af20b` |
| 85 | `theorem` | [mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-nonunits-iff.md) | 491 | `result-track:44dbf7fd64648e2f93269c1426e0b6a8853b8193340ab94b17d34afb4b9f6b73` |
| 86 | `theorem` | [nonunits_le_nonunits](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/nonunits-le-nonunits.md) | 494 | `result-track:0c42336f1caf56f2a708be8e789a65a4c48dc49d422456e5ef099e77903961ec` |
| 87 | `theorem` | [nonunits_injective](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/nonunits-injective.md) | 503 | `result-track:d1d59cd273503c751138ee53d7e4860048a566d04a9fec0137b23317d45b9d75` |
| 88 | `theorem` | [nonunits_inj](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/nonunits-inj.md) | 506 | `result-track:876dfa93597203a4d877b92baeaf7f5aea1e21f69d84d0da5e1b94f25b47fbd2` |
| 89 | `def` | [nonunitsOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/nonunitsorderembedding.md) | 510 | `declaration-track:97f3e667a73f53e97db30c8ece29eabc6b4ccdb86e2c16ec81eb51f730c6bba5` |
| 90 | `theorem` | [coe_mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-mem-nonunits-iff.md) | 522 | `result-track:b094410538ca640974f456a3d6335256c1644c63ebd9271d0ce3752806b8e607` |
| 91 | `theorem` | [nonunits_le](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/nonunits-le.md) | 525 | `result-track:91ce0bec700c40f927357e6b6a3b03ceb6fb0f58145168ed7dc293a7963a4339` |
| 92 | `theorem` | [nonunits_subset](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/nonunits-subset.md) | 528 | `result-track:61f91e7a95a5297ffc5b365adc81fdb65559eb2bd1f7204bbebcbd2f8a0daba2` |
| 93 | `theorem` | [mem_nonunits_iff_exists_mem_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-nonunits-iff-exists-mem-maximalideal.md) | 536 | `result-track:5df4d5559787d4bbfca34a582df3fa67c6a4b1541d6c197a723ebf6bdddbe7ea` |
| 94 | `theorem` | [image_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/image-maximalideal.md) | 542 | `result-track:e3c85b719c8b2c095c78c65f7be9d44f1fa1bdd1504bb03e31cc9b812b5d846b` |
| 95 | `def` | [principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principalunitgroup.md) | 553 | `declaration-track:46a136d7ab8023995966ab7d3095622f030a09d5fb090f864c9a6d89129c1550` |
| 96 | `theorem` | [principal_units_le_units](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principal-units-le-units.md) | 572 | `result-track:d89e4ab31aa0094b4fba5d07276b67ea7e0f8fa9be75b7b7692e7e9e69d82681` |
| 97 | `theorem` | [mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-principalunitgroup-iff.md) | 575 | `result-track:4113d78929ba5c7a37310765efc602c532b8b5486c3ae0953172632f4cea577c` |
| 98 | `theorem` | [principalUnitGroup_le_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principalunitgroup-le-principalunitgroup.md) | 579 | `result-track:7696f76903e79085a0056711818751dc68b3e634d3d2c559523583e2db277056` |
| 99 | `theorem` | [principalUnitGroup_injective](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principalunitgroup-injective.md) | 593 | `result-track:1e6d91a5f5803b7c5cbfe2cf2d1dd4523c82f1064f1e82cb98af572a94f4142d` |
| 100 | `theorem` | [eq_iff_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/eq-iff-principalunitgroup.md) | 597 | `result-track:9ce58898afba4baec84fab0f3ad36fb4c2adfbee67cd85a11ac0d94fb89fa780` |
| 101 | `def` | [principalUnitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principalunitgrouporderembedding.md) | 602 | `declaration-track:5fc8010aec27c6cbe2370f82dc17d291ad951081efbaa60c11909bd767251dd2` |
| 102 | `theorem` | [coe_mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-mem-principalunitgroup-iff.md) | 607 | `result-track:d2e483c7e43fdb91f1e901129b3b83bff3c89084942740c6590a4ff91d51f08f` |
| 103 | `def` | [principalUnitGroupEquiv](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principalunitgroupequiv.md) | 617 | `declaration-track:dffd7a7440d8314db3664cd013b73b4ab4bf2df09d0c0f66b448707cccb23105` |
| 104 | `theorem` | [principalUnitGroupEquiv_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principalunitgroupequiv-apply.md) | 629 | `result-track:62fa9cd86ea5a0c396dabd9b30101577194a37130b49fd0dc60311707c2f4d29` |
| 105 | `theorem` | [principalUnitGroup_symm_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/principalunitgroup-symm-apply.md) | 633 | `result-track:c2e827e9dfb6e2b9b612c534cbdbea85990e53ed0bc4b38d2a3a236662dba486` |
| 106 | `def` | [unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitgrouptoresiduefieldunits.md) | 638 | `declaration-track:2df151a121f382d93ef35d5a5d01a12b65e52ddfeecf02aa2fe5149bc9a4d432` |
| 107 | `theorem` | [coe_unitGroupToResidueFieldUnits_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-unitgrouptoresiduefieldunits-apply.md) | 642 | `result-track:da4abe29aedfef1e3efa85698026ee96c50a30faf541aa4a9192b901947afe7d` |
| 108 | `theorem` | [ker_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/ker-unitgrouptoresiduefieldunits.md) | 647 | `result-track:25d3fbccbb2b8d7e83729b52cd86af0e149c02d993078261e36e328d73be2f04` |
| 109 | `theorem` | [surjective_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/surjective-unitgrouptoresiduefieldunits.md) | 655 | `result-track:92c45dcb7c022eed8b774b453e6cd6ba7c93051aab6d06c7d126e0291e5d9bc0` |
| 110 | `def` | [unitsModPrincipalUnitsEquivResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits.md) | 663 | `declaration-track:a6666d543b5be61877e8a03a79f36030acb58ae45609ddf81f943502dc57c76d` |
| 111 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-8.md) | 669 | `declaration-track:7573c840e93817aef0bb3119c95fd5c8f2681b9224ca7c2cc2d7eadd942e7226` |
| 112 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk.md) | 672 | `result-track:cff99ca579367451dbff7d77f4ca4798863d7ff8d8a0423e163a08bb7aad68fb` |
| 113 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk_apply](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk-apply.md) | 677 | `result-track:da26cda76bd25461b209a94dfc013e19d34391cb6c3e79926eb989f696687d82` |
| 114 | `def` | [pointwiseHasSMul](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/pointwisehassmul.md) | 705 | `declaration-track:b880867650c2471087137181bfea3d88b1d8293e2ce094a99ed31fe37fcea6b3` |
| 115 | `theorem` | [coe_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-pointwise-smul.md) | 717 | `result-track:34e25fd3e1591845180861d2b18e1e5fcb8e8a5b07cef914dab7d6a9cad1468a` |
| 116 | `theorem` | [pointwise_smul_toSubring](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/pointwise-smul-tosubring.md) | 720 | `result-track:8e9f60f2261740e79611679cf54987db41f8739c2191b23e177187ba089ceb47` |
| 117 | `def` | [pointwiseMulAction](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/pointwisemulaction.md) | 728 | `declaration-track:4e657b636434ba4545875a53db0521abd6f596b1481b6d1f2d4cafb3226707ad` |
| 118 | `theorem` | [smul_mem_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/smul-mem-pointwise-smul.md) | 735 | `result-track:6c4f8871a8b24908df3d1eaf07cce8c5e5860a7191396e173de70d6c8ded9bfb` |
| 119 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/instance-source-edition-3.md) | 738 | `declaration-track:5aa3f2ffed69e3b0ecedf1eb04194f6940fd8947b5cb5803e73df5219d828ca2` |
| 120 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-smul-pointwise-iff-exists.md) | 741 | `result-track:041ec2c58a6a8cc4282adf989fd4d8a23126776672c7fff9e1e449e5418e8de1` |
| 121 | `instance` | [pointwise_central_scalar](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/pointwise-central-scalar.md) | 745 | `declaration-track:29256a2229adf3f11df2b8faa39eedeff5c590d422aff534734385e426b6571e` |
| 122 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/smul-mem-pointwise-smul-iff.md) | 750 | `result-track:2a5998521e3f332481645febed3d5f887394c954b9ea9bca5557ccd2b10dad96` |
| 123 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 753 | `result-track:155b8d9242f7a3bed382c0c27de9435c7df9ef873ecc19a4722ab2ad11e2e54d` |
| 124 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-inv-pointwise-smul-iff.md) | 756 | `result-track:5f2acd8e421100099c0c31b19e83c43a83f93b928a99dcd939b1b5aed0c3e283` |
| 125 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 760 | `result-track:df47b35e763e07ea6716b05b7338a46e4fd82ea6f8a32b7eb04895855fbc5961` |
| 126 | `theorem` | [pointwise_smul_subset_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/pointwise-smul-subset-iff.md) | 763 | `result-track:a8d4f1314489b44d6b2d1242095d60b0c26ecff80d1dcad9e5edbfe8c617d4ba` |
| 127 | `theorem` | [subset_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/subset-pointwise-smul-iff.md) | 766 | `result-track:3698ad6a7cd6e11eed52584795963ab9628a97e13c1adcd9e2939444c5618394` |
| 128 | `def` | [comap](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/comap.md) | 776 | `declaration-track:d0c5797334860664fc9447e6b7e3331ca334c0c4835a3f405d4834b0ebed8053` |
| 129 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/coe-comap.md) | 780 | `result-track:4f070456b3e6e449a0c74cc8dad379383f88db7e27df8ade3fc9cd9ac3651438` |
| 130 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-comap.md) | 783 | `result-track:53046522476cac4ccb2dc59f91b4fa39ca4d8bf346621f17978a03971d186463` |
| 131 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/comap-comap.md) | 786 | `result-track:75110cac9f0dc87a9d1bf17abdd28d799e8d74fc79aa8cb5905f82d37339297d` |
| 132 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-unitgroup-iff.md) | 797 | `result-track:12e614e10886adf635d388bd0c929e01a54bc786206714e1befcacfbf68962e3` |
| 133 | `theorem` | [mem_maximalIdeal_iff](../../../../CommutativeAlgebra/ValuationSubringSubtypeApply.lean/declarations/mem-maximalideal-iff.md) | 800 | `result-track:6af2216f1560e5f63a7ffd0344364c31960082cf9ceba4a4310e5d9eb8a9b69a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96decc38c225fa4ff084b4963a5d73aede58988c61adb4c82c47b3538eb3e211 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean","GRWTSK/_verification/specifications/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
