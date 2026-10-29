# Verification target: Polish Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9111cc2ee3a579ec232cef8995c9d1c614c23ec4",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9111cc2ee3a579ec232cef8995c9d1c614c23ec4`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Perfect` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.CountableSeparatingOn` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StandardBorelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/standardborelspace.md) | 76 | `declaration-track:f733b5932cab285a0e06ca655f906daf9789a5428d79ecd3305d852d10cc19f4` |
| 2 | `class` | [UpgradedStandardBorel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/upgradedstandardborel.md) | 82 | `declaration-track:766185dd358b1e35b83b9c281e90b7a3f5bd8ad874a711d35b41073bb81692ae` |
| 3 | `def` | [upgradeStandardBorel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/upgradestandardborel.md) | 92 | `declaration-track:846356279bd58fce390d5d28af2a1b2cc7f1099247ba9a6e3ad2c1d8609d4d5d` |
| 4 | `theorem` | [eq_borel_upgradeStandardBorel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/eq-borel-upgradestandardborel.md) | 99 | `result-track:0306ece4e4ace660f070afbbc1fbd7dced28d4da5214988a97c3fa7416ce0dae` |
| 5 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:5c204d00c005312a771f739ac8255bf9be3aada846934380c731d9bba6f842f2` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/instance-source-edition-4.md) | 115 | `declaration-track:c732a7e05df9469012bfd22441a5875339fd6ce0563a99fdc9ff12070af62602` |
| 7 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/instance.md) | 122 | `declaration-track:3343610a7abad6151a6f87fd1a6e2d7731f8669d6a3191f146dff355f818c2b1` |
| 8 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/instance-source-edition-3.md) | 128 | `declaration-track:b6886aa40c818e1c4b30408f2bc0de5a644dcfc5741525adcdbbbd7f2141a069` |
| 9 | `instance` | [prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/prod.md) | 140 | `declaration-track:3ce79daee1f589fd77aafc2c7ceab8a84f32733de10acdce10d17449fd445279` |
| 10 | `instance` | [pi_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/pi-countable.md) | 146 | `declaration-track:9608b89accb4f58822a5747405b0446c064d7b277948f9d8bff994fcd5177027` |
| 11 | `theorem` | [analyticSet_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-empty.md) | 177 | `result-track:602dd82d97c5552773e620605277ac18699a31505da8e90eb7bd97d93259dada` |
| 12 | `theorem` | [analyticSet_range_of_polishSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-range-of-polishspace.md) | 181 | `result-track:22a5cf5b6980e085ccedd41d61ea31b7a346bcc9faf0097ac67722632169d1da` |
| 13 | `theorem` | [_root_.IsOpen.analyticSet_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-isopen-analyticset-image.md) | 193 | `result-track:d294c2d5848b4f342bac38210995dc899d7f74a97d1adf21acd315c0cec6b5c2` |
| 14 | `theorem` | [analyticSet_iff_exists_polishSpace_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-iff-exists-polishspace-range.md) | 200 | `result-track:49b7b88b428ce6d7e9c89b4f5390b4eb01563a855d13a63b2c77edc426122e9e` |
| 15 | `theorem` | [AnalyticSet.image_of_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-image-of-continuouson.md) | 217 | `result-track:71544b02a7dcd701125c5785fdb0b07aca6e20df1a6a300a486b1d27a243d070` |
| 16 | `theorem` | [AnalyticSet.image_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-image-of-continuous.md) | 227 | `result-track:f7d919315609f17df98f890d320026eed64cae0474ca433fe896c8c7f7a8081c` |
| 17 | `theorem` | [AnalyticSet.iInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-iinter.md) | 232 | `result-track:32b9eb27877382b8a078526bf992e9573639b460f7a12cac5a93f442c3d84818` |
| 18 | `theorem` | [AnalyticSet.iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-iunion.md) | 273 | `result-track:9a0707a66d189bf870ff1b8e73ba937cefa41124ef2d320eec0991601b4e2965` |
| 19 | `theorem` | [_root_.IsClosed.analyticSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-isclosed-analyticset.md) | 288 | `result-track:842d5d0ff60547b4176b8a05af557e6068456e463e3321fac7a9d1c81277f051` |
| 20 | `theorem` | [_root_.MeasurableSet.isClopenable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurableset-isclopenable-source-edition-2.md) | 296 | `result-track:ed0d7aad58cf6cd83b5203d6ae1401e3e7b4616b3ed1c48abfb0f630d62a54e7` |
| 21 | `theorem` | [_root_.MeasurableSet.analyticSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurableset-analyticset.md) | 305 | `result-track:cce956c49e0a91e0e1c4185100b5528d143a40a050a4a203c2231618bfd5b431` |
| 22 | `theorem` | [_root_.Measurable.exists_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurable-exists-continuous.md) | 319 | `result-track:fca6633e07541bed33217886c4e09fb0ac6dccf17bf7d6abd5167984860ef561` |
| 23 | `theorem` | [_root_.MeasurableSet.analyticSet_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurableset-analyticset-image.md) | 341 | `result-track:77b4f517a3cf5cd1a5aa210f5a7a4357033ce585689a820e7af0629605adcf59` |
| 24 | `lemma` | [AnalyticSet.preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-preimage.md) | 354 | `result-track:ea48e7b16aa0f004239b945221e6547d3809ad8aaed67cb45dd66601845270ec` |
| 25 | `def` | [MeasurablySeparable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurablyseparable.md) | 368 | `declaration-track:fce3256c5de1a7a97cee0ec03f5dec6571ffcbb42d80a16996a792592376a22a` |
| 26 | `theorem` | [MeasurablySeparable.iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurablyseparable-iunion.md) | 371 | `result-track:239c4f6972d5c10acc2e6dc3cb5f6d8a8d999446740dc9845bb10415fbca908f` |
| 27 | `theorem` | [measurablySeparable_range_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurablyseparable-range-of-disjoint.md) | 388 | `result-track:3aeca63c89f6ec1634e7ddaf5426e05ab0b13cfc30aa28a93cd9b09911f6b7eb` |
| 28 | `theorem` | [AnalyticSet.measurablySeparable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-measurablyseparable.md) | 500 | `result-track:109da680352025501a9c14953e689d7605af6e80609cb8465dc783e1a1f20c51` |
| 29 | `theorem` | [AnalyticSet.measurableSet_of_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/analyticset-measurableset-of-compl.md) | 512 | `result-track:578b9343aae86892b07bdf4eb74974e10e6609f4c7d8e74fb9a9801c09a6232c` |
| 30 | `theorem` | [measurableSet_preimage_iff_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableset-preimage-iff-of-surjective.md) | 537 | `result-track:fe3e4b54f9b8c682d1e494b073b4dc45bce991bbb11a13cea7835dfb80e9f363` |
| 31 | `theorem` | [map_measurableSpace_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/map-measurablespace-eq.md) | 548 | `result-track:914b90676cdd224f0d59e3e00e4ab71da9eb0f9e48daaf6932543b6da8199055` |
| 32 | `theorem` | [map_measurableSpace_eq_borel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/map-measurablespace-eq-borel.md) | 553 | `result-track:eccb710505f103c1442997cc8b4443c3e77374c1fa5f96d5dc3867865e5ffe37` |
| 33 | `theorem` | [borelSpace_codomain](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/borelspace-codomain.md) | 559 | `result-track:affc2cbb23567052a9d663e4abd587dd9d1a94c0fd5a3090262827d819dd17b2` |
| 34 | `theorem` | [measurableSet_preimage_iff_preimage_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableset-preimage-iff-preimage-val.md) | 566 | `result-track:02b1835f2543a4e3dc63f938ede78d30b6326a38ac87389b929fda2db3038220` |
| 35 | `theorem` | [measurableSet_preimage_iff_inter_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableset-preimage-iff-inter-range.md) | 576 | `result-track:f9e65493877bacefe5c7148a32b6cba4a3a3050874d7bcac93e12094ce9e7468` |
| 36 | `theorem` | [measurable_comp_iff_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurable-comp-iff-restrict.md) | 586 | `result-track:1659d21f8d628607a567a987a398f39f9e400cd8b908500f0443c9eedbde5631` |
| 37 | `theorem` | [measurable_comp_iff_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurable-comp-iff-of-surjective.md) | 595 | `result-track:61e994279e54b4c8b0a6ad21fd9de7c606e88e909eca5c90fa1b032399a23866` |
| 38 | `theorem` | [Continuous.map_eq_borel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/continuous-map-eq-borel.md) | 602 | `result-track:3bef89b833aa703b981206b042eac529c691c9cd1f14062104cf35c0f6effb53` |
| 39 | `theorem` | [Continuous.map_borel_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/continuous-map-borel-eq.md) | 609 | `result-track:5013d98edebb8fd9960b4be12615d231164e8905dbcfc4e8b61cd0e48bd6cca0` |
| 40 | `instance` | [Quotient.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/quotient-borelspace.md) | 615 | `declaration-track:abffa908e3091282708a71f7a5ba893f554c520747a1f0404d701ae1849e7871` |
| 41 | `instance` | [CosetSpace.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/cosetspace-borelspace.md) | 626 | `declaration-track:eb13f606fc20ed164bf5447ee47a263d2914d04079e801bc9faef7129bcdab40` |
| 42 | `instance` | [QuotientGroup.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/quotientgroup-borelspace.md) | 631 | `declaration-track:f93a66d5c8f92919ccd30d68a551ba481acc77e195704d1bfaff65931e2f7103` |
| 43 | `theorem` | [measurableSet_range_of_continuous_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableset-range-of-continuous-injective.md) | 644 | `result-track:e5ee0577e24cdfbcb32110fcd93a8a35cb9bcc070db31ba0a4954a1d7c6e960d` |
| 44 | `theorem` | [_root_.IsClosed.measurableSet_image_of_continuousOn_injOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-isclosed-measurableset-image-of-continuouson-injon.md) | 794 | `result-track:e591bd324c72233e6d24cdde22c66485478e4c79fb63a10312ef5ca022d3da89` |
| 45 | `theorem` | [_root_.MeasurableSet.image_of_continuousOn_injOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurableset-image-of-continuouson-injon.md) | 810 | `result-track:fdcfef8038e479603085a4c27fe7aa35aa2543284625592698f388a533ea3d6b` |
| 46 | `theorem` | [_root_.MeasurableSet.image_of_measurable_injOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurableset-image-of-measurable-injon.md) | 824 | `result-track:15a603cbed6b530c65be52de3c37aa03e1598472d3cd8ca59c988213bddd4aab` |
| 47 | `theorem` | [_root_.Continuous.measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-continuous-measurableembedding.md) | 847 | `result-track:7d9bb03a91c424f2736c4cddd5c33b4c61d90446d58497e91d77641fd313b707` |
| 48 | `theorem` | [_root_.ContinuousOn.measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-continuouson-measurableembedding.md) | 858 | `result-track:3543e6da6f5d41ed28611c48979d714aba3925cb68a14dafb779b31ee5a3ca75` |
| 49 | `theorem` | [_root_.Measurable.measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurable-measurableembedding.md) | 875 | `result-track:b915a4bfb2be3f854cafe9073e8762fae2784e80bc20e52587efb222f6beb148` |
| 50 | `theorem` | [borel_eq_borel_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/borel-eq-borel-of-le.md) | 884 | `result-track:bd4a8e522db1d7a18cefb15edc3161f92a25390e399bb01e0d777efc9fecf0b1` |
| 51 | `theorem` | [isClopenable_iff_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/isclopenable-iff-measurableset.md) | 896 | `result-track:f89eccc272427ebf0aade360a284d61c5b25b037d25a25f971a28602ab0f32b9` |
| 52 | `lemma` | [measurableSet_tendsto_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableset-tendsto-fun.md) | 914 | `result-track:fb9618edc1c3967398e5fe9955008f01e35d1a03cd86d7542ea7a45ef44b44fe` |
| 53 | `theorem` | [measurableSet_exists_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableset-exists-tendsto.md) | 926 | `result-track:d2afdc4317d652d3c0f896a0ce63bd1845212345f2ef2b75667028b82b07eaa2` |
| 54 | `theorem` | [_root_.MeasurableSet.isClopenable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurableset-isclopenable.md) | 958 | `result-track:420b8593ea9b402ad0c49a17f215a1f8011e033af9d617692c0dec9c5372194a` |
| 55 | `theorem` | [_root_.MeasurableSet.standardBorel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/root-measurableset-standardborel.md) | 968 | `result-track:7bd40c504edd2446586a113a49e9ade48a7fa7a961885747e73b603cc514eaa2` |
| 56 | `def` | [borelSchroederBernstein](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/borelschroederbernstein.md) | 985 | `declaration-track:8e3ca617b5fce54afdf4184eff69249ea0265ff0108750ee5276f43fb8388c94` |
| 57 | `def` | [measurableEquivNatBoolOfNotCountable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableequivnatboolofnotcountable.md) | 992 | `declaration-track:04c4acc33a2cbe65789d3f3e3191b04dfa4fbd2111debfd4e4c4c9f80389c728` |
| 58 | `def` | [measurableEquivOfNotCountable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/measurableequivofnotcountable.md) | 1004 | `declaration-track:288ee0a10e77e09f8a47acda90bd863c03d81d1b65eab95f906af3971084f4b8` |
| 59 | `def` | [Equiv.measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishBasic.lean/declarations/equiv-measurableequiv.md) | 1009 | `declaration-track:3cac2c30d5aebb8912b0561af7cc6f7f1cbce7ee685dac97595ec399df92ed68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80f0b516441adb155c06959e1fd09ddd74cdc112d160295a8bdcbfe3d9ede8ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
