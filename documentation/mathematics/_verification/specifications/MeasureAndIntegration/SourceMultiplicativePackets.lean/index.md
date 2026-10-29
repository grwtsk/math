# Verification target: Source Multiplicative Packets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82fda8ed57adb6c764d002cdf2324735730ad264",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82fda8ed57adb6c764d002cdf2324735730ad264`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSignedHeat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceDensity](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcedensity.md) | 35 | `declaration-track:daf85a87ca2598879c44919b34a3b57fa581d2f8cfd40f43d3b1b7907cb1200c` |
| 2 | `theorem` | [sourceDensity_integrable](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcedensity-integrable.md) | 37 | `result-track:ab7077178f212ea46b81bed3e951ca0996670af46f5368723c05d88e6736ff00` |
| 3 | `theorem` | [sourceDensity_mass](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcedensity-mass.md) | 41 | `result-track:b2351d3dff91039aa7c167bd57067cd027a7ecd7c1fa648e844ed06a3059e95e` |
| 4 | `theorem` | [cosine_sourceDensity_integrable](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cosine-sourcedensity-integrable.md) | 45 | `result-track:fce3b90b932cd61926be011740070bd91a846f1da2e1fd2878df6c7400bb469b` |
| 5 | `theorem` | [sourceCorrelation_eq_cosine_integral](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcecorrelation-eq-cosine-integral.md) | 54 | `result-track:52e6b532b913b316225f5da18286a460a797b745719d276da3231e0f78dfe539` |
| 6 | `def` | [multiplicativeDistance](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/multiplicativedistance.md) | 99 | `declaration-track:47a18c10ed6e234b54c72a6298fd8fef14c9e36e363b75f52065dbd36de179f4` |
| 7 | `theorem` | [multiplicativeDistance_nonneg](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/multiplicativedistance-nonneg.md) | 101 | `result-track:1eeb3ec6caff28b677c0be50bd90099f2552a830911f171288ea46bf536cab5a` |
| 8 | `theorem` | [multiplicativeDistance_self](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/multiplicativedistance-self.md) | 104 | `result-track:181bf0a3cfa14ef1c39be15e697a61594ee7f98b62b996d5d82cce7040ada773` |
| 9 | `theorem` | [multiplicativeDistance_comm](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/multiplicativedistance-comm.md) | 107 | `result-track:bfb5e3c48a9e3370704290b73a77a1534354c564641b487a192f24fb87720591` |
| 10 | `theorem` | [multiplicativeDistance_triangle](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/multiplicativedistance-triangle.md) | 112 | `result-track:1dcb1d9f3009093c61bdcc2556a9ed406c6eb57745930ad6482e8672bc18c295` |
| 11 | `theorem` | [sourceCorrelation_abs](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcecorrelation-abs.md) | 121 | `result-track:d3f85e00a27951e08d31fe3d54f0b47785d71be2287058c95e3f1002a5a4931c` |
| 12 | `theorem` | [sourceCorrelation_eq_distance](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcecorrelation-eq-distance.md) | 129 | `result-track:54dc77ea9082751f9b57f6d8560ac0a5adb32f27c74a3c4d1db85ccd97a49e08` |
| 13 | `theorem` | [sourceCorrelation_eq_zero_of_one_le_distance](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcecorrelation-eq-zero-of-one-le-distance.md) | 136 | `result-track:4f8a84512b230530e27cdd6f164b3dbf9927c8072dcaeb4880129b36e2fd2e38` |
| 14 | `theorem` | [sourceCorrelation_eq_zero_of_one_lt_distance](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcecorrelation-eq-zero-of-one-lt-distance.md) | 143 | `result-track:9830f3cfadd0b08296c5716c7f9e34852007345d5b0c158100793fd66a78dc12` |
| 15 | `theorem` | [cosine_cubic_product](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cosine-cubic-product.md) | 149 | `result-track:384a21fcd8c2e0b468b8bbe24c0814461c024e2ab59d04206a61d34e8d043570` |
| 16 | `theorem` | [cosine_cubic_source_integral](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cosine-cubic-source-integral.md) | 159 | `result-track:51c190ac938bf3886fffa8c7a044f21f8fc4598541d13935fe84c0c46e28e5d1` |
| 17 | `theorem` | [sum_cube](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sum-cube.md) | 200 | `result-track:caa7176334d8a0a602a05216e2f2207025daba12b3db7195f6161c7e40aeae3d` |
| 18 | `def` | [cubicSourceMoment](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicsourcemoment.md) | 206 | `declaration-track:a640cfea5634791194566717e03275a59cfa40d04fea944840445a64b2bfdd9b` |
| 19 | `theorem` | [cubicSourceMoment_eq_packets](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicsourcemoment-eq-packets.md) | 211 | `result-track:a77b244e75027f7e0d064db3fcdca961d59ba17631036833409d03bb53afa5ad` |
| 20 | `theorem` | [sum_grouped_by_key](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sum-grouped-by-key.md) | 273 | `result-track:35455a1929b8487ce57401368bf44250d3e1c6f450e2532c54f110b9a5549f48` |
| 21 | `def` | [cubicRatioKey](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicratiokey.md) | 290 | `declaration-track:cc52f556760df323a2fc91d31cf0721fd5e0785901b2cec1baa10a3eeea52227` |
| 22 | `theorem` | [cubic_ratio_response](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubic-ratio-response.md) | 297 | `result-track:08ee41b9485c55c7c77c2c812d93e5082a1bf2c76b5361652546f658f9beeafa` |
| 23 | `abbrev` | [CubicPacket](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicpacket.md) | 328 | `declaration-track:88d340286efd1f77b06f57893bbe8c13765339ce2a46403068e3c8f6cf801adb` |
| 24 | `def` | [cubicPacketInventory](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicpacketinventory.md) | 332 | `declaration-track:bcc172dde53df501a9b9cdc1e16c74555ad0d5cc805acd9679d3e20204abe33c` |
| 25 | `def` | [cubicPacketKey](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicpacketkey.md) | 337 | `declaration-track:60b909d427612a6a4cfcbcbf0c3c435a433c01a2aac18e86003ca2df9ba37216` |
| 26 | `def` | [cubicPacketWeight](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicpacketweight.md) | 340 | `declaration-track:f0e1acc37e0f38555d7bab8b32ba1d44ed7136a0ced463aa20db3394f8991ee6` |
| 27 | `theorem` | [cubicPacketKey_pos](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicpacketkey-pos.md) | 344 | `result-track:b6456f064193f5afb59f6f0ab584e4f656ae19be0bbc939d0e98607fd14644ba` |
| 28 | `theorem` | [cubicPacket_response_zero_of_one_le_distance](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicpacket-response-zero-of-one-le-distance.md) | 362 | `result-track:45913bc1beaab19915b032e973a4a429c8858fab78fc806e15c5d2ba3351cfef` |
| 29 | `theorem` | [cubicSourceMoment_eq_rational_packets](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicsourcemoment-eq-rational-packets.md) | 369 | `result-track:0ddfd64c76472dd145bc22b2d6146de7f51c0b9adb9e24519350fa8e709ffefc` |
| 30 | `theorem` | [cubicSourceMoment_eq_grouped_packets](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicsourcemoment-eq-grouped-packets.md) | 396 | `result-track:abe1ea13c1db7ca2018de482d01d7acf28ddcee1cade6960335d39dee8688eff` |
| 31 | `theorem` | [cubicSourceMoment_eq_interior_packets](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicsourcemoment-eq-interior-packets.md) | 406 | `result-track:7d5c455ae926a3926fb6b3503c3eb8f4e57107b8b1fbcd5b3a092b08d335d684` |
| 32 | `theorem` | [cubicSourceMoment_eq_selected_add_complement](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubicsourcemoment-eq-selected-add-complement.md) | 421 | `result-track:24735aebceb4510868d3ef35e9f6269191c3d7a2b885c0379e63f5537f184f9f` |
| 33 | `theorem` | [cubic_selected_error_le_profile_budget](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubic-selected-error-le-profile-budget.md) | 435 | `result-track:ae176c5bc36d0a3ed390ba7a21ef55d10b38948baa98d50c1a51f115be4d37cb` |
| 34 | `theorem` | [cubic_selected_error_le_coefficient_budget](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/cubic-selected-error-le-coefficient-budget.md) | 450 | `result-track:fbf5b866742323af9c19e76027d3049ef974dddcaca46a69fd17093d997f2c4a` |
| 35 | `theorem` | [sourceCubicHeat_zero_eq_cubicMoment](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcecubicheat-zero-eq-cubicmoment.md) | 464 | `result-track:d60f1ded1bb3085b859114f40d960bf6b980b71b34d2b180b24075c570a5cbfa` |
| 36 | `theorem` | [sourceCubicHeat_zero_eq_grouped_packets](../../../../MeasureAndIntegration/SourceMultiplicativePackets.lean/declarations/sourcecubicheat-zero-eq-grouped-packets.md) | 473 | `result-track:0d7e10bc74f3b935da3aed36e23133a8e0946e9ae29bc2756f8ee3940e7b245f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fc0c3886e4c1e837a773b24304443eda76912e6df0661313ef6ebdbc6153c96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
