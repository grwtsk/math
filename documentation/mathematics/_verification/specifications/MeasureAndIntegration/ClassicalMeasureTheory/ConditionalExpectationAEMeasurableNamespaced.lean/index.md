# Verification target: Conditional Expectation AEMeasurable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1a73eeeeee7c6e18848965fb9a2c9cf35d6972",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1a73eeeeee7c6e18848965fb9a2c9cf35d6972`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Trim` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AEStronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/aestronglymeasurable.md) | 56 | `declaration-track:c1afe586b3668b2eed7a07fbd82b33b43a7c95039a92cc11e27d09d19dcd3983` |
| 2 | `theorem` | [congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/congr.md) | 65 | `result-track:ba613c4a36769f8c84e42bee4ef9f27bc087ae8b9c3f934eb44f7e9700dd3853` |
| 3 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/mono.md) | 69 | `result-track:93e07842e5c6c0494e62cc2626b5e88b25cdd1ee8e27f004327e00c2f8d69934` |
| 4 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/add.md) | 73 | `result-track:40815f2b15c4a8746110e986ab712cd2e0623633e06d655319a3e6d037168a11` |
| 5 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/neg.md) | 78 | `result-track:eaa82a3b49abb0609fc06da6cfa8eee2920ab7d304079a54df782c48594a9310` |
| 6 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/sub.md) | 83 | `result-track:20e7562bf059b22f8b280c27de8ec133edd4c4b20b5f51180c188000b6072e8c` |
| 7 | `theorem` | [const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/const-smul.md) | 88 | `result-track:6b6f6f3bd88bd25b457fc4fe44ca7cfb64ff07ae6639c6552c18dc1c5eab100e` |
| 8 | `theorem` | [const_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/const-inner.md) | 93 | `result-track:8fed0ee96bff5abaea3ba5e4de8df9215e43ddb85cce41a7aacf4346707cec0c` |
| 9 | `theorem` | [of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/of-subsingleton.md) | 99 | `result-track:57604c707c60649acd0dec46070cb7ead7270f77dca4954e95e10f74256c04b5` |
| 10 | `theorem` | [of_subsingleton'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/of-subsingleton-source-edition-2.md) | 102 | `result-track:f9ea763d0ac9fae9815d473f3875fb434224d050eeac0f4690501d87841302e9` |
| 11 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/mk.md) | 106 | `declaration-track:d4b0d66ff2dd191b7b835d71932daa6e6f4cef472d6ea86a93355d8123980b09` |
| 12 | `theorem` | [stronglyMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/stronglymeasurable-mk.md) | 110 | `result-track:a9e9d0a23f771f4ffc429b66b3986a5d4632185342851be0c9bb55109052303e` |
| 13 | `theorem` | [ae_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/ae-eq-mk.md) | 115 | `result-track:144892fe95ca06232c6192783a26ffb3925efd74a00065ef61001d4eb9e01443` |
| 14 | `theorem` | [continuous_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/continuous-comp.md) | 119 | `result-track:1bbec8927aa26bde444fae73363b3a3ac49ece830cb560e36ff6efdf63f1fba7` |
| 15 | `theorem` | [aeStronglyMeasurable'_of_aeStronglyMeasurable'_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/aestronglymeasurable-of-aestronglymeasurable-trim.md) | 126 | `result-track:1bfe5b519f3fc61cc52b3aa37f065df75768d61650a99f81e1d2ad270cf6d9d6` |
| 16 | `theorem` | [StronglyMeasurable.aeStronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/stronglymeasurable-aestronglymeasurable.md) | 131 | `result-track:43ac62ee6659cef4feec12322c2430eadd6e5d3cefa9b1afa876675de50f128a` |
| 17 | `theorem` | [ae_eq_trim_iff_of_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/ae-eq-trim-iff-of-aestronglymeasurable.md) | 135 | `result-track:014497325c5927f47ec6ca80f926db7a08d4667950172ece8f342d68ac060213` |
| 18 | `theorem` | [AEStronglyMeasurable.comp_ae_measurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/aestronglymeasurable-comp-ae-measurable.md) | 146 | `result-track:3638ae1b04a44f65558815a23cefad927211ed48b5c1b20fbd060a809e7b4aa4` |
| 19 | `theorem` | [AEStronglyMeasurable'.aeStronglyMeasurable'_of_measurableSpace_le_on](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/aestronglymeasurable-aestronglymeasurable-of-measurablespace-le-on.md) | 158 | `result-track:4afb028ce4ae73dfda05c7648ae64b7a455cd80cf3b0e1829306c1fd0a69a789` |
| 20 | `def` | [lpMeasSubgroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgroup.md) | 181 | `declaration-track:0e536f52d6f07e2b4410a2d1bb4f1f8bc2e7e43e99bc7919559dbd76ae413953` |
| 21 | `def` | [lpMeas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeas.md) | 193 | `declaration-track:4dae11d2155f0502ac4de0f7d7985cc094e0a6da2fdd0567818f795ccd5f310d` |
| 22 | `theorem` | [mem_lpMeasSubgroup_iff_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/mem-lpmeassubgroup-iff-aestronglymeasurable.md) | 202 | `result-track:ae1f90d36811d621e4ef1ff1c6b312d7bbe748551e419fecb11af39c1d9b0ed7` |
| 23 | `theorem` | [mem_lpMeas_iff_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/mem-lpmeas-iff-aestronglymeasurable.md) | 211 | `result-track:b298392726abed48e2a4fb27b8ab1967184a0fdd4f5200f199a8b5795702b696` |
| 24 | `theorem` | [lpMeas.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeas-aestronglymeasurable.md) | 220 | `result-track:03dcbc269a86130c6d255e8ccc52cdfd0b0f07d13fe477e5fc82c75f9caf157f` |
| 25 | `theorem` | [mem_lpMeas_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/mem-lpmeas-self.md) | 229 | `result-track:8b75eb3ae5dcc6363cb197c7d35c15e0a0f36ee7e3a18454dfe29759843b4e2f` |
| 26 | `theorem` | [mem_lpMeas_indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/mem-lpmeas-indicatorconstlp.md) | 233 | `result-track:f82d4d14242bf8412c395f6964b459d728ac5a7df05364f31687c666db5f64b2` |
| 27 | `theorem` | [memLp_trim_of_mem_lpMeasSubgroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/memlp-trim-of-mem-lpmeassubgroup.md) | 252 | `result-track:6a619c4ef44b3bb26925792c211d84d2ef38f553431df40eeb732ac8a46f8895` |
| 28 | `theorem` | [mem_lpMeasSubgroup_toLp_of_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/mem-lpmeassubgroup-tolp-of-trim.md) | 272 | `result-track:ffa30c7f91d3fe0c92a45e5690639576e57f0eee0844efce70e270510bd96baa` |
| 29 | `def` | [lpMeasSubgroupToLpTrim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim.md) | 282 | `declaration-track:06f796fff4f357729fc0cce3e5e251b3784673473ce4f440acff1359c3bd63b4` |
| 30 | `def` | [lpMeasToLpTrim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeastolptrim.md) | 289 | `declaration-track:ae29f639f437973ac45c5b32ac114c6e1b6d3c74d2354a1e385510bdb14c8ba7` |
| 31 | `def` | [lpTrimToLpMeasSubgroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lptrimtolpmeassubgroup.md) | 295 | `declaration-track:966cbcd4113863cbc1c4f51f6f959cbcaddb6f07d0b46ac261e7e13c727301de` |
| 32 | `def` | [lpTrimToLpMeas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lptrimtolpmeas.md) | 301 | `declaration-track:e90c827bca46637887b0d4f259ade74ed2158529a5cce241924eddab31a8bd9b` |
| 33 | `theorem` | [lpMeasSubgroupToLpTrim_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim-ae-eq.md) | 306 | `result-track:3a744c0471bd6f313eccbabb2e752896767840c36b57e1e816c91fd8fbc049fa` |
| 34 | `theorem` | [lpTrimToLpMeasSubgroup_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lptrimtolpmeassubgroup-ae-eq.md) | 311 | `result-track:d51b64e8c187eaa3b85fd186c4a2a54a36d2354ea5be8c72cd06e0222663fcdd` |
| 35 | `theorem` | [lpMeasToLpTrim_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeastolptrim-ae-eq.md) | 315 | `result-track:e82495f7c71b69dd6ee4edabc44c68b2ceaa50b5926264294c95732845b96ed1` |
| 36 | `theorem` | [lpTrimToLpMeas_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lptrimtolpmeas-ae-eq.md) | 320 | `result-track:5260fef1383549109afae5373cbecf9d43bab42ae91f502b82f95e49e131b3f9` |
| 37 | `theorem` | [lpMeasSubgroupToLpTrim_right_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim-right-inv.md) | 325 | `result-track:f1b4604a6cbfdbbfa47056e4e671419b461f2ef51277146ce7ccbd6689b3e483` |
| 38 | `theorem` | [lpMeasSubgroupToLpTrim_left_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim-left-inv.md) | 334 | `result-track:4a435a9ce227cb9fb3ad4418dafa368d0aa5486de6702b182d3cd9a321bc5992` |
| 39 | `theorem` | [lpMeasSubgroupToLpTrim_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim-add.md) | 341 | `result-track:5f8fa9a76fa2af7a9bd29a0f82ea70f90239c68266a804613f5dada2c0f11925` |
| 40 | `theorem` | [lpMeasSubgroupToLpTrim_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim-neg.md) | 356 | `result-track:6f92a6ca93aebbbb866ccd5ca751bf325d8a26f3258bd3e27183439c7251f36a` |
| 41 | `theorem` | [lpMeasSubgroupToLpTrim_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim-sub.md) | 365 | `result-track:c0d6de271d88784e8e4823eed5e23c9d854c8cd5cf55075f227968c5e5fdd3e9` |
| 42 | `theorem` | [lpMeasToLpTrim_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeastolptrim-smul.md) | 371 | `result-track:002340865a2edc96c7ceabf21662562fdd4fbb2a861bf9082e71a776ef677fae` |
| 43 | `theorem` | [lpMeasSubgroupToLpTrim_norm_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrim-norm-map.md) | 383 | `result-track:b6dfb090e78206a57ae41e1d5630d9d3bbbf9b9cc33c7df751a4e21712fcb4d8` |
| 44 | `theorem` | [isometry_lpMeasSubgroupToLpTrim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/isometry-lpmeassubgrouptolptrim.md) | 389 | `result-track:528ac4d4edcf14a06083d003fab7dcc418493d1134eb3976695b735aec40aa8a` |
| 45 | `def` | [lpMeasSubgroupToLpTrimIso](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolptrimiso.md) | 398 | `declaration-track:9c18f7799def6e87ef3e51878c89c98ca9f91c7ed3730452c6e2075fa40352d3` |
| 46 | `def` | [lpMeasSubgroupToLpMeasIso](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeassubgrouptolpmeasiso.md) | 409 | `declaration-track:504063d8453887d0ef40fd5338f4ba7fc1943ae485e97b847eef2ea135a97c10` |
| 47 | `def` | [lpMeasToLpTrimLie](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeastolptrimlie.md) | 414 | `declaration-track:69e6c34b4472378ee21d2dfc1266a376f885e0726982a5b6b90cca4878aac30c` |
| 48 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/instance-source-edition-2.md) | 426 | `declaration-track:4bc8453f9967dc16d96dda6beb7e96ca203af21548b09605a1acff9ea1493614` |
| 49 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/instance.md) | 434 | `declaration-track:1b3d8084470997369bd9e65b1eb32055e05bfe5133b54148b1bc03e0bcf0cc9e` |
| 50 | `theorem` | [isComplete_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/iscomplete-aestronglymeasurable.md) | 438 | `result-track:20e087096e7dff6631560276e30d54f3b549d51e063af6b8c3a5dc2ba500a713` |
| 51 | `theorem` | [isClosed_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/isclosed-aestronglymeasurable.md) | 448 | `result-track:3c444dfc6bdc6e65437cc6253d179e7f8ce4816e43e07130496e660e9e2496e6` |
| 52 | `theorem` | [lpMeas.ae_fin_strongly_measurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeas-ae-fin-strongly-measurable.md) | 464 | `result-track:651a8883ae0a24e2c2bc3bf157083187b1bb29e865df5c582289bcc7d81c6fb7` |
| 53 | `theorem` | [lpMeasToLpTrimLie_symm_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeastolptrimlie-symm-indicator.md) | 473 | `result-track:68d6aba68205397bc4d3bd0e5c13d4f6be060b31d1a758ad10ed0f3bce4a0477` |
| 54 | `theorem` | [lpMeasToLpTrimLie_symm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lpmeastolptrimlie-symm-tolp.md) | 484 | `result-track:d25c69a21cdc2e1a4c6612ddb4d5261191c5db43fd4e70ac6a4ba410bb765aab` |
| 55 | `theorem` | [Lp.induction_stronglyMeasurable_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lp-induction-stronglymeasurable-aux.md) | 502 | `result-track:594dad931759acf161acdaafceda884cd8b51057c445d53b24c1c01157243266` |
| 56 | `theorem` | [Lp.induction_stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/lp-induction-stronglymeasurable.md) | 548 | `result-track:fd40253ee46d04a80a60af80bc1f9b45856e872840b6ff1ddfcfc12e26452698` |
| 57 | `theorem` | [MemLp.induction_stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurableNamespaced.lean/declarations/memlp-induction-stronglymeasurable.md) | 611 | `result-track:18dbb7b3b1320c8135a7b468f514b286ec9b36fd09797863af97a68f824795d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91024d2be7602bb3f5ea28e1d627e0eca75323addb417aa7d2f24db74d7b64fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
