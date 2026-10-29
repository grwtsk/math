# Verification target: Continuous Linear Map Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1ab6c17ed7bf07800d06ccf74a89a1055a88e7",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1ab6c17ed7bf07800d06ccf74a89a1055a88e7`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean.json)

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
| 1 | `instance` | [topologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/topologicalspace.md) | 79 | `declaration-track:71fa5c2538ca7cbb88dd192537651849b6694326a194c578e58a640c7f8bab12` |
| 2 | `instance` | [isTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/istopologicaladdgroup.md) | 83 | `declaration-track:fc7e91c6304e29093c2b65c23d35ccdb68de5f0733c50305b4119b0ee4482a2f` |
| 3 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/continuoussmul.md) | 89 | `declaration-track:d1f5ea7db0f0246d1b9094fbe4106f200ae208ebd427546d165c96d39d2dabab` |
| 4 | `instance` | [uniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/uniformspace.md) | 93 | `declaration-track:5e0aa4918717487a94420b835940871f8acaab57e5a76f880cba1f75c7e73e39` |
| 5 | `instance` | [isUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isuniformaddgroup.md) | 96 | `declaration-track:61c17dfa51df6f74e8367807f06fdbd7683acb92b6ce8c703bd99e2f5f2c8dfe` |
| 6 | `instance` | [instContinuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/instcontinuousevalconst.md) | 100 | `declaration-track:162de7c6fdf0eb8726a424405f8d469ff4cfc6eedca0e6e274f6054c5af45757` |
| 7 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/instt2space.md) | 104 | `declaration-track:a219e0eaea991a90419f5cb8bfa05199e198103e564a6cc0e796ac6a9c958fb6` |
| 8 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 108 | `result-track:120704a5a1e7f4759fcfb708552487cc6542cd14731b0ff53170cd40d3096b83` |
| 9 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/hasbasis-nhds-zero.md) | 116 | `result-track:59362bba92692a7dd3b623b30df714e9e9d9fbab56af8852ca9abb0c2747df02` |
| 10 | `theorem` | [isUniformEmbedding_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isuniformembedding-touniformonfun.md) | 122 | `result-track:bb51c32b44b8b1448832cb6d070446ece7630b9b45d8e707cb46b831e71b33b8` |
| 11 | `instance` | [uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/uniformcontinuousconstsmul.md) | 127 | `declaration-track:983e2070a80f5d6be066628f0ad43041dc6ca784077b5f4cf73bf1033d83cbf3` |
| 12 | `instance` | [continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/continuousconstsmul.md) | 133 | `declaration-track:e43f07ed59ef408e395c6f64f1c108f8a0be41d57ae36c2bcf12b4dea3fbf2b6` |
| 13 | `theorem` | [nhds_zero_eq_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/nhds-zero-eq-of-basis.md) | 138 | `result-track:03706098e75a923856e0ea2632d21cb996359ace0745fe374d409ffa9a4b3957` |
| 14 | `theorem` | [nhds_zero_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/nhds-zero-eq.md) | 145 | `result-track:9356dafb29f8f790daf22fee3abf76465c9316163e88afa70eacdefba5e2e17c` |
| 15 | `theorem` | [eventually_nhds_zero_mapsTo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/eventually-nhds-zero-mapsto.md) | 153 | `result-track:501de15121f7972df3ad8f568dd41c995a5ad993f7d8671fca0757bf386f4e22` |
| 16 | `theorem` | [isVonNBounded_image2_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isvonnbounded-image2-apply.md) | 163 | `result-track:0ff967a41015468dffb3eb516d2c0068aa2f9042e0b145130c25c787eef99e98` |
| 17 | `theorem` | [isVonNBounded_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isvonnbounded-iff.md) | 175 | `result-track:d36888c37a3e130d21f7d58e8a87e92771ab7d1deebff441ff87ed6299485514` |
| 18 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/completespace.md) | 183 | `result-track:f4c3e6f6f6b8deac7c454175c9872114ad1d4e109f9efeb25f488ff91b15d7d5` |
| 19 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/instcompletespace.md) | 188 | `declaration-track:f877749fca2220cd733907dd858a8d18435c6b45838375b68939a4babb97a2e8` |
| 20 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isuniforminducing-postcomp.md) | 193 | `result-track:33c21f1c7bd1bf9c7280250aec1a6ec5296e97d7bd40a9f93deabb6cfc15c221` |
| 21 | `theorem` | [isUniformEmbedding_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isuniformembedding-postcomp.md) | 198 | `result-track:6e4255bf5a24f646f31e972687d804886b2b1537df1e8f7a851424150e514643` |
| 22 | `theorem` | [isInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isinducing-postcomp.md) | 205 | `result-track:edf379dd051b36cb97720b994cfb91e7f166735f8987d605227ac5b7680e6352` |
| 23 | `theorem` | [isEmbedding_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isembedding-postcomp.md) | 214 | `result-track:5bff3c1443bfe1f436e3c412fdd2dc167165da67c69296bb4d9ee7e4d94dcafe` |
| 24 | `def` | [precomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/precomp.md) | 225 | `declaration-track:2f4f4c2a2fa79087567e0e28fd7b3fc5dda333891c671d44594c175205d02cd9` |
| 25 | `def` | [postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/postcomp.md) | 237 | `declaration-track:b8c716d1b768b116a346b9af5ae762281ff8071e8d1d3265097301a623c11eb8` |
| 26 | `lemma` | [toUniformConvergenceCLM_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/touniformconvergenceclm-continuous.md) | 243 | `result-track:da540ae78ef93182ec459bb0562e0f6b4cafd8c78088458f28874a84cfddc86e` |
| 27 | `theorem` | [continuous_of_continuous_uncurry](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/continuous-of-continuous-uncurry.md) | 254 | `result-track:2390d553edd60116d1f74487cd201b0f22652af2ed8b24449399e1001571376a` |
| 28 | `def` | [piEquivL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/piequivl.md) | 276 | `declaration-track:ddae36b5c1e769cce9b8d848b2b4681127ddd63ccaf2632cde04769fc7f52a37` |
| 29 | `theorem` | [map_add₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/map-add.md) | 303 | `result-track:84b43f90be814b68c7d1ee7d1644c416d4e30e8947f0c21d710606301bb7a48f` |
| 30 | `theorem` | [map_zero₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/map-zero.md) | 306 | `result-track:b6ab86e6600c938723b8f59f175afd86f8f3c33aafa7b757221107fa59cdefb5` |
| 31 | `theorem` | [map_smulₛₗ₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/map-smul.md) | 309 | `result-track:180ffa220c0a1c97fae080f3a126e2c82f08d97eedabadb97341e73ba0224f05` |
| 32 | `def` | [toLinearMap₁₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tolinearmap.md) | 314 | `declaration-track:fe2a2bde5e72d4490418669adf0f5b9e48adb91379de59eed7b0c7fc1b1d0d39` |
| 33 | `lemma` | [toLinearMap₁₂_apply_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tolinearmap-apply-apply-apply.md) | 319 | `result-track:fce7b3b593baecacde64413d6d613f9959472a34c24adb0fbefc0e754d1d96c5` |
| 34 | `lemma` | [toLinearMap₁₂_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tolinearmap-injective.md) | 322 | `result-track:353666e699a301c54a2c60e1a76bb6c80c83e873f18464002d502c1dc3768afd` |
| 35 | `lemma` | [toLinearMap₁₂_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tolinearmap-inj.md) | 326 | `result-track:6e3ef63818a77d804fa3db288136333f9a51c82de71ec9d32d99ffa2834617df` |
| 36 | `theorem` | [map_smul₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/map-smul-source-edition-2.md) | 341 | `result-track:22dd4018539baeeeb1e4aba99fe1049753634903c2d1dc25c250fed50cb757c2` |
| 37 | `theorem` | [map_sub₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/map-sub.md) | 356 | `result-track:648af64b9928caea9c3b77571967751ee9eccaba69cd47152cd58c8fdfd50efc` |
| 38 | `theorem` | [map_neg₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/map-neg.md) | 359 | `result-track:6547016f2511e858082f827bf3bbe0045e7889a9fc4cf5cd92a7f7269ff664bf` |
| 39 | `def` | [toBilinForm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tobilinform.md) | 368 | `declaration-track:70137d1eda382cf31cd9d2adf51b1069e65d362e9e1d18c1c5d5713f9dc52fae` |
| 40 | `lemma` | [toBilinForm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tobilinform-apply.md) | 370 | `result-track:0645650cb324feafdd932783456f25c95be4751e61bea0e5dce3af7875596689` |
| 41 | `lemma` | [toBilinForm_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tobilinform-injective.md) | 373 | `result-track:1001910764e1c4217b21f986abf8d4602c98d16c95870b2c910c117bb848423f` |
| 42 | `lemma` | [toBilinForm_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tobilinform-inj.md) | 376 | `result-track:52556ac44e15b8d03b6303122fa9cd653837192124bb2e13ab3ef0a2bd818d1c` |
| 43 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isuniformembedding-restrictscalars.md) | 397 | `result-track:a049aa9e5d69fc2ada596cd23823bb8938198ecd13226f66a87d7048945a1e3d` |
| 44 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/uniformcontinuous-restrictscalars.md) | 403 | `result-track:45696a36520e1b0b17a0b1e34b1d70c43c2a2be595691e9b90b8dcb1b14d622c` |
| 45 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/isembedding-restrictscalars.md) | 413 | `result-track:58f4d5289924726ae508ec95e75d0860f8bdec57749c5d264fea6d7a966df2e8` |
| 46 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/continuous-restrictscalars.md) | 420 | `result-track:ed34869f5c0cc476589c6115f05632bfe02ff2d8df64a22cd463671f3a8d8268` |
| 47 | `def` | [restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/restrictscalarsl.md) | 429 | `declaration-track:59972b6b58ae665cba8492d8a8e84817f483d1f2119dc37b7316d2f49dc69d8f` |
| 48 | `theorem` | [coe_restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/coe-restrictscalarsl.md) | 435 | `result-track:0e7eb92536647efa90ce1bf117e6b7d2289bc051e6e35a32abb7490b2078efb4` |
| 49 | `theorem` | [coe_restrict_scalarsL'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/coe-restrict-scalarsl.md) | 440 | `result-track:25a42a3375c4f941e3ee81e20bb7137a4291828571f7ce08f8e109142bfa3bcd` |
| 50 | `def` | [coprodEquivL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/coprodequivl.md) | 458 | `declaration-track:13c8aa2c621f5b5576c6a2ae26910fb075648620b0fb88b3f5eb87033b4500c5` |
| 51 | `def` | [prodL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/prodl.md) | 469 | `declaration-track:f60fc308c498bbec45959c65eea7533c972315499be639a5c0d85be085d2dca3` |
| 52 | `def` | [toSpanSingletonCLE](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/tospansingletoncle.md) | 485 | `declaration-track:6191db1207542fdaca2ea1b8ecae8f69b4b985bf7c25362b0829e60c3bcce364` |
| 53 | `def` | [arrowCongrSL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/arrowcongrsl.md) | 517 | `declaration-track:79b97cd9a7f5279ed3b55e66578bdeab0a2073fcf9d88b65b05bbc8f5aebae99` |
| 54 | `def` | [arrowCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/arrowcongr.md) | 541 | `declaration-track:b94727d3a7e087070ce9ccfeb1d64c004217a37460419017dd7088f75acde0cb` |
| 55 | `lemma` | [arrowCongr_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/arrowcongr-apply.md) | 544 | `result-track:c308d754a234d8a9a2031ef403c6d84c700c5aecdef025384ec95207fd009390` |
| 56 | `lemma` | [arrowCongr_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/arrowcongr-symm.md) | 547 | `result-track:faed4e057c6f97e53c1f2888a42cb515258e751f85acc3eb452332f4067b3343` |
| 57 | `def` | [conjContinuousAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/conjcontinuousalgequiv.md) | 552 | `declaration-track:d7fe327e6f08531af5fcd0727b3fa9af539b65f0dc6bf488a5f76db6c6acb1af` |
| 58 | `theorem` | [conjContinuousAlgEquiv_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/conjcontinuousalgequiv-apply-apply.md) | 557 | `result-track:0007240c94d092964f8b5ae05b4e7a082c391f897e814dec9c2e425984d952d7` |
| 59 | `theorem` | [symm_conjContinuousAlgEquiv_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/symm-conjcontinuousalgequiv-apply-apply.md) | 560 | `result-track:d0aed8c437f25b2837c44c6aad08fcb945d265868b32783da96aeb0fb81dc22c` |
| 60 | `theorem` | [conjContinuousAlgEquiv_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/conjcontinuousalgequiv-apply.md) | 563 | `result-track:bcbe2a072686696a03d8beb9f45c1ed90bfcf699be8377836ee63e884062dd2d` |
| 61 | `theorem` | [symm_conjContinuousAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/symm-conjcontinuousalgequiv.md) | 566 | `result-track:fc34d0512ea03936c667c1ad08f0e188c45c8baf76ed32a8d336fed9cf8a8d87` |
| 62 | `theorem` | [conjContinuousAlgEquiv_refl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/conjcontinuousalgequiv-refl.md) | 569 | `result-track:7d75ad605ca3f5181c91d2111772dd20343a1cb64392d823bf16ac916f55cf90` |
| 63 | `theorem` | [conjContinuousAlgEquiv_trans](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapNamespacedPublic.lean/declarations/conjcontinuousalgequiv-trans.md) | 571 | `result-track:80f7447646da04029ac3103f2d2e89677101a0bb73bc20152eed277949884687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8669358a58ab63494606c1513c13c7e0f1fec861c7990336a39b8dfbd921ecc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
