# Verification target: Conditional Expectation Condexp L1 Condexp L1 Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b2f2118875ab34e74ea461c86fcb23bd96a63aa",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b2f2118875ab34e74ea461c86fcb23bd96a63aa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondexpL2` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condexpIndL1Fin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1fin.md) | 73 | `declaration-track:14065462975ea1bbf21181532d1629aeb59be2d09e182206ae7dd36e16a2bfc6` |
| 2 | `theorem` | [condexpIndL1Fin_ae_eq_condexpIndSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1fin-ae-eq-condexpindsmul.md) | 78 | `result-track:1af4b469f53ff43ffdac58676ac90f00116ea5777dc04ad4eabb8c8d83c52cd8` |
| 3 | `theorem` | [q](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/q.md) | 88 | `result-track:a3caac96bbaea1eb0f3ee64095f6cf9c6e01d847fdd44b4847a2bc3881e5030e` |
| 4 | `theorem` | [condexpIndL1Fin_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1fin-add.md) | 92 | `result-track:ad4bc208bde480da2e4d30d2ae31a581f75e1cfbedd3bd642747957c149b48d1` |
| 5 | `theorem` | [condexpIndL1Fin_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1fin-smul.md) | 105 | `result-track:76d6dcd3d2656c6416ecaeab6c2c88295d1b55add2dfd10b3f7aedb711955cc4` |
| 6 | `theorem` | [condexpIndL1Fin_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1fin-smul-source-edition-2.md) | 116 | `result-track:c63b81382f016bf9912942ab6cce83f54f98daee96f27e89725876cfe283ec92` |
| 7 | `theorem` | [norm_condexpIndL1Fin_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/norm-condexpindl1fin-le.md) | 128 | `result-track:755d0272a9327de54fbd33995482c1af4a16a9b6ca0253f353f9c82f998bb6c9` |
| 8 | `theorem` | [condexpIndL1Fin_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1fin-disjoint-union.md) | 147 | `result-track:2da6af4e114c60027264e48de672dabdd60ae10d68c411fc191bb4439510bddb` |
| 9 | `def` | [condexpIndL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1.md) | 180 | `declaration-track:85d14749967b6e509e6c3c43998ea3092136ddda6d981d7706dcbce64fc8622f` |
| 10 | `theorem` | [condexpIndL1_of_measurableSet_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1-of-measurableset-of-measure-ne-top.md) | 187 | `result-track:bc876c158127da103025e2c9657b1ad165491f1a141f4bd9c7bc066445e76d02` |
| 11 | `theorem` | [condexpIndL1_of_measure_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1-of-measure-eq-top.md) | 192 | `result-track:9f7e5ed7d7bc365587b2a572d44f9fc3fddb670b20143715ae97d0f55d1ba209` |
| 12 | `theorem` | [condexpIndL1_of_not_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1-of-not-measurableset.md) | 197 | `result-track:3d1183e7b26bfe319fb4adde044e3d7f2640cfc7d478f86316522675442fcf9a` |
| 13 | `theorem` | [condexpIndL1_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1-add.md) | 202 | `result-track:60a3963379ba71db4c12736c75c25156a993dc04a3649a63892c28293cd34cd5` |
| 14 | `theorem` | [condexpIndL1_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1-smul.md) | 212 | `result-track:3d44fdc4d28de51357d538ad6248f1088d5de6bb98a17caaa09237f5fd0aabd5` |
| 15 | `theorem` | [condexpIndL1_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1-smul-source-edition-2.md) | 222 | `result-track:7f92cadbd5a19351523065e2bf3f762ad254eed9ef785df6c1fa709198cb1fd9` |
| 16 | `theorem` | [norm_condexpIndL1_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/norm-condexpindl1-le.md) | 232 | `result-track:c665ae7fbb9bc590fd4c2d4f701223f8f3fb3b773b7aefc48f62682a307d56c2` |
| 17 | `theorem` | [continuous_condexpIndL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/continuous-condexpindl1.md) | 244 | `result-track:05a5b4131a0373b68d53b78258a9bd77e6413ef67aa83db4c69d2951896adf66` |
| 18 | `theorem` | [condexpIndL1_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpindl1-disjoint-union.md) | 248 | `result-track:f36685ab97d3ee5c02d63011c213f5a28d0a612caec1a57bf07c9966234037b6` |
| 19 | `def` | [condexpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind.md) | 266 | `declaration-track:5b5436c5a56f8dc928fe5ca0a74af4902e563fed6be84bc7e9b0dcc44ab7eae8` |
| 20 | `theorem` | [condexpInd_ae_eq_condexpIndSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind-ae-eq-condexpindsmul.md) | 276 | `result-track:b62d8bda128c22b893f22b17b0b00bbb3ba853b040cb7abe5bcab6ba733e43b5` |
| 21 | `theorem` | [aestronglyMeasurable'_condexpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/aestronglymeasurable-condexpind.md) | 285 | `result-track:3c7aefb97a06ccdb001868ba8fb138165a6a4412a15323e7a6648741e83a19f7` |
| 22 | `theorem` | [condexpInd_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind-empty.md) | 292 | `result-track:f047869edbf19b1217c16e34f0a61fe73db866fc0c516292a72d95f6b8e3f1f2` |
| 23 | `theorem` | [condexpInd_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind-smul.md) | 302 | `result-track:cfb52c47ee605ca73d895e27871991f95a7a151484965392dcbe6f02f9190c60` |
| 24 | `theorem` | [norm_condexpInd_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/norm-condexpind-apply-le.md) | 307 | `result-track:7b164806c1d5c421074be5567c9a5f98fd3c175ad96a7cb10da0d437902d3864` |
| 25 | `theorem` | [norm_condexpInd_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/norm-condexpind-le.md) | 311 | `result-track:c4b5252afc3e8076bc869010d8f372fa3de95647424fd3147122266b4811dcef` |
| 26 | `theorem` | [condexpInd_disjoint_union_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind-disjoint-union-apply.md) | 315 | `result-track:8cfeea7b5ce7fc9d3bbe8c1d08e187ddd83711f07b6b60184f2556538eec4b60` |
| 27 | `theorem` | [condexpInd_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind-disjoint-union.md) | 321 | `result-track:7d933c2e00e74db468814ea77391327edd4f913740c194ea8991743ec51b6aae` |
| 28 | `theorem` | [dominatedFinMeasAdditive_condexpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/dominatedfinmeasadditive-condexpind.md) | 329 | `result-track:ffd053e38bfe2ab426623c08287d76d991ff6f7cf64954a1e8f166879239ad44` |
| 29 | `theorem` | [set_integral_condexpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/set-integral-condexpind.md) | 337 | `result-track:f97d7decef49c493b0674b2917a841b6d319220a7bb283c5e9e16585307e16db` |
| 30 | `theorem` | [condexpInd_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind-of-measurable.md) | 346 | `result-track:cf347ba56319b9c7ef36effea801b6b30e11028f22bd5be1f79e360e69bcfeb5` |
| 31 | `theorem` | [condexpInd_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpind-nonneg.md) | 359 | `result-track:d902911966f5b8b1ec61ee053d8f74fb46abea90e93322816fbc57707123c37e` |
| 32 | `def` | [condexpL1Clm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1clm.md) | 380 | `declaration-track:4ef3aff3b5a98e0bbffd9c82ffdb98fd5a7359a0952c00b346c56fb49b374b01` |
| 33 | `theorem` | [condexpL1Clm_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1clm-smul.md) | 387 | `result-track:28554145df78bfcaed79654cb9a8020e664066c3c89f27edc698ab0c25f1c01d` |
| 34 | `theorem` | [condexpL1Clm_indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1clm-indicatorconstlp.md) | 393 | `result-track:e3dac86a605f6950a831ac2d50b3d2b59bf1dc89972789aa7c7f0b1864c6ae82` |
| 35 | `theorem` | [condexpL1Clm_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1clm-indicatorconst.md) | 398 | `result-track:de6357888bf89e620f79958c6eab919ebf6387535589890fc04e1073b94b836d` |
| 36 | `theorem` | [set_integral_condexpL1Clm_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/set-integral-condexpl1clm-of-measure-ne-top.md) | 404 | `result-track:2a9905573dc67be3293ec72f9645cd9855cfd060d90aaa6683375c79d53342d2` |
| 37 | `theorem` | [set_integral_condexpL1Clm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/set-integral-condexpl1clm.md) | 430 | `result-track:c7ae886f5fedea23b7380a104e35dd114e86d37522095c06d43cfd6e51562fc3` |
| 38 | `theorem` | [aestronglyMeasurable'_condexpL1Clm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/aestronglymeasurable-condexpl1clm.md) | 465 | `result-track:94ee2ad6bc153cc7f9829cd143caeca84a88691c13a62e4723285dfdfd77c0cb` |
| 39 | `theorem` | [condexpL1Clm_lpMeas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1clm-lpmeas.md) | 483 | `result-track:7ea66d38626543be9cf293ad73b75d8e52521bf28f62bff4a6cae37d39cbfc05` |
| 40 | `theorem` | [condexpL1Clm_of_aestronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1clm-of-aestronglymeasurable.md) | 507 | `result-track:f3128dbdbf29cd07ded0f5e040b6f9995a722e1bbba20e8a07f607b171990f02` |
| 41 | `def` | [condexpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1.md) | 514 | `declaration-track:64a2c578e0e38d9780548a16f8adc72d05b8999246240298d868aea079a63bf6` |
| 42 | `theorem` | [condexpL1_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-undef.md) | 518 | `result-track:41f5f054c0ee87a346e6c06f4f53d7149940b881b397f8f4ccbfe3f36a8f8e6c` |
| 43 | `theorem` | [condexpL1_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-eq.md) | 522 | `result-track:6446b1b7d6607df4bb95860a4e825eb69c97d50926b829cb862fb723c9a4a0da` |
| 44 | `theorem` | [condexpL1_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-zero.md) | 527 | `result-track:ea75571ba5d257cfa4d5fc802b096fe828d6edc6bc451b80fae11c0055da6110` |
| 45 | `theorem` | [condexpL1_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-measure-zero.md) | 532 | `result-track:f4044687dd4f36a4aa07cfe468272fc7645a4414fee7cfd1267217211a24743d` |
| 46 | `theorem` | [aestronglyMeasurable'_condexpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/aestronglymeasurable-condexpl1.md) | 536 | `result-track:1dd4477f3ab221aad09b2b43ba943c4053e4a75b2220b4d15451f5a48f8b1cb5` |
| 47 | `theorem` | [condexpL1_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-congr-ae.md) | 546 | `result-track:b1e0b7868aa0228dca9d2d1ca1b7b9cd795b6a18b0ed3c31256ecaae7cbe38a1` |
| 48 | `theorem` | [integrable_condexpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/integrable-condexpl1.md) | 551 | `result-track:5729de795a6977c8410f48e9628ff4ad99fd19f1bbcdad64e42c81e13cf0eb95` |
| 49 | `theorem` | [set_integral_condexpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/set-integral-condexpl1.md) | 558 | `result-track:6ed6417bb35d08c2f268204ebf36ec9254831674f1cc684f371a7008c9ae7313` |
| 50 | `theorem` | [condexpL1_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-add.md) | 565 | `result-track:271eb435d8216eff0e6e82b6e403fe3bbe83e56fe79f58a67f5f1d042ca62283` |
| 51 | `theorem` | [condexpL1_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-neg.md) | 570 | `result-track:5b744c2986628d1c2b7790fbf0e03fed72746bd36e1aea949e4d4295a8210533` |
| 52 | `theorem` | [condexpL1_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-smul.md) | 574 | `result-track:6cad13dad691cc310e71fb043e653786830725b0bb82fb70a4365560065cbb08` |
| 53 | `theorem` | [condexpL1_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-sub.md) | 579 | `result-track:7fa86d8533d8181228edb08e91ef65a4a5ec14d529577ed489d24d3e7cebe125` |
| 54 | `theorem` | [condexpL1_of_aestronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-of-aestronglymeasurable.md) | 584 | `result-track:d35f04bcc106c45018b06d648cb3525522af3b0362fc552ceb217eda5790b83a` |
| 55 | `theorem` | [condexpL1_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationCondexpL1CondexpL1SourceEdition2.lean/declarations/condexpl1-mono.md) | 592 | `result-track:151c76135832d8f75cd58687e0d7ad56ead07f42349d41dfa1b311bc0b8949c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69ceaae7d84238867452ac61804a4b891687a97189694caf60af546469d6c21a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
