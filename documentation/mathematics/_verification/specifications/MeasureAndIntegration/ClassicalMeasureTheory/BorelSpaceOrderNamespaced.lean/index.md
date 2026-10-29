# Verification target: Borel Space Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92836497e9d56f47a80a1027b3d598575c1c5761",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92836497e9d56f47a80a1027b3d598575c1c5761`.

Source path: `GRWTSK/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Semicontinuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEMeasurableSequence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Order.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Lattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [borel_eq_generateFrom_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/borel-eq-generatefrom-iio.md) | 60 | `result-track:c70053f0e0508ba792c5a7f596ba5907bff1421d7173af6c59f580e468f951d1` |
| 2 | `theorem` | [borel_eq_generateFrom_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/borel-eq-generatefrom-ioi.md) | 82 | `result-track:d33966a3ee3a93df5e09d7e7aeafe918fb01a6b492c254408af041c44cac52f6` |
| 3 | `theorem` | [borel_eq_generateFrom_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/borel-eq-generatefrom-iic.md) | 85 | `result-track:118922a1cc3f19ca2abe979efc4b22d3a6d6ec37b4a9230a0f96521ff6a6479d` |
| 4 | `theorem` | [borel_eq_generateFrom_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/borel-eq-generatefrom-ici.md) | 98 | `result-track:5e97a5375294d704db8a4df86da97aec7671b6581e748faf5c2924fa72e1de1b` |
| 5 | `theorem` | [measurableSet_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-ici.md) | 113 | `result-track:90c5fa4f267785535e973cf25a37ee1b56663188343dfe23e55761b0ac34a79c` |
| 6 | `theorem` | [nullMeasurableSet_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-ici.md) | 116 | `result-track:a63096284172fead2836d6dc609bde36db63c1f26c8d75a2c1ea778d0dc6bdde` |
| 7 | `theorem` | [measurableSet_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-iic.md) | 120 | `result-track:ac9de23dda26c703c6f6f78160f768e9f705e0b1c486c971448cf7e2315ac149` |
| 8 | `theorem` | [nullMeasurableSet_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-iic.md) | 123 | `result-track:4625ad2d547b5020c6f38c3c2c7eb7c76e90c405396d0913ed3fa80ced50328d` |
| 9 | `theorem` | [measurableSet_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-icc.md) | 127 | `result-track:e3ea32911fa3005f19163b176a1e59212a053fddc662775ef99ff09c2a51c57e` |
| 10 | `theorem` | [nullMeasurableSet_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-icc.md) | 130 | `result-track:6b530e918d178f2a8da67c80c23a3566357f67cb5e2ca73c273b7a1c1a96ba37` |
| 11 | `instance` | [nhdsWithin_Ici_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nhdswithin-ici-ismeasurablygenerated.md) | 133 | `declaration-track:7d376df82e9ee86c0bae578d095e93a6540a5d49208110b8b0854f65157facfe` |
| 12 | `instance` | [nhdsWithin_Iic_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nhdswithin-iic-ismeasurablygenerated.md) | 136 | `declaration-track:e260c8dd1616c694e24a396c5edfb75039a33cbebc3196d87a934dde8f44a6f0` |
| 13 | `instance` | [nhdsWithin_Icc_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nhdswithin-icc-ismeasurablygenerated.md) | 139 | `declaration-track:7c53de3954f68a777a9a2651c3af47a58c1d62d49313f642f8ebbec445e4cb29` |
| 14 | `instance` | [atTop_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/attop-ismeasurablygenerated.md) | 143 | `declaration-track:8a3ae1cbfa03b3715dd4d721647a3a82210c52bda2c07e74778a2eaaa4bb18b8` |
| 15 | `instance` | [atBot_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/atbot-ismeasurablygenerated.md) | 147 | `declaration-track:8f1a055b8e2b91d7e8c4d132349d61553f604e5a7baa7952b759e08fe5ac97e2` |
| 16 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/instance.md) | 151 | `declaration-track:17e7c01c12c42dafb38c064388271090a31d46d468ba10928e43c5afb71e3833` |
| 17 | `theorem` | [measurableSet_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-le.md) | 165 | `result-track:a554387f0534f84f0cfdd35536e57855a8329ebd2380ee84824d876d978b3ec9` |
| 18 | `theorem` | [measurableSet_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-le-source-edition-2.md) | 169 | `result-track:ba17c3af3be378fd8fff74424429af9971090dfb1b50f2f60b03bf7b71de75ae` |
| 19 | `theorem` | [measurableSet_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-iio.md) | 183 | `result-track:f2e2f8a0fae5edceafe12cb508c3678a25a2fa8cf2f83de016493bfb6091b6e5` |
| 20 | `theorem` | [nullMeasurableSet_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-iio.md) | 186 | `result-track:d7a10473845ab6741f7b1f3e18b9b0441aef15cd648be0f9cd27c0430aa65209` |
| 21 | `theorem` | [measurableSet_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-ioi.md) | 190 | `result-track:22f8c38bb9cc73b031f1b258bdef7d8c8cb970efca1b84762eb72e97fc8442be` |
| 22 | `theorem` | [nullMeasurableSet_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-ioi.md) | 193 | `result-track:1886cae05c0a7177519e8a543079f9edda5d3bd17f30fc930559d40ad30ac013` |
| 23 | `theorem` | [measurableSet_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-ioo.md) | 197 | `result-track:021c256868e03ce3fbe044d2b1d97644f7879a71e3f4d377049744bc48ae5bd0` |
| 24 | `theorem` | [nullMeasurableSet_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-ioo.md) | 200 | `result-track:150ba8203dfadc4ba0a7953f5fcff15b8873a141ee496dd7b49d08e93c5471a1` |
| 25 | `theorem` | [measurableSet_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-ioc.md) | 204 | `result-track:35a207c6e8a9eb626f3e74c18166bdb026bec28d0f7842c8154d532276e411a9` |
| 26 | `theorem` | [nullMeasurableSet_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-ioc.md) | 207 | `result-track:8be5da2bef8de7b644b46fae2fb70bc498ba2ef06eff47e38588dc2d9fe4f502` |
| 27 | `theorem` | [measurableSet_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-ico.md) | 211 | `result-track:d3a5257c9237887f816dc6c38ea7bf1608cb0452bfd561046a7cbe177d9e1579` |
| 28 | `theorem` | [nullMeasurableSet_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-ico.md) | 214 | `result-track:0b5b14428212e4c8847cc41a1ea1964cac59e0709bdc3f1d55c81870a480ab74` |
| 29 | `instance` | [nhdsWithin_Ioi_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nhdswithin-ioi-ismeasurablygenerated.md) | 217 | `declaration-track:dbfbcaea15ed5d7e9c2f684ae59617c91178ba4029fe4555b7c2c039698656f2` |
| 30 | `instance` | [nhdsWithin_Iio_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nhdswithin-iio-ismeasurablygenerated.md) | 220 | `declaration-track:88002f133522acd857d58fd391df574ba3b4fe00f520dc5d08274e0bf60ff2f2` |
| 31 | `instance` | [nhdsWithin_uIcc_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nhdswithin-uicc-ismeasurablygenerated.md) | 223 | `declaration-track:fd3c71759b5e0a1d0ff705c87405a7590658c0065d047fd5250eb0dffc4c2b27` |
| 32 | `theorem` | [measurableSet_lt'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-lt.md) | 227 | `result-track:29d98c3b5f83b96d87fc685802d1afbf081cd089f63a3afa18606b2243fa4960` |
| 33 | `theorem` | [measurableSet_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-lt-source-edition-2.md) | 231 | `result-track:39253a7d8839833cd194c75d138f09724a3c76fbda91015978bbf876225499ee` |
| 34 | `theorem` | [nullMeasurableSet_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-lt.md) | 235 | `result-track:7e2e5db2edd90eb2d95186526d8260ba775124e90b850cb02535b395397c68ee` |
| 35 | `theorem` | [nullMeasurableSet_lt'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-lt-source-edition-2.md) | 239 | `result-track:ae32fe03f34ed7220d435761b517acbed648dba1ddcb3178892f201ea55813d3` |
| 36 | `theorem` | [nullMeasurableSet_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/nullmeasurableset-le.md) | 243 | `result-track:c0b3d252a7c8fcd3f0da0f0c90ce6bcb8a23063ab4b95d41e8baaad772e1488d` |
| 37 | `theorem` | [Set.OrdConnected.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/set-ordconnected-measurableset.md) | 248 | `result-track:0f4b2431531ae84593a0fd247bf51b75e612ca6de91294bb825ada777ab6fa1a` |
| 38 | `theorem` | [IsPreconnected.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ispreconnected-measurableset.md) | 258 | `result-track:ec86c83c911b733f285d51d4bb682ca371cf23e7482821174af2355c09149040` |
| 39 | `theorem` | [generateFrom_Ico_mem_le_borel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/generatefrom-ico-mem-le-borel.md) | 261 | `result-track:7710b3f1b728a1bede09999b4c9da998c9722c20b18689133482d462f9cbdd26` |
| 40 | `theorem` | [Dense.borel_eq_generateFrom_Ico_mem_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/dense-borel-eq-generatefrom-ico-mem-aux.md) | 270 | `result-track:ce59e59e6dbbcdd2a3ac732ced40a06c455d09252743b17e8bbdfa74278b19c3` |
| 41 | `theorem` | [Dense.borel_eq_generateFrom_Ico_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/dense-borel-eq-generatefrom-ico-mem.md) | 306 | `result-track:475d3ae16c96a814275a230f441528d28710d8551b78af043f3a5afb5d19af34` |
| 42 | `theorem` | [borel_eq_generateFrom_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/borel-eq-generatefrom-ico.md) | 313 | `result-track:eaacf96b40477f1eab6170a53b3afd52a44f217036a6edb15a3e882cc064dba1` |
| 43 | `theorem` | [Dense.borel_eq_generateFrom_Ioc_mem_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/dense-borel-eq-generatefrom-ioc-mem-aux.md) | 320 | `result-track:0e285e8a265c20ac9e27e0cc429b9eaa1fea352a49d2203edbe2e4d397da508e` |
| 44 | `theorem` | [Dense.borel_eq_generateFrom_Ioc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/dense-borel-eq-generatefrom-ioc-mem.md) | 332 | `result-track:facdbd7de5d9b52a46b95f655d895e998605fcdf9b90adbeef514b5aa45d4a1c` |
| 45 | `theorem` | [borel_eq_generateFrom_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/borel-eq-generatefrom-ioc.md) | 339 | `result-track:c03944cd34f422958440f6d99d5a353e44c7902c401f891c9be52607932cdd91` |
| 46 | `theorem` | [ext_of_Ico_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-ico-finite.md) | 352 | `result-track:835177b3d5dfe3b7105485c2e2500dc426e16b3f00552644e0de299952b91ce3` |
| 47 | `theorem` | [ext_of_Ioc_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-ioc-finite.md) | 366 | `result-track:746aa8da8cea83df9dcd71ac79ff507e0299fd8f0f66937fb9d33046a6ad14a3` |
| 48 | `theorem` | [ext_of_Ico'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-ico-source-edition-2.md) | 376 | `result-track:621d6549a909396450d170c38c47e164a5bb8cee01726829e1f91744f13d4a4a` |
| 49 | `theorem` | [ext_of_Ioc'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-ioc.md) | 401 | `result-track:1993e3b84b68857edd528bfad614f88ac1e8a46c8b914f14120b1bbee0f29457` |
| 50 | `theorem` | [ext_of_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-ico.md) | 410 | `result-track:05dbd49a72080589a9f2e681347e8f51a2d1983a5ac77fc18f46d36dd8cd28ea` |
| 51 | `theorem` | [ext_of_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-ioc-source-edition-2.md) | 418 | `result-track:893d622f86e3757187d714ccd0179669151a80e5cd1e840761cfb778782d300d` |
| 52 | `theorem` | [ext_of_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-iic.md) | 426 | `result-track:676d3c1eb9377ab4813447649987a2116260d626bed8ab1cab2ec699cdec3a16` |
| 53 | `theorem` | [ext_of_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/ext-of-ici.md) | 441 | `result-track:9955887655cfb9349e8bad4a31c79f92436f31a604fa49e6df206cfa723c100b` |
| 54 | `theorem` | [measurableSet_uIcc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-uicc.md) | 449 | `result-track:01dd59ed705fdbd038046c4cf6d0a5ef5b748618b034f1647f6aedcc7af80e84` |
| 55 | `theorem` | [measurableSet_uIoc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-uioc.md) | 453 | `result-track:96dd83fb8b8e7ae9281266bfe035fbc72b739b5d5bf7df4d58877ddb3a94d764` |
| 56 | `theorem` | [Measurable.max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-max.md) | 459 | `result-track:afd8686ab135d518627dcefa1416b93140720299e02ee1d1770b35fbf9f1de82` |
| 57 | `theorem` | [AEMeasurable.max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-max.md) | 464 | `result-track:9dc54e22b182dfe92817107f608451ccc736069f865cef11e50cc0cb9a472ce0` |
| 58 | `theorem` | [Measurable.min](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-min.md) | 470 | `result-track:4f192fc9b7354ce73e8ad96ec9dbbf817a2750322a363b1c5921ed5fad2cafa2` |
| 59 | `theorem` | [AEMeasurable.min](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-min.md) | 475 | `result-track:cadbc8abab71dd7c8c6cfdf47d55901c3c8211b56d191f1a324741b76badf805` |
| 60 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/instance-source-edition-5.md) | 486 | `declaration-track:dbf1ecf1db7264417458122e2a2d445de53c5f8a827adaba6d818949191f4b8b` |
| 61 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/instance-source-edition-3.md) | 491 | `declaration-track:7a6c779172f7d965214370c10cea4d3fe23eae073eaf0f360b93bb523c900ce5` |
| 62 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/instance-source-edition-2.md) | 495 | `declaration-track:1e98a4f4ed514c54ddb0be746e1ae018eb7bb98d447242fc9d1ba8da6e0bfff0` |
| 63 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/instance-source-edition-4.md) | 500 | `declaration-track:9625b54109312b166be0b16620b079015624746fee12e3b478349aaf6f09c17a` |
| 64 | `theorem` | [measurable_of_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-of-iio.md) | 518 | `result-track:42d00ab0ea9568d1fa6edbeb8c00af99a56a5ac401501a509b50e7654ba65c5b` |
| 65 | `theorem` | [UpperSemicontinuous.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/uppersemicontinuous-measurable.md) | 523 | `result-track:d21b4a769e454aa415d3e6f60b54e893ffe8e30fe139c9be5d3a21ee1d8f1193` |
| 66 | `theorem` | [measurable_of_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-of-ioi.md) | 527 | `result-track:afd6f4e6e45865a7e74813023aada9ceaa99e57e04adb294fe04cde65aada9db` |
| 67 | `theorem` | [LowerSemicontinuous.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/lowersemicontinuous-measurable.md) | 532 | `result-track:0f4882ead881693f4a222cd135ef3092182c1ea3f416b53be7dda03206e81aac` |
| 68 | `theorem` | [measurable_of_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-of-iic.md) | 536 | `result-track:8a94b64286be45a3b4e278689174fb49db3ddf7c509dc755e9185fc6ba96b721` |
| 69 | `theorem` | [measurable_of_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-of-ici.md) | 541 | `result-track:646e518d83d60db85f6418bce7c75d6512acd8bd275dd5da6efbe5da5160d44b` |
| 70 | `theorem` | [Measurable.isLUB](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-islub.md) | 548 | `result-track:3411c754e2781426da0b7bd7d90a3ec2f2c6b17ee1e0bfca479815d7f9f11dbb` |
| 71 | `theorem` | [Measurable.isLUB_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-islub-of-mem.md) | 559 | `result-track:118944cb142416113171c617d6f519d1c0755033b4c8aac835cb5859699df9ab` |
| 72 | `theorem` | [AEMeasurable.isLUB](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-islub.md) | 590 | `result-track:a7c033c838181860132adf662fc1df1e992262e9e64a9f876e31bfab90b4e897` |
| 73 | `theorem` | [Measurable.isGLB](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-isglb.md) | 619 | `result-track:2408962641482a614f60e649fd115ab9c3274f8b799a6ab5f0849456931ac283` |
| 74 | `theorem` | [Measurable.isGLB_of_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-isglb-of-mem.md) | 625 | `result-track:bb6fa55f3b1c691f108d0b6414e7c763029bbeab2d08a2651a8f35e38110d298` |
| 75 | `theorem` | [AEMeasurable.isGLB](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-isglb.md) | 631 | `result-track:461c0b65bc17ec52b5c797d0f8898d7c176b0e26e03df124e2e10f5dab016963` |
| 76 | `theorem` | [Monotone.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/monotone-measurable.md) | 636 | `result-track:63da14ed7b12ace5e14258d3d671a15e1557a749754bdcfe9e86e91bcfda29cb` |
| 77 | `theorem` | [aemeasurable_restrict_of_monotoneOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-restrict-of-monotoneon.md) | 641 | `result-track:7332e594beea3666c6b502f2376931c39d25c9465c903ad19290df185bb02279` |
| 78 | `theorem` | [Antitone.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/antitone-measurable.md) | 647 | `result-track:12875d00ad50b02ceaff905c0ec280a7ded6ffee807d49de6392b3c374656887` |
| 79 | `theorem` | [aemeasurable_restrict_of_antitoneOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-restrict-of-antitoneon.md) | 651 | `result-track:4c2948793cb15621022e4a83f2cf2b9173663a0f9ac9955aaeadf67c9d461177` |
| 80 | `theorem` | [MeasurableSet.of_mem_nhdsGT_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-of-mem-nhdsgt-aux.md) | 656 | `result-track:ebbd78afdbc56b352c6dab4780974c130a77add5658f10978a72c5117c6c24e6` |
| 81 | `theorem` | [MeasurableSet.of_mem_nhdsGT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-of-mem-nhdsgt.md) | 683 | `result-track:6cfeb401e9c3331747d9734e93e4eba39ce68429ee3502550f3363a72acfb4d6` |
| 82 | `lemma` | [measurableSet_bddAbove_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-bddabove-range.md) | 703 | `result-track:d8aea93f05aaa415b70367fb41bafcb5f1b51fed7621ce17b2defc5bdfdc7d10` |
| 83 | `lemma` | [measurableSet_bddBelow_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurableset-bddbelow-range.md) | 728 | `result-track:9f51b3c8bd9c2d14d7620718f272fffe20c26410c920c8365186411d56fd80e2` |
| 84 | `theorem` | [Measurable.iSup_Prop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-isup-prop.md) | 737 | `result-track:ab2911b051dd3c68ee784481f3ad7c0834b4c8668948ae981c384749e20dff5a` |
| 85 | `theorem` | [Measurable.iInf_Prop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-iinf-prop.md) | 746 | `result-track:b97ed8acb89242d7f19be4da976ff6489953ca6830a4da7583e5e55aba7be394` |
| 86 | `theorem` | [Measurable.iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-isup.md) | 761 | `result-track:2737655d4dde84a216d66f3350315d775a9b212f1447d766bceca77e447bd9d8` |
| 87 | `theorem` | [AEMeasurable.iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-isup.md) | 788 | `result-track:9bd892ca008e3ea2666f264b2972efdbd163a3f19271292e91076fc7a6083551` |
| 88 | `theorem` | [Measurable.iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-iinf.md) | 794 | `result-track:f054d4eba13398ee1b1e8edb490776dfe05ce5ebb2b1a0d50a1102b43f2c155e` |
| 89 | `theorem` | [AEMeasurable.iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-iinf.md) | 799 | `result-track:16650b6d904cb96d2827cb1de155c11ef77ec281a3e06927343e551821f0aa08` |
| 90 | `theorem` | [Measurable.sSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-ssup.md) | 803 | `result-track:bf0dd71d15120f6a6b3fe1cff47d3f5a67f1228602f5f76f868426276993d320` |
| 91 | `theorem` | [Measurable.sInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-sinf.md) | 810 | `result-track:13fd10b188b958e149ba5c93fd2a42efb798199853b63d70bb844173dbe6f02e` |
| 92 | `theorem` | [Measurable.biSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-bisup.md) | 815 | `result-track:fba8c6e2e3084ca78656ae3262d44777e095b8f404d7fd454a1c4d46b205b4d2` |
| 93 | `theorem` | [AEMeasurable.biSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-bisup.md) | 829 | `result-track:f48fecdc4e7d73d74334c372ff6dd0d0d9a7b80ab1e033efae005017015c970f` |
| 94 | `theorem` | [Measurable.biInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-biinf.md) | 842 | `result-track:005c9d2b405f9c63808e5c08be547f6ce5892999933f8dfafa675d8b9e88b75f` |
| 95 | `theorem` | [AEMeasurable.biInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/aemeasurable-biinf.md) | 846 | `result-track:e478578a6f1a526d5b89725b278b8ab2b0da930e19c0fbae0d2a127916edd29a` |
| 96 | `theorem` | [Measurable.liminf'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-liminf-source-edition-2.md) | 852 | `result-track:9a5ba722cef195234d861c2a18ff9fa1dce0ad29ca232a744ad6fc569ab98bdd` |
| 97 | `theorem` | [Measurable.limsup'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-limsup-source-edition-2.md) | 905 | `result-track:c26d70d000ed0f4b670504b03386f69671cc52b51b3e5b7d484d47ce84649c15` |
| 98 | `theorem` | [Measurable.liminf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-liminf.md) | 913 | `result-track:04082b910d1abb5039bbd22444649693708a9f7fb238e7c5faa78212d8af2a0f` |
| 99 | `theorem` | [Measurable.limsup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measurable-limsup.md) | 920 | `result-track:0710ddd606aee397dc139ef40cb4cc2bbde70f869a21321fdb436418435a8f75` |
| 100 | `def` | [Homemorph.toMeasurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/homemorph-tomeasurableequiv.md) | 927 | `declaration-track:a3df8874ae0cc41167d22f3115ac08529ebe1dc2c152fec982a0df1a44d93673` |
| 101 | `theorem` | [IsFiniteMeasureOnCompacts.map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/isfinitemeasureoncompacts-map.md) | 932 | `result-track:05d3d61859f2300974cc561aa96fdce8b5150f982552dc1070360f1513b512d7` |
| 102 | `theorem` | [measure_eq_measure_preimage_add_measure_tsum_Ico_zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrderNamespaced.lean/declarations/measure-eq-measure-preimage-add-measure-tsum-ico-zpow.md) | 945 | `result-track:c3f8510e8527d0986e42a3926bc9c10aed2456c0110acae49b3cc55019fa9992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b8e8a9e6f0a3b02d7023ba8262441907ec19c3f7b89ff7c2b3fcda89890d29d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
