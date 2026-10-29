# Verification target: My MVA3a Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b06a0570821a48a2e65208640ff2e5af25d4cbf",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/MyMVA3aNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/MyMVA3aNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b06a0570821a48a2e65208640ff2e5af25d4cbf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean.json)

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
| 1 | `lemma` | [le_max_getD](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/le-max-getd.md) | 107 | `result-track:4417537f90b0d25ecac01f2cb9bf66abbefaa8b0b177d4969c2d14a044e13927` |
| 2 | `lemma` | [max_getD_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/max-getd-le.md) | 115 | `result-track:05825483541160d0b286a781a30a213e8bc8aa24218ad0ca2e09600dcea16183` |
| 3 | `structure` | [IPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/ipartition.md) | 127 | `declaration-track:2c0834d8781de4bd8af52763de7448c85bb68b734328b01b1b5f0fdfb40e67a7` |
| 4 | `def` | [IPartition.points](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/ipartition-points.md) | 137 | `declaration-track:f74824e32d6d8d9ffd2d8845064e8856e566a3469ce25426392b7125239cadef` |
| 5 | `def` | [IPartition.mesh](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/ipartition-mesh.md) | 143 | `declaration-track:66c221eb27eb6dfe18979b27b27c09b5e0471b0d48f7702b3ce6e04e173c0969` |
| 6 | `lemma` | [mesh_nonneg](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mesh-nonneg.md) | 149 | `result-track:e677a4f6e16d3da5c0127a45e63d26b7d26b2c5ae9bb779f7c0e10eac4224ddf` |
| 7 | `def` | [uniformPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/uniformpartition.md) | 158 | `declaration-track:bf41e8877f4aaad215a4e1ad16acb2a987dbff985b30301f89aaff32a5385d81` |
| 8 | `lemma` | [mesh_uniformPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mesh-uniformpartition.md) | 178 | `result-track:69d143a81097f4a95d1c67e73a6544c4ef432de294eab99376ede4a1b1e0b4f2` |
| 9 | `def` | [IsRefinement](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/isrefinement.md) | 190 | `declaration-track:ee83d9b2ed1a3ef4769be89fd59997be383dad9a5b249bd54a57f322cadb63a5` |
| 10 | `def` | [fromPoints](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/frompoints.md) | 196 | `declaration-track:9220b6c351c49004e771e7c5bbadf868d6aea9c226210d0b266e5324798a6a83` |
| 11 | `lemma` | [points_fromPoints](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/points-frompoints.md) | 251 | `result-track:a946c9f36505b49f71cf379404e3ef821887c49511986f9ee5d8f7e99a9df352` |
| 12 | `def` | [union](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/union.md) | 320 | `declaration-track:7223d34c5bb8c92e8c3e1cb7ab4ce2ae98ab87b4e23cf7c7e89490bc9ba546ee` |
| 13 | `lemma` | [union_points](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/union-points.md) | 334 | `result-track:35cdb98902ad9803a8471184a234b02ea8fee7449d74bbb8e674c2ff9c4dd79c` |
| 14 | `lemma` | [union_refines_left](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/union-refines-left.md) | 343 | `result-track:8343edc552b16e3b102ecbc0a8244508deb87eb9b43db29707eb1316c0cde491` |
| 15 | `lemma` | [union_refines_right](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/union-refines-right.md) | 349 | `result-track:7c53e0124ca37c5fcc2cb7ae62ca78f2fde2a35ef409af45a28a24a1d9067aed` |
| 16 | `lemma` | [fromPoints_strictMono](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/frompoints-strictmono.md) | 356 | `result-track:12753b0b4e39a86f26e3f8bcf0bf9be192bb16a0926e18c61445e7024d870bc7` |
| 17 | `lemma` | [union_strictMono](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/union-strictmono.md) | 377 | `result-track:11fedc172a131f03726bed3f650bfa689324861f88d3c3da674b44fcfde9a80e` |
| 18 | `lemma` | [index_map_zero](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/index-map-zero.md) | 384 | `result-track:ed7303552557af5eff09940c6926e66018400295450380bc583f6982416945fd` |
| 19 | `lemma` | [refinement_index_map](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/refinement-index-map.md) | 393 | `result-track:572e617b363eeb5b12c1cf7b9b7461123e9b200adcfb58b06bca4454fca0e14a` |
| 20 | `def` | [term](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/term.md) | 420 | `declaration-track:c99e20e774c0a0b20facf5198cd14ae88b0af7326a6e7a1587a42167505df0db` |
| 21 | `lemma` | [sum_telescope_block](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sum-telescope-block.md) | 425 | `result-track:5133b39ac00cf99de84b37e54888d42ea6e96611adce7bedcf753aed3c130757` |
| 22 | `lemma` | [sum_partition_blocks](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sum-partition-blocks.md) | 437 | `result-track:b266562b03cfc283dda1198e5bbeae775b142bfd49ee4f60cce087bd2aa1eca5` |
| 23 | `lemma` | [mesh_ge_diff](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mesh-ge-diff.md) | 466 | `result-track:da1ce626f1abf7fa5f15ea7d94c0bd3bf685fbff1b5be728d27f282e32b132d5` |
| 24 | `lemma` | [index_map_last](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/index-map-last.md) | 475 | `result-track:02f13192ee200c9bd07d8065e6935902a8e15f33d8c0a745b0b32cb9e000a3ef` |
| 25 | `lemma` | [exists_index_between](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/exists-index-between.md) | 484 | `result-track:7824aa5aefe685e4f480fdce9737580a9734687d3be724206548f1f52faa88d1` |
| 26 | `lemma` | [exists_index_between_v2](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/exists-index-between-v2.md) | 497 | `result-track:44421b47fd5efbba906b3b67e9569d5cea3635055d1357c54762807ddbcb4e63` |
| 27 | `lemma` | [mem_subinterval](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mem-subinterval.md) | 506 | `result-track:b17e213195e7242c3aa53bd4eab7a249ab53b7fa1277aac214f3fad829403688` |
| 28 | `lemma` | [no_points_between](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/no-points-between.md) | 528 | `result-track:14e04dd02bcbd0ff6277953069dad7f193974253a320ec8f1b2bfae1c6282a67` |
| 29 | `lemma` | [no_P_point_between](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/no-p-point-between.md) | 542 | `result-track:720856f0ac32652123fd47613d5ec9a6961d3b5ab3da1d271989a15e38c7a8ee` |
| 30 | `lemma` | [refinement_interval_subset](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/refinement-interval-subset.md) | 550 | `result-track:901493fbef6dded2249968185ba4eb554e9e76afc9f9d74283361a2e2a152118` |
| 31 | `lemma` | [step_le_mesh](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/step-le-mesh.md) | 574 | `result-track:53c6e4ac01cb13baed31db6dd02c8cf3bdb60c5af7b641d3080987efc6b43e2e` |
| 32 | `lemma` | [mesh_le_of_refinement](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mesh-le-of-refinement.md) | 593 | `result-track:b605469924e5bb068117d0d0424c897c8ded4f73b339fbbac972fa50a133205e` |
| 33 | `lemma` | [exists_refinement_mesh_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/exists-refinement-mesh-le.md) | 600 | `result-track:288fc1bf62f12497b591465e833ea8adffc0987f48ec631e4dc32083c5220b95` |
| 34 | `lemma` | [sum_telescope_abs_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sum-telescope-abs-le.md) | 629 | `result-track:10ca3feb20b47a92a27ab12e33832e63aed04570decbd7d943a00380b78bef9c` |
| 35 | `def` | [sumAbsDiff](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sumabsdiff.md) | 640 | `declaration-track:b4d88172ed984ee9e9b30ac381c4c6d75fe431942d1b11216cf41b499c4b9138` |
| 36 | `lemma` | [sumAbsDiff_block_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sumabsdiff-block-le.md) | 646 | `result-track:f42bffae5dd4c7fb5dab97d0b9fffce3ec769fc19a7fb4c0aca0874357d0bf68` |
| 37 | `lemma` | [sumAbsDiff_mono_of_refinement](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sumabsdiff-mono-of-refinement.md) | 658 | `result-track:78f1bac274fada00c01aa50bb022774d6d6436ffcf170e3600c16b28d58097ea` |
| 38 | `lemma` | [sumAbsDiff_le_sumAbsDiff_of_refinement](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sumabsdiff-le-sumabsdiff-of-refinement.md) | 685 | `result-track:ecc675aa0734187921ced86c81a342820f1c54231931c9a4f18e27c360dc83b7` |
| 39 | `lemma` | [sum_le_sumAbsDiff_of_points_subset](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sum-le-sumabsdiff-of-points-subset.md) | 694 | `result-track:5b26c8ce806603e5d20f9233503cd380ac4576f2bb0badc376475da79166b569` |
| 40 | `lemma` | [sum_le_K_of_forall_sumAbsDiff_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sum-le-k-of-forall-sumabsdiff-le.md) | 734 | `result-track:ef7e11c04fd0495d5bcffca7c2f0bfc9b52a1c743936ab58cd7ab7d53677f22c` |
| 41 | `lemma` | [variation_le_of_forall_sumAbsDiff_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/variation-le-of-forall-sumabsdiff-le.md) | 752 | `result-track:a06941833ee57e3c0f00ad80b75345a530df4fb5912be3d0002ea73213499d08` |
| 42 | `structure` | [TaggedPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/taggedpartition.md) | 806 | `declaration-track:356179e6bde0b2e4dbc39a11b9797b42df9d0a9be58d274871ed6e1a10bb3a4f` |
| 43 | `def` | [TaggedPartitionFilter](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/taggedpartitionfilter.md) | 813 | `declaration-track:2b0279f9a41628a51fab1bebdcec9d2bc545c35f640186a8264d7d1f7639c817` |
| 44 | `def` | [taggedUniformPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/taggeduniformpartition.md) | 819 | `declaration-track:0758e83b41417f27fc651a59012f58236ee7486221758cd85865f94d600222dd` |
| 45 | `lemma` | [TaggedPartitionFilter_neBot](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/taggedpartitionfilter-nebot.md) | 834 | `result-track:97ecb921e8d90bd936b1361a606ebd3d501683e8c835afa44686014753722020` |
| 46 | `def` | [tagLeft](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/tagleft.md) | 856 | `declaration-track:27e323647f057c31a44a9401069222b83b77fd7dab94ef8385d4e04309e14892` |
| 47 | `def` | [RSSum](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rssum.md) | 865 | `declaration-track:3945d58039905f1fd8d94d69d641e35658a5806f88ead7521577d56b3e0ec541` |
| 48 | `def` | [HasRSIntegral](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/hasrsintegral.md) | 871 | `declaration-track:07c89763110638d3dd008707cb427c32f15165407eb5046ea1293f25bad22fec` |
| 49 | `lemma` | [hasRSIntegral_iff_tendsto](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/hasrsintegral-iff-tendsto.md) | 877 | `result-track:013dac5e662ada7808a95d65d2bc411526b38b40dfed461536e3fcd8ef1ffb98` |
| 50 | `def` | [RSCauchyCondition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rscauchycondition.md) | 895 | `declaration-track:94c036832535c5b62c3133a4dc7d4691f5a3cba19f004b0a2f3f0c47e643e11e` |
| 51 | `lemma` | [cauchy_map_RSSum](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/cauchy-map-rssum.md) | 901 | `result-track:9b61493930aa361ce30003a5aef5e9b18f6b2a1328ad0c5509b762b7d754aded` |
| 52 | `theorem` | [RSCauchy_implies_exists](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rscauchy-implies-exists.md) | 917 | `result-track:592a0bd375076817922d9e2a2e91c64a2196bb86a73521261941d48943b8e410` |
| 53 | `lemma` | [RSSum_P_rewrite](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rssum-p-rewrite.md) | 930 | `result-track:7d0f63df3c57bccc40d155349585892b58ae6e44683603ac98cf1a7ee7dee344` |
| 54 | `def` | [term_f_g](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/term-f-g.md) | 941 | `declaration-track:f54ed41b28e2eac986d11d0d0bba1e7eb9d52e7a9831193852164a77c1df4830` |
| 55 | `lemma` | [RSSum_R_rewrite](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rssum-r-rewrite.md) | 949 | `result-track:b0e2cb5a370309fe5d93581621c64888d37bced87c36a19e3a874a72ab6e83e5` |
| 56 | `lemma` | [sum_abs_diff_le_variation](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sum-abs-diff-le-variation.md) | 984 | `result-track:b84093cd62edee3996c1370469e30658fac4b984806150a74f3859235204b4bc` |
| 57 | `lemma` | [inner_sum_bound](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/inner-sum-bound.md) | 1016 | `result-track:afdc9c65b7e1f0f138d8af184b0d9cc007b8a8c13161d92a5a2b5ceac43ae7f8` |
| 58 | `lemma` | [RSSum_diff_bound](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rssum-diff-bound.md) | 1037 | `result-track:7f8fce0eaeeb78cfcf9cebb33704efa4bb2a59c1e9ae08bfa7bdaedf65e2df97` |
| 59 | `lemma` | [oscillation_bound_of_mesh](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/oscillation-bound-of-mesh.md) | 1083 | `result-track:6cc624ab57274e18b068631d3a35667663202b0d495e4372cafed9ba19e1061c` |
| 60 | `lemma` | [RS_cauchy_of_continuous_bv](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rs-cauchy-of-continuous-bv.md) | 1114 | `result-track:12ec3e73272bfb5ce4ec5b73d0165791c545210e1b68f6a2d8e6a36023dc5be0` |
| 61 | `def` | [swap_x](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/swap-x.md) | 1154 | `declaration-track:c160faa56d4c00b114497716994933b58b2ea7714666d0e648a705f954595280` |
| 62 | `def` | [swap_xi](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/swap-xi.md) | 1157 | `declaration-track:069c75c2c092a192d480d83b91565cead8fbcf0e5ea18f70b2750c93aa327e45` |
| 63 | `def` | [swapTaggedPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/swaptaggedpartition.md) | 1163 | `declaration-track:9a4dc489464e7fd837ac1c390c9778b8f2c5127cd85e3bc23c700e119b13151c` |
| 64 | `lemma` | [RSSum_swap_identity](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/rssum-swap-identity.md) | 1209 | `result-track:8d99cde870ce602aac103216bf1035cf01ed5a8491b68ba9dcf5f604d1e605f4` |
| 65 | `lemma` | [swap_diff_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/swap-diff-le.md) | 1230 | `result-track:b3f46b4489106109ac134c93db579ef7f248d16c0cc024d3d0568fb45081f14d` |
| 66 | `lemma` | [mesh_swap_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mesh-swap-le.md) | 1272 | `result-track:08fc7cdd56e7aceaae9e1f8e733e71b886c0a4a22b3308f6b7243f51693eca8d` |
| 67 | `lemma` | [mvt_tags_for_partition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mvt-tags-for-partition.md) | 1283 | `result-track:baa1292d939f6328e5312dabc68a013fc3d6e2971b286a4f2f69b2176193d2c1` |
| 68 | `lemma` | [sumAbsDiff_eq_RSSum_abs_deriv](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sumabsdiff-eq-rssum-abs-deriv.md) | 1303 | `result-track:1f2dfa029a6adaa0522871758b6ab982d55acf526706aa4083f649af35a20219` |
| 69 | `lemma` | [boundedVariationOn_id](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/boundedvariationon-id.md) | 1317 | `result-track:93b42d557a5969bcd14034b7dd56198406d2a75ad7655457e4fa6a156840f3f8` |
| 70 | `lemma` | [integral_le_variation](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/integral-le-variation.md) | 1336 | `result-track:41a28ffa8bd8a421539c02a69478c8173d8536c015c6d0c38fd269353d4b065d` |
| 71 | `def` | [mvtTaggedPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mvttaggedpartition.md) | 1368 | `declaration-track:0e2ad86684f1ecbf9563ec14978479766d05189b99b8798186e2ebddf3c10fb4` |
| 72 | `lemma` | [mvtTaggedPartition_spec](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mvttaggedpartition-spec.md) | 1372 | `result-track:983293428fd1768fd1a8217303ed36eea5bb2e5941787995aab51072487c90f6` |
| 73 | `lemma` | [mesh_mvtTaggedPartition](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mesh-mvttaggedpartition.md) | 1383 | `result-track:b222a29715cc802be96680ccc3c35edbeec25964da99006153a4d8289bbea3d6` |
| 74 | `lemma` | [sumAbsDiff_le_integral_add_eps](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/sumabsdiff-le-integral-add-eps.md) | 1392 | `result-track:7478e44df418f88cb6709539a02907c3d67fef9e91e7393b3074180736414d1e` |
| 75 | `lemma` | [variation_le_integral_abs_deriv](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/variation-le-integral-abs-deriv.md) | 1421 | `result-track:bf5445573dc2d62aec9a0c3840cf8760d76ae8a2dd0def492cc7131a8d86a280` |
| 76 | `lemma` | [boundedVariationOn_of_forall_sumAbsDiff_le](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/boundedvariationon-of-forall-sumabsdiff-le.md) | 1433 | `result-track:d94c94a691fe17decf7d46fcf5806fa976ef59cbee8dc26c14303cba5f7e1915` |
| 77 | `lemma` | [boundedVariationOn_of_hasRSIntegral_abs_deriv](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/boundedvariationon-of-hasrsintegral-abs-deriv.md) | 1450 | `result-track:e98fecd75bfafa179f407a343c2288442f91cb0a147d1680a3d8ada77eeb6562` |
| 78 | `theorem` | [Theorem_A1](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/theorem-a1.md) | 1468 | `result-track:4248bc9103870911f85c5b7eeb58a88e51ec39622992a9605cbdbac64e0bd30a` |
| 79 | `theorem` | [Theorem_A2](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/theorem-a2.md) | 1481 | `result-track:8f462c423c281c73ec032559acac718f98511f4961713424e63c36f71ab5446a` |
| 80 | `lemma` | [exists_integral_abs_deriv](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/exists-integral-abs-deriv.md) | 1500 | `result-track:0ee3cb286a842b05e9332f6bf9681c198fae00e3ed57c1efec38ccf54d1a3f33` |
| 81 | `theorem` | [MV_Theorem_A3a](../../../../RealFunctions/MyMVA3aNamespaced.lean/declarations/mv-theorem-a3a.md) | 1512 | `result-track:ad5c039666b7642f27bad11ff7323119094587387d9e1b381df401079b1fbc2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c40ea0b9775defbfe50b0594615489bdc15a21c38fb6c2ec2deece87c515068e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
