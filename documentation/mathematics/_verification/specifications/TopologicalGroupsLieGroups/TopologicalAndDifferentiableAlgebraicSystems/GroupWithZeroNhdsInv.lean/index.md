# Verification target: Group With Zero Nhds Inv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ed2326f2f69c2dfca55755c3a80913ae4da409c",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ed2326f2f69c2dfca55755c3a80913ae4da409c`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.div_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/filter-tendsto-div-const.md) | 50 | `result-track:7a9dfdd524326098f069447221ca931c5b1cfe696eb48b4a18e9c8c4fbb6f21e` |
| 2 | `theorem` | [ContinuousAt.div_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuousat-div-const.md) | 56 | `result-track:1f632bdb0600a19abf2fd5cfa44e448a49490f1b1b956d7b228866ad75596917` |
| 3 | `theorem` | [ContinuousWithinAt.div_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouswithinat-div-const.md) | 60 | `result-track:6e4464265fe2e67a136be68eb43b100667aceb9d7ab4804bf0b768d21bef876a` |
| 4 | `theorem` | [ContinuousOn.div_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-div-const.md) | 64 | `result-track:661dc8a59a90d24ace99ced2c3d38bd4cd650810474edbb5864d025e6fbdde5c` |
| 5 | `theorem` | [Continuous.div_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuous-div-const.md) | 69 | `result-track:b15fbb09ff8b2704bc1c0be76ba629a15c660e657f1eae160a650d3fd3c31550` |
| 6 | `class` | [HasContinuousInv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/hascontinuousinv.md) | 76 | `declaration-track:ea6dc5c946654997b618b7137ac18ab622cd4ca198a97eedcbb7de57f248c617` |
| 7 | `theorem` | [tendsto_inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/tendsto-inv.md) | 95 | `result-track:4774ea4185917b9897265d3a8bffd0aa834d4d7c197976a7b9757c8fe1c241a5` |
| 8 | `theorem` | [continuousOn_inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-inv-source-edition-2.md) | 98 | `result-track:ea0ea5a2d44a11790471d249ae7517bdd88d2958bc37e54d414a9298b6ca947c` |
| 9 | `theorem` | [Filter.Tendsto.inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/filter-tendsto-inv.md) | 104 | `result-track:a6bf730ac1227f6432d0955b69d446755d3542058d8e4c2dd9eb8e22900775b1` |
| 10 | `theorem` | [ContinuousWithinAt.inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouswithinat-inv.md) | 110 | `result-track:0b8ff40ddde64bae15de15ab3d189a98d7281957041bc49e1328935c4fbf5946` |
| 11 | `theorem` | [ContinuousAt.inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuousat-inv.md) | 115 | `result-track:f63c8ea98593b10e90b293418940138430eec4d6a7d2dc8e9b4203a7ec6e62b1` |
| 12 | `theorem` | [Continuous.inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuous-inv.md) | 120 | `result-track:21ff5a2150a5ce866f801e80296248e826de219a1fecf0033db0833ed5836a61` |
| 13 | `theorem` | [ContinuousOn.inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-inv.md) | 124 | `result-track:62f111f9da9ac20167c090ce030f1961d8255a37803616b0a18213b09b570cd6` |
| 14 | `theorem` | [Units.isEmbedding_val₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/units-isembedding-val.md) | 131 | `result-track:65e0e397e96648f4e22a3c86eaec7ad5ba90f30e44f7e0049cf9d7115676ef9f` |
| 15 | `lemma` | [nhds_inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/nhds-inv.md) | 142 | `result-track:3bf389865a323615df1e066eadffa9d6181aca09452ea4ecf969739d7c6a829f` |
| 16 | `lemma` | [tendsto_inv_iff₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/tendsto-inv-iff.md) | 146 | `result-track:b3822b4779244c85a27742e60a6ef26fbcde4dd5881bc231feed6e5f4337da55` |
| 17 | `theorem` | [Filter.Tendsto.div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/filter-tendsto-div.md) | 164 | `result-track:4f299562bf85bbc31f0f4cd2f72469ead5b156461366a9f85d9eca82142c7962` |
| 18 | `theorem` | [Filter.tendsto_mul_iff_of_ne_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/filter-tendsto-mul-iff-of-ne-zero.md) | 168 | `result-track:be2c2ad381c29a8128a00c216ef393aa5a40abb89038255d0aeeb64fd76c14eb` |
| 19 | `theorem` | [ContinuousWithinAt.div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouswithinat-div.md) | 178 | `result-track:6150d3410df114a5abd323062857ebf0bcacd13992bba728dcd56568484de290` |
| 20 | `theorem` | [ContinuousOn.div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-div.md) | 182 | `result-track:60b87057997eb6c60fab5c712ee0d4c686ac6f59b41850ffee835d3950ab8183` |
| 21 | `theorem` | [ContinuousAt.div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuousat-div-source-edition-2.md) | 187 | `result-track:ee5532b40f43a70524d30c946a5f1c71113baf367c498b3936ee3efa17153bc5` |
| 22 | `theorem` | [Continuous.div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuous-div.md) | 192 | `result-track:6656addbd678db0c462e465f9e89b7fd6b9320ad05561697e316735b298e1948` |
| 23 | `theorem` | [continuousOn_div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-div-source-edition-3.md) | 195 | `result-track:8819093ea560e9d5795243cb1570af11c4e1fba9cca1110565001360612950fa` |
| 24 | `theorem` | [Continuous.div₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuous-div-source-edition-2.md) | 199 | `result-track:9737211a06e9257e9e2e85031ee4eba79b7305888638250fd222bb4af6eb8225` |
| 25 | `theorem` | [ContinuousAt.div₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuousat-div.md) | 204 | `result-track:60b0dc26d8f44ae907fb77dac0c501e43c4d0a1aee22827aa1f93ba329b75d6a` |
| 26 | `theorem` | [ContinuousOn.div₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-div-source-edition-2.md) | 208 | `result-track:774ef39a151d1a574f49d2e7abdd7345f490169302aacd031a5f1197a97d7d1c` |
| 27 | `theorem` | [ContinuousAt.comp_div_cases](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuousat-comp-div-cases.md) | 216 | `result-track:a4c10382026320a7f269f8c2f8a02748757686da52290e772dd768d0f6cd6308` |
| 28 | `theorem` | [Continuous.comp_div_cases](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuous-comp-div-cases.md) | 229 | `result-track:2a4276e42cb5d7464e1ebbb94a9e34d8bacfa2aaaf18d2caa16d43beba610f5e` |
| 29 | `def` | [mulLeft₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/mulleft.md) | 247 | `declaration-track:c4b0369b1e05f0ef41dfe34494bb32d97fac5b78a5f5a6ed46c16b5aaa4a4065` |
| 30 | `def` | [mulRight₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/mulright.md) | 254 | `declaration-track:50f4e9a533f1a92c05082ed5613c19d31feaf882ac04e8d3c36d5ec96841d4f0` |
| 31 | `theorem` | [coe_mulLeft₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/coe-mulleft.md) | 260 | `result-track:94e7df8e83a7d438edb84fa2f12fdbbec5b26ea248b8b777d19f91690679d4d2` |
| 32 | `theorem` | [mulLeft₀_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/mulleft-symm-apply.md) | 264 | `result-track:cdb1c763b21edddcb803cf829e5771994c415ef08cd9886bac4c9b7932a94900` |
| 33 | `theorem` | [coe_mulRight₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/coe-mulright.md) | 269 | `result-track:c41d7aa11d7d39c97d64c02c2a8bfd881c5a76d4cf8636b02fa2dfe4c0104de8` |
| 34 | `theorem` | [mulRight₀_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/mulright-symm-apply.md) | 273 | `result-track:93a8b4aae21e0904b5f1e8cc964f668e7aae1300ebcacd3d5b68fcbf1b281133` |
| 35 | `theorem` | [map_mul_left_nhds₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/map-mul-left-nhds.md) | 283 | `result-track:725503d09ee866f0d17fff2c57569ada216f97768ac9f1c36b49721e5dccc0ed` |
| 36 | `theorem` | [map_mul_left_nhds_one₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/map-mul-left-nhds-one.md) | 286 | `result-track:1a7f4abb74d47abd9b93b457065288433d34cd5fc205465ddc79448cc32f6a21` |
| 37 | `theorem` | [map_mul_right_nhds₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/map-mul-right-nhds.md) | 289 | `result-track:a96d6351b845428ad782ecd82c2507d92a64a157e24a09ccbaf7dddae7087508` |
| 38 | `theorem` | [map_mul_right_nhds_one₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/map-mul-right-nhds-one.md) | 292 | `result-track:1f3335e78da55aa5152ec98ccf13ad522a6357e17ea4bacc338b450d1cad0330` |
| 39 | `theorem` | [nhds_translation_mul_inv₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/nhds-translation-mul-inv.md) | 295 | `result-track:d77d79f55ab7c5a729db487c8384df784a8509e9b3e6f4f8ba115aa8d7c1a0d8` |
| 40 | `theorem` | [HasContinuousInv₀.of_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/hascontinuousinv-of-nhds-one.md) | 300 | `result-track:e588ffae25ea0b2789936003a8ec2a072e757281dd4c9efdc006a085f2032c61` |
| 41 | `theorem` | [continuousAt_zpow₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuousat-zpow.md) | 314 | `result-track:aefc37f9c1d97ea7a4d1d3b2861388a8d8f7423c9a7f32a93b3a675bf27c5ff5` |
| 42 | `theorem` | [continuousOn_zpow₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-zpow-source-edition-2.md) | 322 | `result-track:aa49531c4ede78aab8bb571adcb58eb0a5496d0467916fbf0f9d80e8ee773a38` |
| 43 | `theorem` | [Filter.Tendsto.zpow₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/filter-tendsto-zpow.md) | 325 | `result-track:81aa2e28e4624f9b0498be6e2b925ddf7c677c682abc91d196692fa14492bf0d` |
| 44 | `theorem` | [ContinuousAt.zpow₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuousat-zpow-source-edition-2.md) | 332 | `result-track:e0cafad3ecd4851434df80f5cd84741594a873f602e4de2b433ce05f5c9462fa` |
| 45 | `theorem` | [ContinuousWithinAt.zpow₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouswithinat-zpow.md) | 336 | `result-track:ee91064445bbc41871d379d774b335ff5aabf53d1f3f6a9ffdb58b1c08fe38ca` |
| 46 | `theorem` | [ContinuousOn.zpow₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuouson-zpow.md) | 341 | `result-track:36b0e9600f7a5945de4988518080c9e74cd1228b3494fcfa21a69032cc2ccd5f` |
| 47 | `theorem` | [Continuous.zpow₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupWithZeroNhdsInv.lean/declarations/continuous-zpow.md) | 345 | `result-track:7a7a90b11bf5e8218378f6e57b5da66afa2dc09ebd3b45ffa7e49b61b508a2f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b898cb141b1e53bc1a9ac3ec2510208d000755539d21d4abda7e742714750bc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/GroupWithZero/Variant6031baf1e1c0a18a747fdccb3f101b6fec67a7173fdab117e458a5f7f98f563f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
