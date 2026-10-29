# Verification target: Locally Integrable Namespaced Antione On

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db2f43cb636d2761d5abf25d1d5d8804a867ce44",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db2f43cb636d2761d5abf25d1d5d8804a867ce44`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegrableOn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocallyIntegrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon.md) | 55 | `declaration-track:a4d6fbd78b518a19b18291bd40a1542bf8a37025037d7a4ec5a08e9c9e7bef0f` |
| 2 | `theorem` | [LocallyIntegrableOn.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-mono.md) | 59 | `result-track:bf432f5a8dc92e400bd6a4f1091b385becae31d7b3e73dbd16c93e4571126203` |
| 3 | `theorem` | [LocallyIntegrableOn.norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-norm.md) | 64 | `result-track:31cfbc9e57a60d07535a924eec0437d32af9b5d99161314a3fdc6633b860842c` |
| 4 | `theorem` | [IntegrableOn.locallyIntegrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrableon-locallyintegrableon.md) | 70 | `result-track:a67f167ff9d9ef5201df97671e8b504083a55b326959fee2c3b5f435b069d8c3` |
| 5 | `theorem` | [LocallyIntegrableOn.integrableOn_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-integrableon-iscompact.md) | 75 | `result-track:d5553b96fa62a05f3dbfb1b6a65a4dc6d186dcf238f7b4c99b49fd5cecde64bc` |
| 6 | `theorem` | [LocallyIntegrableOn.integrableOn_compact_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-integrableon-compact-subset.md) | 81 | `result-track:c8de6976781e867c36ee2087b5c515ddf330c4657d5029d28801c1fcca1382e3` |
| 7 | `theorem` | [LocallyIntegrableOn.exists_countable_integrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-exists-countable-integrableon.md) | 89 | `result-track:729a417ac2eb4f52bfc1d3d94ff03c7de7b911b1532f3cff133729d0294512cf` |
| 8 | `theorem` | [LocallyIntegrableOn.exists_nat_integrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-exists-nat-integrableon.md) | 111 | `result-track:34514190416353c880794f3c659060bf828e319e3aed8da6958b8ca4b340d286` |
| 9 | `theorem` | [LocallyIntegrableOn.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-aestronglymeasurable.md) | 137 | `result-track:58da17176eb0d57525cd5b558a6a383542114909a4d199104c11af90d680a2dd` |
| 10 | `theorem` | [locallyIntegrableOn_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-iff.md) | 147 | `result-track:629dc463f66bd5190b4063b46686954bfa673be76aa55fd5e3b9822024176d24` |
| 11 | `theorem` | [LocallyIntegrableOn.add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-add.md) | 165 | `result-track:a06ec5a13f7de8c0ed116d1759409d8548c74cc9a642ab759d2b9f15c51a3c59` |
| 12 | `theorem` | [LocallyIntegrableOn.sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-sub.md) | 169 | `result-track:01c38e9a4fdd246a9ea4f9d13ed5cc532ed51cfce24e63898aac4ef68dccad88` |
| 13 | `theorem` | [LocallyIntegrableOn.neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-neg.md) | 173 | `result-track:fb075ed32502cf012a07665f5fcfdcb9b4f46d2c98259366b9c78fc4ae93c212` |
| 14 | `def` | [LocallyIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable.md) | 181 | `declaration-track:170f56871e72210e4ae97a6025cef80fe07d50873084a1a1d985862853de0273` |
| 15 | `theorem` | [locallyIntegrableOn_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-univ.md) | 185 | `result-track:1e53beadd432da5c009f7f47ef75ac4ae4f75156a9298ecda49285e8e74a2fff` |
| 16 | `theorem` | [LocallyIntegrable.locallyIntegrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-locallyintegrableon.md) | 189 | `result-track:2ac7854af2c35863db05b7ff10b56798b41f05c35a7793887ce3859fce4976ce` |
| 17 | `theorem` | [Integrable.locallyIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrable-locallyintegrable.md) | 193 | `result-track:153f3756eb400b04c3fdd22bbe0f51a8e56d395ca6b81108c88d6c74f932e8d7` |
| 18 | `theorem` | [locallyIntegrableOn_of_locallyIntegrable_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-of-locallyintegrable-restrict.md) | 200 | `result-track:1b56083e9213a525db041dd4303aa407b21dc03d3ff755eda43fa98ae9b19664` |
| 19 | `theorem` | [locallyIntegrableOn_iff_locallyIntegrable_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-iff-locallyintegrable-restrict.md) | 213 | `result-track:40102cf113a8a38eaef7e31ff6c139bd3cd043beeeb45ea395e7fa58094f694d` |
| 20 | `theorem` | [LocallyIntegrable.integrableOn_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-integrableon-iscompact.md) | 229 | `result-track:f4832675344b73c272b4dc44f283e7392d661e424d18868935060f8e133ef5ad` |
| 21 | `theorem` | [LocallyIntegrable.integrableOn_nhds_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-integrableon-nhds-iscompact.md) | 236 | `result-track:d2b7cc64cfe071573790a652f375af5fc821df71c726138015838e2364b7743b` |
| 22 | `theorem` | [locallyIntegrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-iff.md) | 250 | `result-track:e72c21834a25071c378ffe05050ac44fc0ee81ceba806a13ba0c4ceac41a4cce` |
| 23 | `theorem` | [LocallyIntegrable.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-aestronglymeasurable.md) | 257 | `result-track:febb9c7ffe4f93b3710afc41a1072e98b869147a752d333d21226ae2071c3000` |
| 24 | `theorem` | [LocallyIntegrable.exists_nat_integrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-exists-nat-integrableon.md) | 264 | `result-track:8b3c556648878b09ae196a28d42c634676e0eb03582c3973e8f48c5b4b1a0945` |
| 25 | `theorem` | [locallyIntegrable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-const.md) | 271 | `result-track:170d5b9446cd0d527a651a019cd2014e3bc21c68b74f2401c9d68279bef5f439` |
| 26 | `theorem` | [locallyIntegrableOn_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrableon-const.md) | 279 | `result-track:7d89b0f1654ad5f2625c3d0dd8e24ff60fdc1724b2081d88eed99ec22232e5ba` |
| 27 | `theorem` | [LocallyIntegrable.indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-indicator.md) | 284 | `result-track:356b332cdabc07b11a2d094e2ae6b213565ef7d085247f6923b8d72cf161f63f` |
| 28 | `theorem` | [locallyIntegrable_map_homeomorph](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-map-homeomorph.md) | 291 | `result-track:ff821abbb2ac7e4c9dbd02db89101f9076f208cc3ae1bc9a520fa320353c4f4e` |
| 29 | `theorem` | [LocallyIntegrable.add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-add.md) | 306 | `result-track:ccf70c322cf63fe7b5ddf9df5c9c9e4d5bb9d8b2afe94aca17f0b0c7335713a1` |
| 30 | `theorem` | [LocallyIntegrable.sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-sub.md) | 309 | `result-track:71bde303dbf2d1a85b896ab970714b57077db61e51d76defe07350e460870021` |
| 31 | `theorem` | [LocallyIntegrable.neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-neg.md) | 312 | `result-track:c5299b4beba4b2fae3e502f6a190e1f681df54e99f2299f35b7000a165ec324d` |
| 32 | `theorem` | [LocallyIntegrable.integrable_smul_left_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-integrable-smul-left-of-hascompactsupport.md) | 317 | `result-track:c8022e7185536aea8d0b195b6e733eb57dec84ba5e8a4f3b7ddf2d19c358622a` |
| 33 | `theorem` | [LocallyIntegrable.integrable_smul_right_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/locallyintegrable-integrable-smul-right-of-hascompactsupport.md) | 336 | `result-track:dde87b186e588e6beccc51413e75d543dd56108370f5cca766ede5aac43c8cf1` |
| 34 | `theorem` | [Continuous.locallyIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuous-locallyintegrable.md) | 364 | `result-track:ac7e6e1cfee0271cbe1abceb3fa12abbba073f37a1f1776864193b038c6d178a` |
| 35 | `theorem` | [ContinuousOn.locallyIntegrableOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuouson-locallyintegrableon.md) | 371 | `result-track:54cddf4341d791a92537e1677b998d67ab11b792592f5eebcb4d87b23d84105a` |
| 36 | `theorem` | [ContinuousOn.integrableOn_compact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuouson-integrableon-compact.md) | 380 | `result-track:98adbdd46fc9f57363cba3d0e37065035233f356c9ddb931bf0a3e92fec3515c` |
| 37 | `theorem` | [ContinuousOn.integrableOn_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuouson-integrableon-icc.md) | 387 | `result-track:8aeb20b55ebf340dc3e9b2b2cbbbddde85dafa41468e9ab9d77f0de88e51988b` |
| 38 | `theorem` | [Continuous.integrableOn_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuous-integrableon-icc.md) | 392 | `result-track:2241560b82106fc5898835b9435f8a12a0f4aae19e94fd663eedf85640bea581` |
| 39 | `theorem` | [Continuous.integrableOn_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuous-integrableon-ioc.md) | 397 | `result-track:7c753f26699cbda3cea16d946a3aeccd2e69bf71ca44a517ac954079a3dc5b8e` |
| 40 | `theorem` | [ContinuousOn.integrableOn_uIcc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuouson-integrableon-uicc.md) | 402 | `result-track:f9101672f87c98135f40d527e970d2b4aadcd647521b149adba8be5d9b22e7c5` |
| 41 | `theorem` | [Continuous.integrableOn_uIcc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuous-integrableon-uicc.md) | 407 | `result-track:0999f3a1a9697fbb6866a28ea4391074b2018306004fd24965cfa9b7aa34c976` |
| 42 | `theorem` | [Continuous.integrableOn_uIoc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuous-integrableon-uioc.md) | 412 | `result-track:ff7b59c33bd4f0d5126c79c88ea591407cf4f0348c723e12cbc6ecb25c94f3e3` |
| 43 | `theorem` | [Continuous.integrable_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuous-integrable-of-hascompactsupport.md) | 418 | `result-track:ba2741ba5ca22193681ee93a6431dde698649a01c440ad2279cd9d57d064fdcb` |
| 44 | `theorem` | [MonotoneOn.integrableOn_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/monotoneon-integrableon-of-measure-ne-top.md) | 433 | `result-track:9eeaaafbf08cdbbf172f36723085d7f778845e00498aaf96e9e1d0c034a9d13e` |
| 45 | `theorem` | [MonotoneOn.integrableOn_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/monotoneon-integrableon-iscompact.md) | 450 | `result-track:b0bb2d770e4fb9f2d5bc9a786fddfce72856b35aa2664ffc4e52e63d07cfc201` |
| 46 | `theorem` | [AntitoneOn.integrableOn_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/antitoneon-integrableon-of-measure-ne-top.md) | 459 | `result-track:ec00a70ab39e5f931ccc1837b2c6c4322fdf4e85a05a5d009be2a485d8cfd0fc` |
| 47 | `theorem` | [AntioneOn.integrableOn_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/antioneon-integrableon-iscompact.md) | 465 | `result-track:625ade47dad246c34495b70e2ab150145f8c81cf0b52d13010aa5f62dfa4dbe6` |
| 48 | `theorem` | [Monotone.locallyIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/monotone-locallyintegrable.md) | 470 | `result-track:d1148f3786d45761c2bbe35c64bd588e4213e1624d75f34379c218af0fb84df9` |
| 49 | `theorem` | [Antitone.locallyIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/antitone-locallyintegrable.md) | 483 | `result-track:87060dffd60cd9b3807a1bf5fa447e2777b5af55f77a2fcf7e44ad1906778b12` |
| 50 | `theorem` | [IntegrableOn.mul_continuousOn_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrableon-mul-continuouson-of-subset.md) | 498 | `result-track:645adb9cac39598681accec85648c428aa2208e6a17e540f6d580f3a902ebc07` |
| 51 | `theorem` | [IntegrableOn.mul_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrableon-mul-continuouson.md) | 512 | `result-track:ef6dd8d01fa33a350675db62e5013ef4dd9d99929ab8211cb80326346521d786` |
| 52 | `theorem` | [IntegrableOn.continuousOn_mul_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrableon-continuouson-mul-of-subset.md) | 517 | `result-track:a0db14030d5d665e5c6a4d57e66e2a7c1c839081fffbf2ed1b75de2f72ff6de0` |
| 53 | `theorem` | [IntegrableOn.continuousOn_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrableon-continuouson-mul.md) | 530 | `result-track:dafc026ace7d919f30b2fde8bc30a01ede5df62db13b181acda58c5fd62e54a9` |
| 54 | `theorem` | [IntegrableOn.continuousOn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrableon-continuouson-smul.md) | 541 | `result-track:e83f39ae8698ec6948968bb5b26dbbfccf722a4a815a9f9a9a05cfd29954b034` |
| 55 | `theorem` | [IntegrableOn.smul_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/integrableon-smul-continuouson.md) | 551 | `result-track:6915eb6f8477b486e17fa29284789e16deae61cac2b80d9686c83171ca7bafdf` |
| 56 | `theorem` | [continuousOn_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuouson-mul.md) | 565 | `result-track:97cc9e49e389fe30efa77f20c1a19f8f08e4ed3f384e33f5251dc23e62f96bce` |
| 57 | `theorem` | [mul_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/mul-continuouson.md) | 572 | `result-track:e3f1eeb18b615450610cc059887aba8d7ebedf829ee936c0de97f053e2481889` |
| 58 | `theorem` | [continuousOn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/continuouson-smul.md) | 579 | `result-track:2838cd87cdf89f7ad124f43e8d90b28a5ddbe2ed4d43b4dee64b6095a419dc7b` |
| 59 | `theorem` | [smul_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LocallyIntegrableNamespacedAntioneOn.lean/declarations/smul-continuouson.md) | 587 | `result-track:fbf05f913c69de3aebac3dec902444114e45869179ec020cee29b7c0c5cbbb0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b26f6ad7fdbfd0bc5b616a9e28f99bdcdb794cdf9cdaa1d17a2a2b6ad26087e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant0719e523e2719c5af1b5fe09a723b13417d5aa08fa49dd6a792f20bfd4cb4f3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
