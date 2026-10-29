# Verification target: Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349ef7d3b73d86fdb671f842296a4c3f7fb9135e",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349ef7d3b73d86fdb671f842296a4c3f7fb9135e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Notation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap.md) | 116 | `declaration-track:4c9ee01425bbed33601ee795c4ea03aaf87633d57d6cb2b7286113807ea1933b` |
| 2 | `lemma` | [comap_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-indep-iff.md) | 163 | `result-track:8647dce5e182eda93b3bdf94a265193590ad58f6d790402cfb77b5bb58b568be` |
| 3 | `lemma` | [comap_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-ground-eq.md) | 165 | `result-track:ac81285277d2afbbc03b5c4e048991d054779eff095fdeaba046c315e8f84ec4` |
| 4 | `lemma` | [comap_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-dep-iff.md) | 167 | `result-track:b881af38b20897e8b18b19f9d4935b28a76274ee177775230dbbc2e7408dfe84` |
| 5 | `lemma` | [comap_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-id.md) | 178 | `result-track:d7290b98bd973bdc9b8c7aef1f12178b1b4000de3ae22608e9464322a94935d4` |
| 6 | `lemma` | [comap_indep_iff_of_injOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-indep-iff-of-injon.md) | 181 | `result-track:332019d96e95b7209f5ff2397166aa1c8722f9e4266773abced1c5482320145a` |
| 7 | `lemma` | [comap_emptyOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-emptyon.md) | 187 | `result-track:fed36753ccdbab2f8d9d9030999918a80f243e228db5bd446bb18fb6d6914743` |
| 8 | `lemma` | [comap_loopyOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-loopyon.md) | 190 | `result-track:454c313f4f0dbcf27b9b59bfcafb80dd797145589a9a895431e70e5143999ff9` |
| 9 | `lemma` | [comap_isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-isbasis-iff.md) | 193 | `result-track:2ba93957b12a1f81b736fef9c21936da982f60c84091de90f23e6963cd38ffe9` |
| 10 | `lemma` | [comap_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-isbase-iff.md) | 215 | `result-track:df29ac865a9dd0dd83533153399ea0ea7197836e895699755003b711c648f3f7` |
| 11 | `lemma` | [comap_isBasis'_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-isbasis-iff-source-edition-2.md) | 219 | `result-track:b111b5998fc1f509aed53914b5016fd36581a3d2972d8c6ed8ecdae70a7e0154` |
| 12 | `instance` | [comap_finitary](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-finitary.md) | 226 | `declaration-track:86e99553ce977d318541afcd209f36881c045753db5d7c46e1f7a992be99ff90` |
| 13 | `instance` | [comap_rankFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-rankfinite.md) | 236 | `declaration-track:498f087b26b74125502a3451d25bed1b64bd273d306ae4b588cfcc431bf940f1` |
| 14 | `def` | [comapOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon.md) | 252 | `declaration-track:d1952ee5ffbf61008869a2b044fab04eb75e31f20013df6a88985976581213fa` |
| 15 | `lemma` | [comapOn_preimage_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-preimage-eq.md) | 254 | `result-track:7e126f7a1e607d6095211be60908430ee218e455cb0dc7994215f341961a8292` |
| 16 | `lemma` | [comapOn_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-indep-iff.md) | 257 | `result-track:b02f51ab6e5279b16a0860fad689d35b933541662dcf011787eddfdfb8d2497d` |
| 17 | `lemma` | [comapOn_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-ground-eq.md) | 261 | `result-track:86082e043fb80914aa664f65a0bcfc80bf06a49bd79281403c4aef538f92de10` |
| 18 | `lemma` | [comapOn_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-isbase-iff.md) | 263 | `result-track:caa2c907450168b3c73e6ee11b495a7e3577f17c4b40be023df871a2178b893a` |
| 19 | `lemma` | [comapOn_isBase_iff_of_surjOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-isbase-iff-of-surjon.md) | 267 | `result-track:2744eed39c4a656720ce7b495c8913aeecc72897ed04df78b9888468e112430e` |
| 20 | `lemma` | [comapOn_isBase_iff_of_bijOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-isbase-iff-of-bijon.md) | 272 | `result-track:77c6013762731ce7163bbfbcc560c355af8502faec3f7bc6019d096527473e72` |
| 21 | `lemma` | [comapOn_dual_eq_of_bijOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-dual-eq-of-bijon.md) | 280 | `result-track:c7f85de16609ac35f2890f8eac69ae88ef9143bacec983b62000c741aa3b6173` |
| 22 | `instance` | [comapOn_finitary](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-finitary.md) | 288 | `declaration-track:289c7eea7348cac22090678469803fcd9ed28ede11a93417c40c284964ad850e` |
| 23 | `instance` | [comapOn_rankFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comapon-rankfinite.md) | 291 | `declaration-track:cf423553daa9fd9044dc0b64014512e73418409baaf205fb9af6008a91605b9a` |
| 24 | `def` | [mapSetEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapsetembedding.md) | 298 | `declaration-track:572bde82b69434bfdc20319cd9660bda95ad0a9e266e1090577e232761018765` |
| 25 | `lemma` | [mapSetEmbedding_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapsetembedding-ground.md) | 319 | `result-track:ef5c88b67bdd45591501d81a2a109905d19f16651a3a6b635dfcd68c1c8ad23c` |
| 26 | `lemma` | [mapSetEmbedding_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapsetembedding-indep-iff.md) | 322 | `result-track:2b3cf0b7314f97ef4131c2874ff5716b08aba4a8d620c442ca401cb909a3625d` |
| 27 | `lemma` | [Indep.exists_eq_image_of_mapSetEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/indep-exists-eq-image-of-mapsetembedding.md) | 325 | `result-track:0ce1b44a15443e62d313edb024875a7bff2e5a062034ccac0800596e8ea3017c` |
| 28 | `lemma` | [mapSetEmbedding_indep_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapsetembedding-indep-iff-source-edition-2.md) | 329 | `result-track:3469cb2c644263f962474a6ae0bf4f25601171e213e0a759752acea682f558da` |
| 29 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map.md) | 346 | `declaration-track:54fe567b55d9590ade6b40b533c194b8e67d8a67f0ddfbc5377365a24e1dae7c` |
| 30 | `lemma` | [map_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-ground.md) | 355 | `result-track:75b517875656a354780e0d3582aaee29a6cec1b487c6c0f91a33f3a18e851150` |
| 31 | `lemma` | [map_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-indep-iff.md) | 357 | `result-track:a18ff1adc6a76c6cfa732572801a2326f4aed2cec00fc8c68bb0ce0d6cd0ead0` |
| 32 | `lemma` | [Indep.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/indep-map.md) | 360 | `result-track:353314f779d95d429e9025d77c6b404b965a93938d54cb79b3ff3d33b64eea5c` |
| 33 | `lemma` | [Indep.exists_bijOn_of_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/indep-exists-bijon-of-map.md) | 363 | `result-track:18ceec03129020747b858f24c17642b32d98f459c0073a1c63e7d3cba770f5aa` |
| 34 | `lemma` | [map_image_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-image-indep-iff.md) | 368 | `result-track:a7490c4c839dd018d270234ea969d3b7575af5ea7da6edff5022278f8e9e09fa` |
| 35 | `lemma` | [map_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-isbase-iff.md) | 374 | `result-track:462e4775f25da649fe90e43f8141b10a8b2d728745f71c626fffd5522a7dfe7e` |
| 36 | `lemma` | [IsBase.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/isbase-map.md) | 389 | `result-track:454402fae2987499ac05feb9353677591b29d6fd6dff2f057d06987f84550429` |
| 37 | `lemma` | [map_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-dep-iff.md) | 392 | `result-track:42af7a3545bd080ca5f01a0e88ec95c5170ea2fe797473bd74ac9742f071fbb1` |
| 38 | `lemma` | [map_image_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-image-isbase-iff.md) | 403 | `result-track:81a0240ae18d627f2eed8c2aa14b3ea79059157d71653f942252f482b01714cb` |
| 39 | `lemma` | [IsBasis.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/isbasis-map.md) | 409 | `result-track:b08b3193216797a23c1f311d4c680ce7f8e3d8e6e6094fa4952ca0c1775d5893` |
| 40 | `lemma` | [map_isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-isbasis-iff.md) | 421 | `result-track:817024124899b02f658eb6ac3500e382769aa594802da6305624fc385179781c` |
| 41 | `lemma` | [map_isBasis_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-isbasis-iff-source-edition-2.md) | 433 | `result-track:9980c40aa3d7bb69d95b6baddf95934901534ca077f356e0f2723a5cc894f9b2` |
| 42 | `lemma` | [map_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-dual.md) | 443 | `result-track:868ec422460e9b7cca47e317b4a20d0aa8b28278eafda963643a09aa94d38eb6` |
| 43 | `lemma` | [map_emptyOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-emptyon.md) | 452 | `result-track:e0366f1fdd92a79705ab161c81631aeaaf727daf2048bb6db87bb0929e7b5dba` |
| 44 | `lemma` | [map_loopyOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-loopyon.md) | 455 | `result-track:58c32c40cc8bfecf3f34edb38a969eb4db4a46aec8d1223d81673e6d0151180b` |
| 45 | `lemma` | [map_freeOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-freeon.md) | 458 | `result-track:4355a70bc45c04abc970535740798ee45a97710140f54a3683568c912a1148ce` |
| 46 | `lemma` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-id.md) | 461 | `result-track:95b82d7cbfcfeb2a1c9936fe7bb1d0aef18eb4ce695a1e9702370d51f6054205` |
| 47 | `lemma` | [map_comap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-comap.md) | 464 | `result-track:94947370773355e86183f8d75323a60195f42d4f25cdcad2094df20b3fe18e27` |
| 48 | `lemma` | [comap_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/comap-map.md) | 472 | `result-track:629a31ccb2d6e87dd4827a7b5df4e8102b1bcfabb92ca6394c9a4802752ee98a` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-18.md) | 476 | `declaration-track:e62ffc0759ee69cbcae6cb6650532e5a31eafc5c8298c968d2bc3531d0688538` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-10.md) | 479 | `declaration-track:53315179aa6cca1c4d5775955b57cf965a25eabe0b2b08b91f08010a526a6427` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-20.md) | 482 | `declaration-track:f55e67c12f09548ee442ad62504e24454e2cde1c5875bd5d12d743d82021b1d6` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-14.md) | 494 | `declaration-track:93ff049405b8000f8ca6b9994edbcf48b7d7451694f63396f992f544217736a8` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-4.md) | 498 | `declaration-track:094639b1f79d94bb3ac8ec8e77932a9d7353bd2b8068483db35c55c5e47a4588` |
| 54 | `def` | [mapSetEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapsetequiv.md) | 508 | `declaration-track:b6c58471cc41f1931d053c434ea8c4ebf0d36d5bdf8b8bba0c2a9dea64ea54af` |
| 55 | `lemma` | [mapSetEquiv_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapsetequiv-indep-iff.md) | 514 | `result-track:78f576c0d6591c7f7b0716b215f7fe510eeb7773663680e132006565ce800ab0` |
| 56 | `lemma` | [mapSetEquiv.ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapsetequiv-ground.md) | 517 | `result-track:5d62989ee488fef3992f71df4a52f7ecae7410a609643b03dd3308268c9fb665` |
| 57 | `def` | [mapEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapembedding.md) | 524 | `declaration-track:c76e7e5b3d261e75236e749175f29edb8461f032ec13a58c7bb13e03decde16b` |
| 58 | `lemma` | [mapEmbedding_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapembedding-ground-eq.md) | 526 | `result-track:ae2b4bb0800f4df75bebceb51b2635a8542fa0b00b1ea53c68240b9cccddaa98` |
| 59 | `lemma` | [mapEmbedding_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapembedding-indep-iff.md) | 529 | `result-track:5dd020e6ca4d47dd723975fb0eb5576e812cec9941628fc7772b1e6d91ba748a` |
| 60 | `lemma` | [Indep.mapEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/indep-mapembedding.md) | 537 | `result-track:483ca70830e601f7a7040ffc67d8306748d07542e2d1c9bc78142d6f7dd9b234` |
| 61 | `lemma` | [IsBase.mapEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/isbase-mapembedding.md) | 540 | `result-track:fa9a0571ee07f58f2fe793a3a2f0d728a3e8581e3b45f94d75caa963e24e5211` |
| 62 | `lemma` | [IsBasis.mapEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/isbasis-mapembedding.md) | 545 | `result-track:016b2ab2ca96e7f7577d0663f2a542feb49fc7c9d59fe51ad561723fca9a63a1` |
| 63 | `lemma` | [mapEmbedding_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapembedding-isbase-iff.md) | 549 | `result-track:aea617d21856361c5f7e483a9581304e9e30cedf7e21ffaf9295c3d24d52a051` |
| 64 | `lemma` | [mapEmbedding_isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapembedding-isbasis-iff.md) | 557 | `result-track:2a922f6c8201aebbb7cb33dfcd3d413277ecc4010a2c25c22538390d12399317` |
| 65 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-8.md) | 567 | `declaration-track:3571dbdf150167eeb1d9fd961f1cfbfa3779861114ceec0c38321aedbb5aaf3d` |
| 66 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-3.md) | 570 | `declaration-track:077bc795de882268b614838d838b16df2842810ca99c48847145ce8c58e5160c` |
| 67 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-13.md) | 573 | `declaration-track:91e80a56367979b4e391cd452499822192bb178c4f5e883733de69786424e900` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-16.md) | 576 | `declaration-track:ad59987bf545526304e9e7b981ffbe4e09f8ab4e7157eee57a2803ed24d64aa0` |
| 69 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-9.md) | 579 | `declaration-track:3e9ceaaa21f19857017fb71cbdf7efac45381e44cd5e994e359e1dcaefccba3a` |
| 70 | `def` | [mapEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapequiv.md) | 589 | `declaration-track:e14810afec29a29e32296810d80684d1be5fbcf03aa5b090aec82bff5f1ac66c` |
| 71 | `lemma` | [mapEquiv_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapequiv-ground-eq.md) | 591 | `result-track:7198e5e10fb32dd102558a35a638b333388382c5af5ce20959d5cfe15249df05` |
| 72 | `lemma` | [mapEquiv_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapequiv-eq-map.md) | 594 | `result-track:89d66eed48b34659d33a3275c6859a0570401247c6bdf16f5e4c38817d2468e2` |
| 73 | `lemma` | [mapEquiv_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapequiv-indep-iff.md) | 596 | `result-track:7951a95c3f954ce6cae91dbef4ae27f4dc31d0d6dfc6c56286564fbcbb058371` |
| 74 | `lemma` | [mapEquiv_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapequiv-dep-iff.md) | 600 | `result-track:fb80236b7e5dc85a30ae6765643b364fb542de2e27f4379ad379da17cfe68f8e` |
| 75 | `lemma` | [mapEquiv_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapequiv-isbase-iff.md) | 604 | `result-track:6237730ca71fd33ebccaf0383242ce994738bb74a9d9989a2397a62700b2814b` |
| 76 | `lemma` | [mapEquiv_isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/mapequiv-isbasis-iff.md) | 609 | `result-track:7fb89b43508d06fad597ee7a490fa7b08355d08a66c38e8543b977072acc48ce` |
| 77 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-7.md) | 616 | `declaration-track:25094a25013f8e4c35b5b43bbe92816b4bd51c16bf2e94f2959fa0809f183f9d` |
| 78 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-11.md) | 619 | `declaration-track:65e1a3a69f6518fcd916cf788ab80465677114d3aa3fd8869a610cd7702e8392` |
| 79 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-2.md) | 622 | `declaration-track:01f0d9e68343497387a8ec81230e89b81832f9b6881c521de1d522ca6c1e375d` |
| 80 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-12.md) | 625 | `declaration-track:8c9d125b5cac448dbac262f2fb309e3d1068198b50cee3ab758802db5d77711b` |
| 81 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-17.md) | 628 | `declaration-track:b5f0a39c4d2ea3252af2a6a0506b6f7f923686e4cdc3c07121bb5e1406c54433` |
| 82 | `def` | [restrictSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype.md) | 640 | `declaration-track:5ec7b437ab5b08eb86ca77fc3a63972bb81a539848e38ad2bfabb8c4e34654b5` |
| 83 | `lemma` | [restrictSubtype_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-ground.md) | 642 | `result-track:2bdf75da1b10e08cd68107c0f66a58f4c42a99913a9d4da2e763f7d80b722e24` |
| 84 | `lemma` | [restrictSubtype_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-indep-iff.md) | 645 | `result-track:991da6ab9594a27b8d484dce3fa0e3b165ae04c733f984c1da4c13df8202c47a` |
| 85 | `lemma` | [restrictSubtype_indep_iff_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-indep-iff-of-subset.md) | 649 | `result-track:1ec188dacea971604b5b75fd4f1917a1ada0d4f471c52ace1acb54c8fff3fd93` |
| 86 | `lemma` | [restrictSubtype_inter_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-inter-indep-iff.md) | 653 | `result-track:596a2236629a31c7f9d97d9a3e2529caae6f9e8ba34c378b540e67e22f4a60b6` |
| 87 | `lemma` | [restrictSubtype_isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-isbasis-iff.md) | 657 | `result-track:dca6e8ff63ec1238353617cbe70b18820b62b8b11661eb112e753570639b7f68` |
| 88 | `lemma` | [restrictSubtype_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-isbase-iff.md) | 664 | `result-track:2d9626722397dbf029b8c92a509d01ca02be7b15f49ba7ebef996a857de1b53e` |
| 89 | `lemma` | [restrictSubtype_ground_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-ground-isbase-iff.md) | 669 | `result-track:21dbac86f18f998bbe1ca9b4ceece8c5b00dcf5e2779ee42a5a16cb3c99f3139` |
| 90 | `lemma` | [restrictSubtype_ground_isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-ground-isbasis-iff.md) | 673 | `result-track:2f0cfa882b793c7a46f7736f851a6acf524d8d521fc2940c64dad2184ae42eca` |
| 91 | `lemma` | [eq_of_restrictSubtype_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/eq-of-restrictsubtype-eq.md) | 677 | `result-track:8fdeb236b3041e1be0223e23e0b483a46097b9f7a506de69dfe08bea9d12e000` |
| 92 | `lemma` | [restrictSubtype_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-dual.md) | 683 | `result-track:172473840bf7a71ce2ec113eaeda6f1518aac5a809734fddde08c37938ca9c8e` |
| 93 | `lemma` | [restrictSubtype_dual'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/restrictsubtype-dual-source-edition-2.md) | 688 | `result-track:b4c29f8a7ca5c5693e415280d42c3cde3f384eddede749f9fe066b71e7f39203` |
| 94 | `lemma` | [map_val_restrictSubtype_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-val-restrictsubtype-eq.md) | 692 | `result-track:f90207e930579b29e224172d2189635c3fb1a542866168a643988d870dabb26f` |
| 95 | `lemma` | [map_val_restrictSubtype_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/map-val-restrictsubtype-ground-eq.md) | 697 | `result-track:694483c16b28bc4fe521adbb31b30bb5f61b871e56967214d6579c17315bba96` |
| 96 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-19.md) | 701 | `declaration-track:efd30930993453991abaa7eae634f1b72c87b82c8d03df7864d9de1b8738abe1` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance.md) | 704 | `declaration-track:01cf90ffb1082ee5787c5ceae40da7f73c8a8e3bcf48084e006a4a2b48106a17` |
| 98 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-6.md) | 707 | `declaration-track:216a86b0b05c969ac45baa1f98dacec994ac67e5c5cea60157d56fc6293ee20c` |
| 99 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-15.md) | 711 | `declaration-track:9aa7c03b51d151b25a6e831069b6653ab46f52bbba0b2eec1992be4e3b24478f` |
| 100 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Map.lean/declarations/instance-source-edition-5.md) | 715 | `declaration-track:16a335a0a94039124582d0cd7a157ebeeae84e10ef48a979142ed40d75021796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b18afac9840f3d7d0be7ed454752c20675e57657282f3eaa898cdd2bd43d788 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
