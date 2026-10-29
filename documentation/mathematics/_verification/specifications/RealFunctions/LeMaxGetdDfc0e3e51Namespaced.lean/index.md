# Verification target: Le Max Getd Dfc0e3e51 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/index.md) · [Full source](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 67; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 70; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_max_getD](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/le-max-getd.md) | 107 | `result-track:70db83a293c38c625e743d5a1a7bd499fb91682193e14989b6c41ad6def1f78b` |
| 2 | `lemma` | [max_getD_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/max-getd-le.md) | 115 | `result-track:47d71d31c88f19174ea31eed1bdbf1778137b72f845483cb718eba52a003f52f` |
| 3 | `structure` | [IPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/ipartition.md) | 127 | `declaration-track:724f1fec5185c0c1280fbaf35da8f16a0970288508b1e655a1830a39ce6ceeb8` |
| 4 | `def` | [IPartition.points](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/ipartition-points.md) | 137 | `declaration-track:58fa9b044fe816350928a2c5562b72fb77fed51abf79dff673f7ee99d4d67e45` |
| 5 | `def` | [IPartition.mesh](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/ipartition-mesh.md) | 143 | `declaration-track:57ddf07c69754dbfff3a70dea04f2137e05549d99785166d649cd11fb6b25bad` |
| 6 | `lemma` | [mesh_nonneg](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mesh-nonneg.md) | 149 | `result-track:9e2e27c9e80b29e5541d244319241edc532c6c69bbb24d72ee7b88007158af3b` |
| 7 | `def` | [uniformPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/uniformpartition.md) | 158 | `declaration-track:5b6a2abd1b07f769452cd61da8095eaad73d06ee5cfa8f8bf8add6a1cfb97be3` |
| 8 | `lemma` | [mesh_uniformPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mesh-uniformpartition.md) | 178 | `result-track:a5f32b3e84b8c9f5b044d94fdb5049c53f74fb63af3c6f5dfbaa81370df99d97` |
| 9 | `def` | [IsRefinement](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/isrefinement.md) | 190 | `declaration-track:38305328dc167910bd5438200d8c953b794ddaa7d9e72899cb6672df490e29fe` |
| 10 | `def` | [fromPoints](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/frompoints.md) | 196 | `declaration-track:bf71f4412be577c6cf1e969e4eee504f48581b5b0a4477067a8d6d253e31e7a8` |
| 11 | `lemma` | [points_fromPoints](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/points-frompoints.md) | 251 | `result-track:f9ade84fa498b93a6a6e1502964ee008d46aecbe05732bf3ec8298850dce4338` |
| 12 | `def` | [union](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/union.md) | 320 | `declaration-track:5c6bcffd3a81b444676a348c4192f058e2bbdad4ad346e39a4612ab867ea707f` |
| 13 | `lemma` | [union_points](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/union-points.md) | 334 | `result-track:38c300cda7094f3a6136555a820cdd173192acdae5d0398b4f66c5272fc4b048` |
| 14 | `lemma` | [union_refines_left](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/union-refines-left.md) | 343 | `result-track:244ee25a2d321c67458a82a39435f1a790a8be13c91b8b1a57e8617be405060a` |
| 15 | `lemma` | [union_refines_right](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/union-refines-right.md) | 349 | `result-track:311b31672377f4dc1003cba5c3b2840c8b123eca6d782e6a18f5b39e15820f15` |
| 16 | `lemma` | [fromPoints_strictMono](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/frompoints-strictmono.md) | 356 | `result-track:31d3fbd49a9cd1d368265fe8c1a20a105a47d68c8ecf251d18b1cedff61e9cf3` |
| 17 | `lemma` | [union_strictMono](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/union-strictmono.md) | 377 | `result-track:62724a83b558b7b5aee6c5e0807b8f0a292da38208c1752506e226fa0d258fdc` |
| 18 | `lemma` | [index_map_zero](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/index-map-zero.md) | 384 | `result-track:7639e33e56a978df96216c13bc9ed0321d884525bf9951a51a31cb121b77cda7` |
| 19 | `lemma` | [refinement_index_map](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/refinement-index-map.md) | 393 | `result-track:aa74c8329b3bb1968aaabcef4fadcb557d06f6de1d789271b70e49aecbd5dc4b` |
| 20 | `def` | [term](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/term.md) | 420 | `declaration-track:4e9da3546bed70ebae99cf565c27d956d031c6487472548773d178d769f6b71d` |
| 21 | `lemma` | [sum_telescope_block](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sum-telescope-block.md) | 425 | `result-track:f0139bd4139e998dde1af95cec53682dcc6fa3a614f9f55477dfd13296ccfed3` |
| 22 | `lemma` | [sum_partition_blocks](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sum-partition-blocks.md) | 437 | `result-track:519085c261bca9879c9c656926becac365da92014cf1565669627716025482ac` |
| 23 | `lemma` | [mesh_ge_diff](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mesh-ge-diff.md) | 466 | `result-track:25c9ebfa44e2e4905736a088e5b8acf6e4b302c7b086c4ae67868842a9faf51b` |
| 24 | `lemma` | [index_map_last](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/index-map-last.md) | 475 | `result-track:ad7d70c21c0af66f3eb9b2b35ad91869f54afe8f3470ead6d2c00de76ee3c3b4` |
| 25 | `lemma` | [exists_index_between](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/exists-index-between.md) | 484 | `result-track:bbf351f866bdb2d476a26f6643f6b98e02e8f2984ab26b80c9f9ecceed678f7c` |
| 26 | `lemma` | [exists_index_between_v2](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/exists-index-between-v2.md) | 497 | `result-track:5203839f946277acef89e9c6f7cbef6c574c01df940a6e8cc35062c3e9908672` |
| 27 | `lemma` | [mem_subinterval](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mem-subinterval.md) | 506 | `result-track:d3ef334fcd2868bb09f2f4ad188a6d9c6987c0ec3441ac567fd6648f549d8570` |
| 28 | `lemma` | [no_points_between](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/no-points-between.md) | 528 | `result-track:253c55737015526677ea70db432e7ffceeec8f5009f596b26ee5253ce2960336` |
| 29 | `lemma` | [no_P_point_between](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/no-p-point-between.md) | 542 | `result-track:816a8d20877c0de806fa9c2dc1c739f2e8821950d274b844e4e71730e4f440bb` |
| 30 | `lemma` | [refinement_interval_subset](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/refinement-interval-subset.md) | 550 | `result-track:96d7ec79f12887bbdd4e79ecea8d15fb94d90cb0cf21e486d73426ddd0b6cc34` |
| 31 | `lemma` | [step_le_mesh](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/step-le-mesh.md) | 574 | `result-track:524ed9ea0a470731c9e32790dbba305ad349eca9de698f639f2faba7cb963989` |
| 32 | `lemma` | [mesh_le_of_refinement](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mesh-le-of-refinement.md) | 593 | `result-track:4f685ff21087477d1547bc992d22f7ebae83cafa23074022be7d3d926037b069` |
| 33 | `lemma` | [exists_refinement_mesh_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/exists-refinement-mesh-le.md) | 600 | `result-track:cbc2478a594a5f848c22471fe70d983b032c20e4b8340ebf1908134d2098307c` |
| 34 | `lemma` | [sum_telescope_abs_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sum-telescope-abs-le.md) | 629 | `result-track:150f2a3239198ef6d4b6a3510d8aeb69312ba0bc6eb904180003c619e92c59f5` |
| 35 | `def` | [sumAbsDiff](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sumabsdiff.md) | 640 | `declaration-track:e3f3254d5d8a27bdc160cab827f8eb664044b724fa65a665ffe90dd2a071807b` |
| 36 | `lemma` | [sumAbsDiff_block_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sumabsdiff-block-le.md) | 646 | `result-track:b3e2ade243a1f20eaaebd14e60572c13ddefa8410947d1eede3192339e41f7ec` |
| 37 | `lemma` | [sumAbsDiff_mono_of_refinement](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sumabsdiff-mono-of-refinement.md) | 658 | `result-track:d3693aafcba7c1a847d829fb099f265a4128089f3db25020fb5a5771a1234443` |
| 38 | `lemma` | [sumAbsDiff_le_sumAbsDiff_of_refinement](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sumabsdiff-le-sumabsdiff-of-refinement.md) | 685 | `result-track:b8932c90c7c472cf9033f9513093cd43435171f180e63853ced5086af87501fd` |
| 39 | `lemma` | [sum_le_sumAbsDiff_of_points_subset](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sum-le-sumabsdiff-of-points-subset.md) | 694 | `result-track:40715810aa008c50e44ebcfcc3101bb4cbb0caf202ea963a407c02807a848c92` |
| 40 | `lemma` | [sum_le_K_of_forall_sumAbsDiff_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sum-le-k-of-forall-sumabsdiff-le.md) | 734 | `result-track:49bfb93a656933fc9b300e195cc96ae8be9dcc6e07c6335d9e17a5a38d63941e` |
| 41 | `lemma` | [variation_le_of_forall_sumAbsDiff_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/variation-le-of-forall-sumabsdiff-le.md) | 752 | `result-track:46442c4350c17b8972d38806c2af75360a08bee4e1f48b61641a42ba23c2cefe` |
| 42 | `structure` | [TaggedPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/taggedpartition.md) | 806 | `declaration-track:22a6297ddee2c207f86f5ce411bae3c95d1f33c0b2752efe18700c69627a3218` |
| 43 | `def` | [TaggedPartitionFilter](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/taggedpartitionfilter.md) | 813 | `declaration-track:47330de0fc795bdaf5da61263b44a447966d7696fef5e506248e991db8227262` |
| 44 | `def` | [taggedUniformPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/taggeduniformpartition.md) | 819 | `declaration-track:06dd0bb35839c191bf73df7fd454ea0d82b57f719d7378ba07181045de1eabbd` |
| 45 | `lemma` | [TaggedPartitionFilter_neBot](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/taggedpartitionfilter-nebot.md) | 834 | `result-track:a2f695a666a1bf4c768893d08626e1e2a65afa494da5676465ea8558299a356a` |
| 46 | `def` | [tagLeft](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/tagleft.md) | 856 | `declaration-track:1a16b1191e198e0f77fed9f36770093899510e7eb7bb90bc57c7297a2be9ef3e` |
| 47 | `def` | [RSSum](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rssum.md) | 865 | `declaration-track:56c9e3987e3125c16d60bd3b2602101478325d065dc015c123ab070601259d52` |
| 48 | `def` | [HasRSIntegral](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/hasrsintegral.md) | 871 | `declaration-track:a6673f175f387e03b526beb1c625a312076cbff7972e159649304d6f96d691a1` |
| 49 | `lemma` | [hasRSIntegral_iff_tendsto](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/hasrsintegral-iff-tendsto.md) | 877 | `result-track:3b36d4cf314e32254648a77b72bc16d0473c7a066b860e92fe37a7d799dcdbac` |
| 50 | `def` | [RSCauchyCondition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rscauchycondition.md) | 895 | `declaration-track:c344d72d1ffeb87aa001ff0609b01b2ee9a85d021f3053e1321aaa89a54eb644` |
| 51 | `lemma` | [cauchy_map_RSSum](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/cauchy-map-rssum.md) | 901 | `result-track:3af6d29a7404e6972ca7831dab513d8966d0848b4b74907b4098db3f3943a2a8` |
| 52 | `theorem` | [RSCauchy_implies_exists](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rscauchy-implies-exists.md) | 917 | `result-track:3b5e3ff721d7719967474acc5dc7cdca8de1b0b88f73bc40ed722db1e2587df2` |
| 53 | `lemma` | [RSSum_P_rewrite](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rssum-p-rewrite.md) | 930 | `result-track:e1296a1957543cc4721c55a7e6b0348c3943109307cc1a2ab747fe9163a196a9` |
| 54 | `def` | [term_f_g](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/term-f-g.md) | 941 | `declaration-track:17729be8fe18791c43512fb5526d77e6155ed780bbf0679649033a48c8e19c63` |
| 55 | `lemma` | [RSSum_R_rewrite](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rssum-r-rewrite.md) | 949 | `result-track:4db575e1698951fb7eb817abdd57e78494842eb946a171829b01154aeb1eac64` |
| 56 | `lemma` | [sum_abs_diff_le_variation](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sum-abs-diff-le-variation.md) | 984 | `result-track:e902ed5bb43bb3c12a1fccd3d7386eff207824c82030b62fe4b6dbb99d339480` |
| 57 | `lemma` | [inner_sum_bound](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/inner-sum-bound.md) | 1016 | `result-track:cf2dc53cd14599c61f0b495b533c7837f4c68731a251a9073dec645e96a24a83` |
| 58 | `lemma` | [RSSum_diff_bound](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rssum-diff-bound.md) | 1037 | `result-track:73b0f48ba1ecd061d5dff82f45be054dedb970af1d2b114355a1ec1047c7c1d7` |
| 59 | `lemma` | [oscillation_bound_of_mesh](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/oscillation-bound-of-mesh.md) | 1083 | `result-track:db01db0d413475929c28f8979cc751e2e64c69c7ef7cb392783606cf23d5ca16` |
| 60 | `lemma` | [RS_cauchy_of_continuous_bv](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rs-cauchy-of-continuous-bv.md) | 1114 | `result-track:b357f7cd3f098ae7d970f5c0c2e3ec7b1ef0e75c301bc2c939078d7ad342bc18` |
| 61 | `def` | [swap_x](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/swap-x.md) | 1154 | `declaration-track:6caa3f8daa7caf4a0a657c058740aa0b8bf6c29d2445c5f012f085ede6210286` |
| 62 | `def` | [swap_xi](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/swap-xi.md) | 1157 | `declaration-track:c1be75a3f837140356113f39221e06a5b593ab043eee61b7b30bb646bc0ee8d3` |
| 63 | `def` | [swapTaggedPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/swaptaggedpartition.md) | 1163 | `declaration-track:84d9b79c88ae067d079ed20a16b9e5c23ac325cddd5ae73227bb6c664ee95ad8` |
| 64 | `lemma` | [RSSum_swap_identity](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/rssum-swap-identity.md) | 1209 | `result-track:84352477e938ce42d293408c3240a65127066b30c939df00150434944014a53d` |
| 65 | `lemma` | [swap_diff_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/swap-diff-le.md) | 1230 | `result-track:261815d5fd76b3eb627568c449a5a501f1868e7064fa7570a0958cebb06d7033` |
| 66 | `lemma` | [mesh_swap_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mesh-swap-le.md) | 1272 | `result-track:83432b9b82f2116eda79d64cead2737c1987d1333c9633504b9f2d98748994be` |
| 67 | `lemma` | [mvt_tags_for_partition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mvt-tags-for-partition.md) | 1283 | `result-track:7fea88821c05a6d06d47debb9a15e20c70a6f9fef9c365b4dfc72b7aab2a8f0e` |
| 68 | `lemma` | [sumAbsDiff_eq_RSSum_abs_deriv](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sumabsdiff-eq-rssum-abs-deriv.md) | 1303 | `result-track:148af42589c02c11fd5f523ff57121965517d83039479e2e091991d9d8af7399` |
| 69 | `lemma` | [boundedVariationOn_id](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/boundedvariationon-id.md) | 1317 | `result-track:0152ff7f475567924fd671184362a175f1e6b7f5eb960e7e44b87d8de8b0e56e` |
| 70 | `lemma` | [integral_le_variation](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/integral-le-variation.md) | 1336 | `result-track:a32261f899190119cb30b64c7872ff90d1c7503e7bc03632cbe68300b8cb39c0` |
| 71 | `def` | [mvtTaggedPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mvttaggedpartition.md) | 1368 | `declaration-track:ba37c1549e5b8f5e4e7dab03dc99eb1e7e30b63860ba9c3fdced09b3cabae896` |
| 72 | `lemma` | [mvtTaggedPartition_spec](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mvttaggedpartition-spec.md) | 1372 | `result-track:b5e4fb5e91330b2e8df25961290851eab1327a816627b0d4ac496df754c705eb` |
| 73 | `lemma` | [mesh_mvtTaggedPartition](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mesh-mvttaggedpartition.md) | 1383 | `result-track:cdc311cfe24e5ca6e3b4fb20b38d5587465236d86b1f883c20415e0d0be6299f` |
| 74 | `lemma` | [sumAbsDiff_le_integral_add_eps](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/sumabsdiff-le-integral-add-eps.md) | 1392 | `result-track:fc7278b5e0d3553b2a38b93b5f6bea4bf059ddf88f64457f37d18d6460b001f5` |
| 75 | `lemma` | [variation_le_integral_abs_deriv](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/variation-le-integral-abs-deriv.md) | 1421 | `result-track:7546b9feb462b6384e7270780411a7152d0da5f532cf6aaf2334036e086b1a36` |
| 76 | `lemma` | [boundedVariationOn_of_forall_sumAbsDiff_le](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/boundedvariationon-of-forall-sumabsdiff-le.md) | 1433 | `result-track:0245248d73d1475c13879f075af40d11dfe85e07ff6cf62df4bfd366b10af702` |
| 77 | `lemma` | [boundedVariationOn_of_hasRSIntegral_abs_deriv](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/boundedvariationon-of-hasrsintegral-abs-deriv.md) | 1450 | `result-track:29683eb3ae07f56ae7e811676c3be51ec7a038e5f5a041dec977922d4e3a64b5` |
| 78 | `theorem` | [Theorem_A1](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/theorem-a1.md) | 1468 | `result-track:e9f8d3007c2d79d6af6279f259b87164d2a03fab07a6cca0de571d9dd4a99afd` |
| 79 | `theorem` | [Theorem_A2](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/theorem-a2.md) | 1481 | `result-track:0f3fb32c3b6d802f8f7d7a5a7ba0d5d128ee5f12b5338f340e1db627aa906137` |
| 80 | `lemma` | [exists_integral_abs_deriv](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/exists-integral-abs-deriv.md) | 1500 | `result-track:b9c0556cdf914825f1c12e567530d7d161f33bbb8d944d1c75273d8929c7daaa` |
| 81 | `theorem` | [MV_Theorem_A3a](../../../../RealFunctions/LeMaxGetdDfc0e3e51Namespaced.lean/declarations/mv-theorem-a3a.md) | 1512 | `result-track:c75c3c805bbec5e34e0b720f350bfbfc8101bfaef45d03969577f4e272c129d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b1c08c0579ba2c246183cee1c313cb432d891356b8431646917b389d46e38e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
