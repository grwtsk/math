# Verification target: Algebra Group Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55242eda1288001b9e3432de645441a894c78412",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55242eda1288001b9e3432de645441a894c78412`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Set.isClosed_centralizer](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/set-isclosed-centralizer.md) | 34 | `result-track:c205cd803c04f6958b4017ced7c5de60205ea67e30a5cc981ef9b7c6beb0af78` |
| 2 | `def` | [Homeomorph.mulLeft](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-mulleft.md) | 54 | `declaration-track:4847c6d7cb1eb0cc11e5cacfc12202c2676a6bdb65aa668603bffddeae04838c` |
| 3 | `theorem` | [Homeomorph.coe_mulLeft](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-coe-mulleft.md) | 58 | `result-track:c9106fd0f629cbb48fdee8662f1f3f8913190323c2372eb7b6ebc1c1c911a320` |
| 4 | `theorem` | [Homeomorph.mulLeft_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-mulleft-symm.md) | 62 | `result-track:5a72039a29a7e24247474c6c64fa5061ecc445ff03896eab6a7cb3bd440e7c1e` |
| 5 | `lemma` | [isOpenMap_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isopenmap-mul-left.md) | 67 | `result-track:6c653f5e4c33938cb9c7a2d262c91b643ef92db8dcee7b3990829f61717b8d3a` |
| 6 | `theorem` | [IsOpen.leftCoset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isopen-leftcoset.md) | 70 | `result-track:3dee285d34d0e8977120548d9b352abc24a85392fcf260a8669c641246f0dc4d` |
| 7 | `lemma` | [isClosedMap_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isclosedmap-mul-left.md) | 74 | `result-track:49394403e3836ebddc8b232fae0d474b71221e1751dc50e3e8a4489b71c5bf98` |
| 8 | `theorem` | [IsClosed.leftCoset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isclosed-leftcoset.md) | 77 | `result-track:773e371618ffa191204b984c89ec02d9383e39eb75043babb0fff36ee4c64b5a` |
| 9 | `theorem` | [Filter.map_mul_left_nhdsNE](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/filter-map-mul-left-nhdsne.md) | 81 | `result-track:004140401157c9420b6f0c00e1b7f99f017854693ae45508d2c90e7d4df0d186` |
| 10 | `def` | [Homeomorph.mulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-mulright.md) | 88 | `declaration-track:46dc1f7c6373b5ca0cbb398b03a4ac20f4df63bffbc85a11c0b24a29e2322b62` |
| 11 | `lemma` | [Homeomorph.coe_mulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-coe-mulright.md) | 92 | `result-track:d28cbc87bad61d95ac81ca5b8a6a920552fedcead88c7b28910035944929c1d1` |
| 12 | `theorem` | [Homeomorph.mulRight_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-mulright-symm.md) | 95 | `result-track:26b839d9a020a78626d7325137a03242de6f808b7bfb485a10d75610379a64c0` |
| 13 | `theorem` | [isOpenMap_mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isopenmap-mul-right.md) | 101 | `result-track:a4a2212a5ecd471aef937e3f258ed17f257c8b0ea693bec9003c46acf4c3a8b2` |
| 14 | `theorem` | [IsOpen.rightCoset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isopen-rightcoset.md) | 105 | `result-track:ad9d0ac9e71deaf43b40b0b62d09a6b1f9e4c146d128224491e9d25a021a8f38` |
| 15 | `theorem` | [isClosedMap_mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isclosedmap-mul-right.md) | 109 | `result-track:5bc968402675aac777532dd975fb869a0297d7d16195b4ccff5ddb23795ce052` |
| 16 | `theorem` | [IsClosed.rightCoset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/isclosed-rightcoset.md) | 113 | `result-track:fec4cb69ba24e52c70437ad29099614efc21326a99ec624e291b4ad6cb7fe3d4` |
| 17 | `theorem` | [Filter.map_mul_right_nhdsNE](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/filter-map-mul-right-nhdsne.md) | 117 | `result-track:318d0fb931ad39d388cbdbf5bf9c6581e4ad257101995f3e9d55650a9edb8276` |
| 18 | `theorem` | [discreteTopology_iff_isOpen_singleton_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/discretetopology-iff-isopen-singleton-one.md) | 123 | `result-track:c83e27929b9ac3364223b904ad8400f532baff5f4773b1365734a19d0e65149d` |
| 19 | `theorem` | [discreteTopology_of_isOpen_singleton_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/discretetopology-of-isopen-singleton-one.md) | 127 | `result-track:02348b68a4f8762eeba189d065bb88ff6757785f92102c280c1e31441c44fda5` |
| 20 | `theorem` | [smul_connectedComponent](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/smul-connectedcomponent.md) | 132 | `result-track:c67b0d84f7b60c61383c4e536b49efd881b235d962bee9d66d2930bd2606d58b` |
| 21 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/totallydisconnectedspace-iff-connectedcomponent-one.md) | 136 | `result-track:912a3772d3c1aaee2861653be358462c3f17d2481411e1b2e6ef9aaa23eeb038` |
| 22 | `lemma` | [Filter.tendsto_mul_const_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/filter-tendsto-mul-const-iff.md) | 143 | `result-track:1e87b1cb46e28fe67d83e912cac16be6ab506881f5345e73c643750c43037ee0` |
| 23 | `lemma` | [Filter.tendsto_const_mul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/filter-tendsto-const-mul-iff.md) | 149 | `result-track:f3c7bd2e06f829aa272cef2e355df2fdd0fbace8f2a63da92a2c011fbaddbab1` |
| 24 | `instance` | [ConjAct.units_continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/conjact-units-continuousconstsmul.md) | 168 | `declaration-track:07300034c997a9f41f2ca3dcaadae5e01232bcdce22a993f9ae7fe839613dbc5` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance-source-edition-5.md) | 173 | `declaration-track:ace78161226cf194225e7086e2c157c236eeb6421f5a5b19ebe4155253f6c9cb` |
| 26 | `theorem` | [IsTopologicalGroup.continuous_conj_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-continuous-conj-prod.md) | 187 | `result-track:ad4685f469847e269597d2e621c2dc854ad93f2d0b29c01d26b853c7760884a4` |
| 27 | `theorem` | [IsTopologicalGroup.continuous_conj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-continuous-conj-source-edition-2.md) | 194 | `result-track:f82395c07589920c9c71a9246835973dbdc30a28fade6f37f9ecabe08bcfef30` |
| 28 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance.md) | 198 | `declaration-track:0bc5751e457078705ab11fdaa4e5e7726b5bfeeb57e19648e8589bbfc80ce2a1` |
| 29 | `theorem` | [IsTopologicalGroup.continuous_conj'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-continuous-conj.md) | 207 | `result-track:bd697dcffeff1a7c17677d1be6ca9d2054a79f15c26572d486294cadc079fcdf` |
| 30 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance-source-edition-7.md) | 215 | `declaration-track:f2bb99bdc6cce38625fe574aad9269c323ad13b34232513ee09909e952961d70` |
| 31 | `instance` | [Prod.instIsTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/prod-instistopologicalgroup.md) | 218 | `declaration-track:2c4926732cbe5f132397d61c1827ea26adfec1b5e32da65b47f1405384a676e7` |
| 32 | `instance` | [OrderDual.instIsTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/orderdual-instistopologicalgroup.md) | 223 | `declaration-track:e2ba55c7db469474587257862b35a2bb069d1e6ba9e5ecb98436d289f8c47e93` |
| 33 | `instance` | [Pi.isTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/pi-istopologicalgroup.md) | 226 | `declaration-track:3bbf406c08220ebc3375cf8a56f994655fea26bf3fbb958e9b28c6d753934d9b` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance-source-edition-3.md) | 234 | `declaration-track:644d6ce0fdee64e79be704a343b1a247aa67d80871ad8e592b72b428d97b6fed` |
| 35 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance-source-edition-6.md) | 239 | `declaration-track:dfe54bf95af1a58e5c8d99098ead74e3b0a3c96bdba7eba41da633542a2e714b` |
| 36 | `theorem` | [nhds_one_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/nhds-one-symm-source-edition-2.md) | 244 | `result-track:ff4ff5c2ee2f5475737824cc55b12edc1278b1370a81d8ba606b8dd71cade22c` |
| 37 | `theorem` | [nhds_one_symm'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/nhds-one-symm.md) | 248 | `result-track:604b88e4982a2c2f1c76567488be72250850fa334f2258a944043c047ff612ab` |
| 38 | `theorem` | [inv_mem_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/inv-mem-nhds-one.md) | 252 | `result-track:672f5a7daca435b6d4051011ca124a14fcd263a0418797281c09ed420e790a2c` |
| 39 | `def` | [Homeomorph.shearMulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-shearmulright.md) | 258 | `declaration-track:3550eddff73ff56fc7f5fbd8ddb0de973dc43ce36b882e84ba2161ab89f51179` |
| 40 | `theorem` | [Homeomorph.shearMulRight_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-shearmulright-coe.md) | 262 | `result-track:4a9dc99c36050a6d355c5fa8d74652f2f61af219120dddf74ce135cf251d1aa4` |
| 41 | `theorem` | [Homeomorph.shearMulRight_symm_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/homeomorph-shearmulright-symm-coe.md) | 267 | `result-track:7233a01ffb0dd36824a8255f2b5790bfc8938ebf637a380b756847c1ffd737b5` |
| 42 | `theorem` | [Topology.IsInducing.isTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/topology-isinducing-istopologicalgroup.md) | 274 | `result-track:ac4da49f3e9c6eae21ffb75e4339076a70d6b080ccbf4757a0ab6e36688fcefa` |
| 43 | `theorem` | [isTopologicalGroup_induced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-induced.md) | 283 | `result-track:6760f4dc32822471d346fb6744f12cbac5985b75058e446fd588c3a1a7830c59` |
| 44 | `theorem` | [IsTopologicalGroup.t1Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-t1space.md) | 301 | `result-track:7226bdad404cbcc43600b912512085581b3fb6a5fc9042428888081f67f55cf6` |
| 45 | `theorem` | [compact_open_separated_mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/compact-open-separated-mul-right.md) | 317 | `result-track:a6e306e5c1676d49499aeb8de3ec01d3572ec35c892ba93617413251ad409c15` |
| 46 | `theorem` | [compact_open_separated_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/compact-open-separated-mul-left.md) | 341 | `result-track:4e44b6a4757be7b1bd5b24d0442a668b32fbe3419b3a024a2ae94720388201ce` |
| 47 | `theorem` | [compact_covered_by_mul_left_translates](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/compact-covered-by-mul-left-translates.md) | 361 | `result-track:b801aecf296cc94fc97adaa319e572770a0dc9c1b1ce70dc7f83ecc755254bad` |
| 48 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance-source-edition-8.md) | 377 | `declaration-track:f4ceae5f44f0d1fff01e49bb5db99d4acfa747d8c424ade17c9008393cbc582f` |
| 49 | `theorem` | [exists_disjoint_smul_of_isCompact](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/exists-disjoint-smul-of-iscompact.md) | 395 | `result-track:6f941c74be6bb855d629f58ff9cac221a8df1a118f538bad6687c3267c4e9e90` |
| 50 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance-source-edition-2.md) | 411 | `declaration-track:47ee17f71a3c24c81175ac00a66a5c15f628b3efb520396a6f2274ec2f856e94` |
| 51 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/instance-source-edition-4.md) | 415 | `declaration-track:7f195d83810eb4cd7be6289bc1dc155b6c56a25b50f5308a7aa0634af54116df` |
| 52 | `theorem` | [isTopologicalGroup_sInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-sinf.md) | 424 | `result-track:349e14d055c3804158152e625495730c2b0e890b517d7a28d29d79e0cbc6cb3b` |
| 53 | `theorem` | [isTopologicalGroup_iInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-iinf.md) | 437 | `result-track:d14d24f0317a773a429337bc77197780b07b8067c754385e45aa6b3b2eb94cb1` |
| 54 | `theorem` | [isTopologicalGroup_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupBasicPublic.lean/declarations/istopologicalgroup-inf.md) | 446 | `result-track:86961a86d064c208290b87f6fe1b79fa13c3ba0dea7b5069e225efd37077802d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28eea7b7063b6006e5eec009f4d6ff91737c046c7550367d6dab2858aec6466d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant8952ca2bfa3522f39a4611086179675ddc5aea13a5301a61c9cdd5227789f81f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
