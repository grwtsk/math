# Verification target: Pi System Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d92d336193f2b2708cc36da4a2ffe27bab63db",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d92d336193f2b2708cc36da4a2ffe27bab63db`.

Source path: `GRWTSK/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem.md) | 75 | `declaration-track:c2b5a7a334cbc895c4666d8190fb87f7efac4a976d9cfe27651070c16fee0e72` |
| 2 | `theorem` | [isPiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-measurableset.md) | 80 | `result-track:c8ee875095909392206214e3c416c900a76b26e921d91a4c2bb268a8793bec91` |
| 3 | `theorem` | [IsPiSystem.singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-singleton.md) | 85 | `result-track:8907eb4d220e76a2a7a13a8972aae198df6a33054e47cfa60af36af2984fca6c` |
| 4 | `theorem` | [IsPiSystem.insert_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-insert-empty.md) | 90 | `result-track:99503c0624719ce011fcdf0d0d1a53f3738402edb0400b40aa742ad5648ca2c9` |
| 5 | `theorem` | [IsPiSystem.insert_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-insert-univ.md) | 99 | `result-track:8644aee69fbc2fd03603a361b75c39f2304b6e64aabcb9524853acd9734b31b9` |
| 6 | `theorem` | [IsPiSystem.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-comap.md) | 108 | `result-track:558fa5296cb4c48820b9eb7388d1ead8411ef757a14237f7ec4f88146ddc9b39` |
| 7 | `theorem` | [isPiSystem_iUnion_of_directed_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-iunion-of-directed-le.md) | 114 | `result-track:45430259945500f6f0e13af78726e0d33cfe92e3f49554227bc26b815f86f402` |
| 8 | `theorem` | [isPiSystem_iUnion_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-iunion-of-monotone.md) | 124 | `result-track:c1189f9c6c1040fe705f09d3d45f64aa0a253c07ed5e9a65ba9f25355f5c015b` |
| 9 | `lemma` | [IsPiSystem.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-prod.md) | 129 | `result-track:427a86323ef7293ebe5cf6a52c5bbbf23be24fae8cfe696ce5b320d5b9ff87cd` |
| 10 | `theorem` | [isPiSystem_image_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-image-iio.md) | 139 | `result-track:0ba0c1a5a0882337d21ca35536daa8aeef5407f753442959f3ff654c8deb2ed6` |
| 11 | `theorem` | [isPiSystem_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-iio.md) | 143 | `result-track:e94ccdd5d9f294eb087ca3f5a08e078034a6cfb642dc67e326ce0fafbe46d2d9` |
| 12 | `theorem` | [isPiSystem_image_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-image-ioi.md) | 146 | `result-track:29e8597229d56b7bc82206b41bb2c2c80020d47788219996a65999f4242dffd8` |
| 13 | `theorem` | [isPiSystem_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ioi.md) | 149 | `result-track:54f55c919c666e59a10bdf2ddce69db0cc4e6bd07359fb3678d776be83f8fa8e` |
| 14 | `theorem` | [isPiSystem_image_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-image-iic.md) | 152 | `result-track:aa4a477da88b9336b11bfc4d4e1fb59d200c41707b409906d6d9742d0e7553b7` |
| 15 | `theorem` | [isPiSystem_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-iic.md) | 156 | `result-track:bb87ac281f8c46f951747a1441e2e1b6cbf6cabc8d1e87674317d75c4a97254a` |
| 16 | `theorem` | [isPiSystem_image_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-image-ici.md) | 159 | `result-track:bbf737c48763313cbc4beef08fb07c62c5895af5c856e8b72b4af954fa3ef0d5` |
| 17 | `theorem` | [isPiSystem_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ici.md) | 162 | `result-track:62af916db59d8bf06279e492c9a152c0b2c6fedf5198b11c4c2506a9ce78499f` |
| 18 | `theorem` | [isPiSystem_Ixx_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ixx-mem.md) | 165 | `result-track:50d529a8f26b9bcc86dba672d7e30bc526722e57b4ad9791cac95e246a1db301` |
| 19 | `theorem` | [isPiSystem_Ixx](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ixx.md) | 173 | `result-track:6cb8bb4c7c94da936837c5d08999a70c25e4d5e3f78886e0d378f10dcd24c72e` |
| 20 | `theorem` | [isPiSystem_Ioo_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ioo-mem.md) | 179 | `result-track:db41c091f25888febfdfd6234b327b96ec41253c35a47b5e1adf12fabf1bb5ac` |
| 21 | `theorem` | [isPiSystem_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ioo.md) | 183 | `result-track:a82c409e61820c889ba272530c87b1e3cad036852398d37597b4a08260bb1692` |
| 22 | `theorem` | [isPiSystem_Ioc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ioc-mem.md) | 187 | `result-track:7d5099bda9307f2a86d308b30d550e60cca3ea92de1166d20094f52bf06ba17b` |
| 23 | `theorem` | [isPiSystem_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ioc.md) | 191 | `result-track:7e99a7055f5564b391b715e8824697d5aff9a0ee66629be9cdaa31c2233b0196` |
| 24 | `theorem` | [isPiSystem_Ico_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ico-mem.md) | 195 | `result-track:2b03f6f9e08f38cd2c40b74c61ffbed176766ad91ef4e9bca9fea7fb1b5dd3e5` |
| 25 | `theorem` | [isPiSystem_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-ico.md) | 199 | `result-track:da3aa9d2486d6c5b2fe24f2d66882d2f8fd4e6f803ad9b9d4a12ffe70318bf8e` |
| 26 | `theorem` | [isPiSystem_Icc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-icc-mem.md) | 203 | `result-track:52a6d81a08152e87a1603abb6fbb375a5e54ff13f0e5382758ef3748afab2e97` |
| 27 | `theorem` | [isPiSystem_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-icc.md) | 207 | `result-track:3f4569b5788ee058a20f412571e80350562a91889b2145a101991cd5cf0e2fc3` |
| 28 | `inductive` | [generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatepisystem.md) | 215 | `declaration-track:888997cca78f18fd1c3050a3ba85638881a1d071702cfc5086fd9323d10a6334` |
| 29 | `theorem` | [isPiSystem_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-generatepisystem.md) | 220 | `result-track:6532e7d58cc5d33ff9e5b1ed6fc1cfc414977edde3b9e10ae22c3381156349cf` |
| 30 | `theorem` | [subset_generatePiSystem_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/subset-generatepisystem-self.md) | 223 | `result-track:69812a5d5d7d9c3d92765d2e428001ea131382591d52899eed5ff99d87c1281b` |
| 31 | `theorem` | [generatePiSystem_subset_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatepisystem-subset-self.md) | 226 | `result-track:ce74804f684b212df747e4e595940e4469e498698457f4fafe120395484bbcb5` |
| 32 | `theorem` | [generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatepisystem-eq.md) | 232 | `result-track:20f4b6264811d719cf66a93900ab200399dd1c1f4e1c803c3235c076e3330a88` |
| 33 | `theorem` | [generatePiSystem_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatepisystem-mono.md) | 235 | `result-track:df741651537b11b3eaa6759a312eced6541f7151264687d1352fb7b7201074a8` |
| 34 | `theorem` | [generatePiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatepisystem-measurableset.md) | 241 | `result-track:80cc3144dd35222eeddd94744114975487a71eb0e257a7f327189cda70234f40` |
| 35 | `theorem` | [generateFrom_measurableSet_of_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatefrom-measurableset-of-generatepisystem.md) | 248 | `result-track:3a2189d51e268892e8420c9309d176d554375515ad72f72fee3fa1863bfa1470` |
| 36 | `theorem` | [generateFrom_generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatefrom-generatepisystem-eq.md) | 253 | `result-track:27b210e47cc9b844d27cf54f34711f4fa27e7534067f210b56d7e091632fa9da` |
| 37 | `theorem` | [mem_generatePiSystem_iUnion_elim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/mem-generatepisystem-iunion-elim-source-edition-2.md) | 262 | `result-track:950a8c25d0c1999bcf9881435a54705d4252a29a6957d1d1a0e7e72464f83006` |
| 38 | `theorem` | [mem_generatePiSystem_iUnion_elim'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/mem-generatepisystem-iunion-elim.md) | 297 | `result-track:8795bfd894e18dbd827e38ca4fd477946a2880f7102891bf9f376e0f1b5ddda7` |
| 39 | `def` | [piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/piiunioninter.md) | 340 | `declaration-track:7307970bf75ecbee3be6f2495c04f7ab0994fa5c3aa538661a375cdbc8d26d2a` |
| 40 | `theorem` | [piiUnionInter_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/piiunioninter-singleton.md) | 344 | `result-track:df64f4b3d134bdebeb013925004571a49ab60cb6d620ebb299fa7b9df95a619b` |
| 41 | `theorem` | [piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/piiunioninter-singleton-left.md) | 374 | `result-track:bc0db2c8147f9459755048b7814bd03c73a198a9f8c0457a763f913155e86c9f` |
| 42 | `theorem` | [generateFrom_piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatefrom-piiunioninter-singleton-left.md) | 386 | `result-track:8a032480b0a264284c038b1922da877f48f372b176e6118cf495f4fe59db3213` |
| 43 | `theorem` | [isPiSystem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ispisystem-piiunioninter.md) | 400 | `result-track:49e694fd6ec7d8013772ef9ec373930ed58969c5caf930546baefeec5be51df0` |
| 44 | `theorem` | [piiUnionInter_mono_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/piiunioninter-mono-left.md) | 439 | `result-track:e680789ded9e24b8cb0b2be2e037aed821836c7141e8c008537f6c48f71f8a13` |
| 45 | `theorem` | [piiUnionInter_mono_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/piiunioninter-mono-right.md) | 443 | `result-track:662269efa7718ce6f896de700647b1aa93e829ba140c8994dde0ee7838db26f5` |
| 46 | `theorem` | [generateFrom_piiUnionInter_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatefrom-piiunioninter-le.md) | 447 | `result-track:078cfe1b06ce5a48fd9bca3e139552f81724ee8a239c105120be64c49012341f` |
| 47 | `theorem` | [subset_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/subset-piiunioninter.md) | 454 | `result-track:72e5fc6c5e8a73e5625c4e4a7f614820c47cfd1a61d78eb9a2d247532d9b8844` |
| 48 | `theorem` | [mem_piiUnionInter_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/mem-piiunioninter-of-measurableset.md) | 464 | `result-track:294cf35a8fa9c6f7730195ba0dfe4220d984b2e095b1c3a0b29e90af67f16116` |
| 49 | `theorem` | [le_generateFrom_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/le-generatefrom-piiunioninter.md) | 469 | `result-track:58b6ac4b16d69e514a7e2f5bbfb0d25057044fcf9e2536fcbc595a030b0b059c` |
| 50 | `theorem` | [measurableSet_iSup_of_mem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/measurableset-isup-of-mem-piiunioninter.md) | 473 | `result-track:d51435f455c41047072a6761df000cb2c245fb269911ab3bdab23b4caca41ecf` |
| 51 | `theorem` | [generateFrom_piiUnionInter_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatefrom-piiunioninter-measurableset.md) | 482 | `result-track:1d34dbc00205223f4c30689b6640946aadbc86b6ad354837fb104acd0ae64aee` |
| 52 | `structure` | [DynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/dynkinsystem.md) | 511 | `declaration-track:262a7401fadb9cc12a851b16c42dc3f6ffae09efa25b781c376e1b9163fc3782` |
| 53 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ext.md) | 525 | `result-track:32e225621880251ef55b983b45f1309e0788215209bae75ae6a6ed67c7139ee5` |
| 54 | `theorem` | [has_compl_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/has-compl-iff.md) | 533 | `result-track:e452d0dc13261ef9916ab86b4d1e7134ee5a0989334d3df5b8b58cceaf5d3527` |
| 55 | `theorem` | [has_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/has-univ.md) | 536 | `result-track:456a641407a32d2d6674be48e280437e66926a5997cd331045b54d2de016fd1f` |
| 56 | `theorem` | [has_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/has-iunion.md) | 538 | `result-track:10a2bc7393e98ed3695becb9a24b37785ae841f6d1b2e61eede6c13871ecd9c3` |
| 57 | `theorem` | [has_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/has-union.md) | 546 | `result-track:b4c55db7a54af069920ba690d644a57fa1f36ce17524ebf546d801c5d666e8fb` |
| 58 | `theorem` | [has_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/has-diff.md) | 551 | `result-track:1eb341fb8edc74cc92ad116cea8a6243a65ab85576e36ce1f6b6075af28bc21d` |
| 59 | `instance` | [instLEDynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/instledynkinsystem.md) | 557 | `declaration-track:359618031be9292082cb688cf0f91e1dc35f4f08f34274754f854597aa530219` |
| 60 | `theorem` | [le_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/le-def.md) | 559 | `result-track:531a4d74cacc0d6392634dda3fd8f15f69987c15d5645ed9651e58e52e44489e` |
| 61 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/instance.md) | 562 | `declaration-track:5b5aad3330d49fe10ff87d2f6fad2d243c0e925847893e6b5ea223382495f2dc` |
| 62 | `def` | [ofMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ofmeasurablespace.md) | 569 | `declaration-track:889bd23d7d00ca946034f8da946cc6bf65db043c0f21c5af981d06efb38d655b` |
| 63 | `theorem` | [ofMeasurableSpace_le_ofMeasurableSpace_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ofmeasurablespace-le-ofmeasurablespace-iff.md) | 575 | `result-track:5804687d1375574beea5fd836569316dce2dd8dfcf23298cb08dec023a87eb1f` |
| 64 | `inductive` | [GenerateHas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatehas.md) | 581 | `declaration-track:a447ff8686a3dee400ebace2e26d4e52a7580c9e0421bd91dcef27b6d9c54980` |
| 65 | `theorem` | [generateHas_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatehas-compl.md) | 588 | `result-track:d7131864b652ff2ea68e9bb0518e7037b6e4cb8f2947ee8f5dde5903e0c4c5f3` |
| 66 | `def` | [generate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generate.md) | 595 | `declaration-track:342a1b2d494440f281e87d260eccca0ac9915004398c3549a019c8f7df6a461f` |
| 67 | `theorem` | [generateHas_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatehas-def.md) | 601 | `result-track:9ef8beb93187e865822c58afe87979967fac602fbf284ae5aaaff0e25127e8f2` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/instance-source-edition-2.md) | 604 | `declaration-track:76faa05329e1f2a861ec0e6159c9898146a212b0040d21b7e00f9f49b6df0ef2` |
| 69 | `def` | [toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/tomeasurablespace.md) | 608 | `declaration-track:01f9d9923b398de8db93d4b6b85ea8409ed56c799ee558d01d807f9d45f361ca` |
| 70 | `theorem` | [ofMeasurableSpace_toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/ofmeasurablespace-tomeasurablespace.md) | 619 | `result-track:6c8a82d43eb291e82af363c43254c8b20ee2e2f45b4081250e5b0dd48489896f` |
| 71 | `def` | [restrictOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/restricton.md) | 625 | `declaration-track:e5d5e6ac81f82fb5e9c5cf89cd67621c7d207e1a0bbc1784f349e97aadb823dc` |
| 72 | `theorem` | [generate_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generate-le.md) | 639 | `result-track:9b42ca33bc649e53de8a2a59d2f5634ea0e28b806d7c8d4f2043c1fdd6fb5603` |
| 73 | `theorem` | [generate_has_subset_generate_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generate-has-subset-generate-measurable.md) | 642 | `result-track:08df493e0b56a73b30c8122d53fa971d4057c09702cd1c1c507dcdfa52c18059` |
| 74 | `theorem` | [generate_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generate-inter.md) | 646 | `result-track:b9e967e7565da19bc5390084c21fa7aa388a459f3fb942b10c35e3067ce218b2` |
| 75 | `theorem` | [generateFrom_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/generatefrom-eq.md) | 667 | `result-track:f76560352c67942a13533ca857c075bac4621aadf8024170f51a06dc8e6893bd` |
| 76 | `theorem` | [induction_on_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespaced.lean/declarations/induction-on-inter.md) | 687 | `result-track:51030bd974804c5ee2b91ca6177d0ffcfbc4cf38875a23c2221b251844906b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b1bcad997fae9d12978662f56df1b2db72e15f0e9b6f1ba1e531c020873d37e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
