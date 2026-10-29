# Verification target: Bounded Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8b44879c772a201808447253625cf36f8799167",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BoundedNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/BoundedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8b44879c772a201808447253625cf36f8799167`.

Source path: `GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [totallyBounded_Icc](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/totallybounded-icc.md) | 59 | `result-track:dbf93d1250725cb591c3fe6716387d2afaa0390b1f322578737cfa5928401b64` |
| 2 | `lemma` | [totallyBounded_Ico](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/totallybounded-ico.md) | 62 | `result-track:559f69f92b93623f59dcdca9fa6fc70cac1c92c9f0ae169af7483af9d02e6252` |
| 3 | `lemma` | [totallyBounded_Ioc](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/totallybounded-ioc.md) | 65 | `result-track:afa03b014466b35b0b55259a0a3e7649d9d91641ab1d98aaa7b44348634500a0` |
| 4 | `lemma` | [totallyBounded_Ioo](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/totallybounded-ioo.md) | 68 | `result-track:bd16c2011ca719125067a8febf4688f3e3e744043e988468ddcd04ed6e7e03e0` |
| 5 | `theorem` | [isBounded_closedBall](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-closedball.md) | 81 | `result-track:6332a5c2288e7d7409e585404abe0564b1381a1512fbb0940ffec029d36eed1d` |
| 6 | `theorem` | [isBounded_ball](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-ball.md) | 87 | `result-track:97b72fb7e0c1545ee7f1b5116aa1b84ac2a0b5e3f5cd44ec969b9831197368c8` |
| 7 | `theorem` | [eq_countable_union_of_isBounded_of_isOpen](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/eq-countable-union-of-isbounded-of-isopen.md) | 91 | `result-track:2fcec075a7d6cbc49b53abc6f321da2961747f63dd5f8c1547452949b5d6f652` |
| 8 | `theorem` | [isBounded_sphere](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-sphere.md) | 101 | `result-track:6da574d40fbaae7505a3c3242732743347e79caa9acd3ee03d2afafe5120c782` |
| 9 | `theorem` | [isBounded_iff_subset_closedBall](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-iff-subset-closedball.md) | 105 | `result-track:3c39b9c782f098e466785afc04a0421a3332b82ba85011eec95a15222f29ab8b` |
| 10 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/subset-closedball.md) | 109 | `result-track:e51e7c224f311ea90358b3d03721022e1aca34dee9f1c31f8034e5768da2ed49` |
| 11 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/subset-ball-lt.md) | 113 | `result-track:280ea9bef8766d6972fcb12817016b49d08393a02ff90e8a9027ec134b4775c7` |
| 12 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/subset-ball.md) | 119 | `result-track:86c68978d11d4e0ae7e06227d855acef6d97a0a6aebe4184cd3a03626e6b681f` |
| 13 | `theorem` | [isBounded_iff_subset_ball](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-iff-subset-ball.md) | 122 | `result-track:3d2d499e047989932006eef93bc95be281e85fc5fe988cbb5c5467f20c4e0263` |
| 14 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/subset-closedball-lt.md) | 125 | `result-track:5bd8161b89fef016d48b5bebfdf0d22dd1e5b3dec5d9cc501f7f8de18ad52cd4` |
| 15 | `theorem` | [isBounded_closure_of_isBounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-closure-of-isbounded.md) | 130 | `result-track:7835ff5c2451eea88c8af9efe9b406c2687e611fe858902f224e282b64812946` |
| 16 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/closure.md) | 135 | `result-track:6e733948958fcae2e2d15c8e232e860beacb837bafa2bbd5980f456c962312f9` |
| 17 | `theorem` | [isBounded_closure_iff](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-closure-iff.md) | 139 | `result-track:528835eed5d4db862a54cb5c54593d24af143bd5565da293add682951f7c1828` |
| 18 | `theorem` | [hasBasis_nhds_isOpen_isBounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/hasbasis-nhds-isopen-isbounded.md) | 142 | `result-track:6f209ce64995cafe6ab9295d3b828ad7ab1d47443d0323af49c5363f0014e3ce` |
| 19 | `theorem` | [hasBasis_cobounded_compl_closedBall](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/hasbasis-cobounded-compl-closedball.md) | 150 | `result-track:2931c3fb03c1862f8a7e48c0f8232b6c67e66d14f6a69bd79c3e3bbc31c61a70` |
| 20 | `theorem` | [hasAntitoneBasis_cobounded_compl_closedBall](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/hasantitonebasis-cobounded-compl-closedball.md) | 154 | `result-track:e4b8ea73f7ca45e543dc66f1e2cc4814b1c59feaf01c224bfb7234c69b4538cb` |
| 21 | `theorem` | [hasBasis_cobounded_compl_ball](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/hasbasis-cobounded-compl-ball.md) | 158 | `result-track:1d9f73817026a24913b1033f649c40873bc73cc8f81bd0a93c686e756983ca08` |
| 22 | `theorem` | [hasAntitoneBasis_cobounded_compl_ball](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/hasantitonebasis-cobounded-compl-ball.md) | 162 | `result-track:ba6e38d572ff00da91b0406037861d03e7e82ebf160c40e5c0ecdfd272edfd60` |
| 23 | `theorem` | [comap_dist_right_atTop](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/comap-dist-right-attop.md) | 167 | `result-track:9dff6f6b0f389b559bb8a834dceb5db88b81701553ea57c6b59f53fbe8e889ad` |
| 24 | `theorem` | [comap_dist_left_atTop](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/comap-dist-left-attop.md) | 172 | `result-track:c62c39a97fc15f14a21f12a7c6b5f77ea34e9dbec7ecce77897df4817506147c` |
| 25 | `theorem` | [tendsto_dist_right_atTop_iff](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/tendsto-dist-right-attop-iff.md) | 176 | `result-track:6e23d108c5d803b3c6cdb8d35768d777305966fb543eca11c5a1db31fbc34a7a` |
| 26 | `theorem` | [tendsto_dist_left_atTop_iff](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/tendsto-dist-left-attop-iff.md) | 181 | `result-track:098a78ea9d5c52eba3588bc32e2a11952f2a6490b9d079d5438377afd35e0b05` |
| 27 | `theorem` | [tendsto_dist_right_cobounded_atTop](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/tendsto-dist-right-cobounded-attop.md) | 185 | `result-track:3513c97a2de88bba5ffee58eab710bad22969617f1f4c065c5eaa36e5b992ab6` |
| 28 | `theorem` | [tendsto_dist_left_cobounded_atTop](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/tendsto-dist-left-cobounded-attop.md) | 188 | `result-track:af524fd5490e72f29d53ba1819df6d42287b7b72a16345064ea4d7f3c6c04dc3` |
| 29 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded.md) | 192 | `result-track:cf9a17089332de77b27a974836a1adf5861a1eae238b4e555472462208235c4c` |
| 30 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-source-line-200-occurrence-2.md) | 200 | `result-track:de21ccdaff41ba5d8df9927d524fc9f921357a74d183c7ee2b42fa73f6c64fe4` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/instance.md) | 204 | `declaration-track:fc5bb879cafdf095cccfa2dbd284d54084fe9c230e61eea5c369a558cfef0428` |
| 32 | `theorem` | [cobounded_le_cocompact](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/cobounded-le-cocompact.md) | 206 | `result-track:f3439eca56a83487c7f0704513b61d0b4c96a476de9929edb6ddcaaebf1ddac0` |
| 33 | `theorem` | [isCobounded_iff_closedBall_compl_subset](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/iscobounded-iff-closedball-compl-subset.md) | 209 | `result-track:98a5cdbd9622994c5ff191daed8a4c3c43ba745e92f2ae245a41ab9623b9da5d` |
| 34 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/closedball-compl-subset.md) | 216 | `result-track:f3aebf8367082037109e85818e4accfacd99b57e62a8b07112e503d86145ccd8` |
| 35 | `theorem` | [closedBall_compl_subset_of_mem_cocompact](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/closedball-compl-subset-of-mem-cocompact.md) | 220 | `result-track:927dbf747de511f2c9eeb097db4fbaefaded473fae77f2ce49b0644d480dfa42` |
| 36 | `theorem` | [mem_cocompact_of_closedBall_compl_subset](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/mem-cocompact-of-closedball-compl-subset.md) | 224 | `result-track:75d423690a7cf56ab402e73eb1771136bb87ba25eadf02f2a4e2b74e76808b4e` |
| 37 | `theorem` | [mem_cocompact_iff_closedBall_compl_subset](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/mem-cocompact-iff-closedball-compl-subset.md) | 230 | `result-track:88fa2ab4481a95c03272a62881e11827ea72183bf1c5fbdd6712605d1f9b6d28` |
| 38 | `theorem` | [isBounded_range_iff](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-range-iff.md) | 235 | `result-track:f1372a601ab9060d314d3d17f05348ba8bc4217d6581fd92cfca889b6314a418` |
| 39 | `theorem` | [isBounded_image_iff](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-image-iff.md) | 238 | `result-track:90c76a10443f378f217c65f29b2329e2b77aa3d29b1ba966298137cba4da8dc1` |
| 40 | `theorem` | [isBounded_range_of_tendsto_cofinite_uniformity](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-range-of-tendsto-cofinite-uniformity.md) | 242 | `result-track:a5904b7b4404a4ecc9b00a573dbfacd2e355f6af6574a8540f73ab59310b623d` |
| 41 | `theorem` | [isBounded_range_of_cauchy_map_cofinite](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-range-of-cauchy-map-cofinite.md) | 250 | `result-track:d391e0473862087668b57b4e6ee41dadfa752f19c9cb544af40271dc063ba45c` |
| 42 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-range.md) | 254 | `result-track:987b073dae2561744526c563aee37b1209c96950cf7845095f7998c60c668d02` |
| 43 | `theorem` | [isBounded_range_of_tendsto_cofinite](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-range-of-tendsto-cofinite.md) | 257 | `result-track:3cd449fb0a4301b7292097347703a5a428727ef1f074b59f4399b0dd6844411d` |
| 44 | `theorem` | [isBounded_of_compactSpace](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-of-compactspace.md) | 263 | `result-track:a6abc3cc7ec3c10c139bb3ea458a76472dfdb2c588469e06c9822d3b947a0a6b` |
| 45 | `theorem` | [isBounded_range_of_tendsto](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-range-of-tendsto.md) | 266 | `result-track:f8076e6607650c75ec17bc223cbc5cda22b6653824e9fe885836e4acb4d411d1` |
| 46 | `theorem` | [disjoint_nhds_cobounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/disjoint-nhds-cobounded.md) | 270 | `result-track:a3538bf65d30309c9a261a5e0913ef23b0a7004ff1d2a2db11fe2aab82f42de6` |
| 47 | `theorem` | [disjoint_cobounded_nhds](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/disjoint-cobounded-nhds.md) | 273 | `result-track:d637d9566f81bc44c303181d44c0a4a879a57d092f6df7b4cf513c2558886f44` |
| 48 | `theorem` | [disjoint_nhdsSet_cobounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/disjoint-nhdsset-cobounded.md) | 276 | `result-track:eab014ee67ff4ac4c860efb8cf6b528886e31a8619da127ab4326a00181e6ef2` |
| 49 | `theorem` | [disjoint_cobounded_nhdsSet](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/disjoint-cobounded-nhdsset.md) | 279 | `result-track:73136f8f7fd4350875b8d705cb80d2432070bb46a6e439f7aa23e310f6be243a` |
| 50 | `theorem` | [exists_isBounded_image_of_tendsto](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/exists-isbounded-image-of-tendsto.md) | 282 | `result-track:852666dceefed158e149e351082c60a41b9905d62ee120ffc2c707cd0a76496d` |
| 51 | `theorem` | [exists_isOpen_isBounded_image_inter_of_isCompact_of_forall_continuousWithinAt](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/exists-isopen-isbounded-image-inter-of-iscompact-of-forall-continuouswit.md) | 289 | `result-track:712fa39535959e8295865ad399b30c4727210b84b83bcbc2d7701262405797cc` |
| 52 | `theorem` | [exists_isOpen_isBounded_image_of_isCompact_of_forall_continuousAt](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/exists-isopen-isbounded-image-of-iscompact-of-forall-continuousat.md) | 304 | `result-track:ba773b2d4841275aa7c7e04e79365af3ffa2cb753ed5fa0e0b327664f79f4896` |
| 53 | `theorem` | [exists_isOpen_isBounded_image_inter_of_isCompact_of_continuousOn](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/exists-isopen-isbounded-image-inter-of-iscompact-of-continuouson.md) | 313 | `result-track:5b9f7a8bf7cbb1f2eba6a275c7f3aa81257bf5cdf10bc68b4fa4f5fada4211d4` |
| 54 | `theorem` | [exists_isOpen_isBounded_image_of_isCompact_of_continuousOn](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/exists-isopen-isbounded-image-of-iscompact-of-continuouson.md) | 321 | `result-track:718f608e53c21f50bd70e5bfd1e5ae04039e6d1757087c2fac169bec9c1c2ecc` |
| 55 | `theorem` | [isCompact_of_isClosed_isBounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/iscompact-of-isclosed-isbounded.md) | 328 | `result-track:d0b1e51795a241669cc8127094fb874be8d9045e275cad8eef83b701313543ca` |
| 56 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/iscompact-closure.md) | 336 | `result-track:d98fe5c81e5a01517b415e3c94692d7d175ac582a069314238245c69e5e8d59b` |
| 57 | `theorem` | [isCompact_iff_isClosed_bounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/iscompact-iff-isclosed-bounded.md) | 343 | `result-track:c66e51ce7e23d46d7ae3feaf336d171bd9ed6def80fcab77bf2c6462df133e7d` |
| 58 | `theorem` | [compactSpace_iff_isBounded_univ](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/compactspace-iff-isbounded-univ.md) | 347 | `result-track:ac90fe3a377d38b6a2c8d170a75269ec0dfefdfb00fe855962e2f4799983a468` |
| 59 | `theorem` | [isBounded_Icc](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-icc.md) | 355 | `result-track:421ac9b06200461d56be48cbb7e00c25bcc7f9b384be2fe7c56be9fd19c39340` |
| 60 | `theorem` | [isBounded_Ico](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-ico.md) | 358 | `result-track:9de0b26ebadaa737d07ddf3f6bc2e5dbf5a1c03a8252172c87d6e6ecf615d9b7` |
| 61 | `theorem` | [isBounded_Ioc](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-ioc.md) | 361 | `result-track:778d1cc7b69a9ed6dc07115d47aab922491c560e50b146982bda29ea2f18e041` |
| 62 | `theorem` | [isBounded_Ioo](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-ioo.md) | 364 | `result-track:2d6ca5871d7b568ca3d54816268e3a292d9f434fd2a5c9038cc223f1c9d722bb` |
| 63 | `theorem` | [isBounded_of_bddAbove_of_bddBelow](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-of-bddabove-of-bddbelow.md) | 369 | `result-track:ed6bc646a58e65ae2d78c600506b6db3e7a66dcfdf6d5e05155c7d48cf328164` |
| 64 | `lemma` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/of-iscompacticc.md) | 376 | `result-track:a49ab9d1c37e4ba81244fa2c1fef5cd3d04e4c673fb0900d14c9615b7de9e31a` |
| 65 | `lemma` | [isBounded_of_abs_le](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-of-abs-le.md) | 392 | `result-track:aa158b83c6ede8b3d8fcab464bf654311346527bee615fde42f77cd695caf677` |
| 66 | `lemma` | [isBounded_of_abs_lt](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-of-abs-lt.md) | 397 | `result-track:2e52572b71f6bdb77116eee39d7df41abe7981b3e1e7036b479e675fc7fac617` |
| 67 | `def` | [diam](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam.md) | 415 | `declaration-track:4ff310dd5c5834f4cf7629217b63165aae2bdad37480d9959b73e0181af9b6f7` |
| 68 | `theorem` | [diam_nonneg](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-nonneg.md) | 419 | `result-track:0b748e2898a757664c7a73b8082adf0f8d1cf4b382eb98ddf3e6173cc782c6ff` |
| 69 | `theorem` | [diam_subsingleton](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-subsingleton.md) | 422 | `result-track:e6e1627914fb1446868f37781bcd04e64f1d5b403500d51cbdc632abee8556f9` |
| 70 | `theorem` | [diam_empty](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-empty.md) | 427 | `result-track:f0d6429e7f13c55aa919f4d69a6018fee0133e506bb27393721fb7696e3f829c` |
| 71 | `theorem` | [diam_singleton](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-singleton.md) | 432 | `result-track:37d8ba0c4ed2c2e4f5cf34169d9c104f6d30b8f815b77da17a77038a75d15f8c` |
| 72 | `theorem` | [diam_one](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-one.md) | 436 | `result-track:16f3b8bb1e873e809822a0acb68f8a33cc8b18b8cc2edfa71e82d08511c90392` |
| 73 | `theorem` | [diam_pair](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-pair.md) | 440 | `result-track:538d29097fddc801bbbb8f0f62fdb9cbfd87055a1d4d3d2adfcdc42d67e0ca4f` |
| 74 | `theorem` | [diam_triple](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-triple.md) | 444 | `result-track:d3cbc2002ba235bca4fe0f271572c335205dd128fe0bda165c3ee563e3549797` |
| 75 | `theorem` | [ediam_le_of_forall_dist_le](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/ediam-le-of-forall-dist-le.md) | 451 | `result-track:ab037eff728d1a92448823c9a4a77f222c846fec38c71bd1602f64b56d51c134` |
| 76 | `theorem` | [diam_le_of_forall_dist_le](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-le-of-forall-dist-le.md) | 457 | `result-track:9cdc98141bbda7b84c06b03c816ffa927eeae7490479ced4e8705f5af10cd0e1` |
| 77 | `theorem` | [diam_le_of_forall_dist_le_of_nonempty](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-le-of-forall-dist-le-of-nonempty.md) | 463 | `result-track:f2e085769235c728b380fa6a0927a25cfab6aa8e6df786979248fa64b08a33ce` |
| 78 | `theorem` | [dist_le_diam_of_mem'](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/dist-le-diam-of-mem.md) | 471 | `result-track:a5b83d0fd21a51297eca62b022ee7108b254ce1c67391de0f2bbee87e33f4d67` |
| 79 | `theorem` | [isBounded_iff_ediam_ne_top](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/isbounded-iff-ediam-ne-top.md) | 477 | `result-track:573290a05dcd60c76257f30c0697b55fe610fd8de501a9c753fc6522571b4469` |
| 80 | `theorem` | [ediam_eq_top_iff_unbounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/ediam-eq-top-iff-unbounded.md) | 484 | `result-track:9b04eb922c10c9eb6b933aa18641e98b61d1692de734f1645be9bd59b2352339` |
| 81 | `theorem` | [ediam_univ_eq_top_iff_noncompact](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/ediam-univ-eq-top-iff-noncompact.md) | 487 | `result-track:0c1dd133a988c773ec2296e85a045b49a07d73ce34f217d5b24876b93abcbdd3` |
| 82 | `theorem` | [ediam_univ_of_noncompact](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/ediam-univ-of-noncompact.md) | 493 | `result-track:ae891c228db3c15c9eed61991d6ddee5138c63d77d57402115a70ff981031c70` |
| 83 | `theorem` | [diam_univ_of_noncompact](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-univ-of-noncompact.md) | 498 | `result-track:39cf0675c5b9db769594513c8f73c141f8b74839204dbc24ccbe35b4d1377a25` |
| 84 | `theorem` | [dist_le_diam_of_mem](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/dist-le-diam-of-mem-source-edition-2.md) | 502 | `result-track:e2915482b6d13fa943234d2c3e4afe7d4de828094edab59486fce8a317187aa5` |
| 85 | `theorem` | [ediam_of_unbounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/ediam-of-unbounded.md) | 505 | `result-track:cadf3261606bf2ddc8a46e6e2e82d804da6ae40b19faabdd57b6ef2ed21a694c` |
| 86 | `theorem` | [diam_eq_zero_of_unbounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-eq-zero-of-unbounded.md) | 509 | `result-track:b80b61b09510d0bdaf1252097f0f9628ec297b0d8f0b9daa809343c6ca6210dd` |
| 87 | `theorem` | [diam_mono](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-mono.md) | 513 | `result-track:5516532733f4a3078b04355ad63ed8b623913636d21fe46d00924b7e1e931789` |
| 88 | `theorem` | [diam_union](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-union-source-edition-2.md) | 519 | `result-track:91beff4d212396ab5d8b5bb071aeb1ec30881a1653679277dc00b411497eef22` |
| 89 | `theorem` | [diam_union'](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-union.md) | 528 | `result-track:8faae201e11fc6b0e2d8ead3360dfe5bf2705a8de96aa5444453d31031963a4a` |
| 90 | `theorem` | [diam_le_of_subset_closedBall](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-le-of-subset-closedball.md) | 532 | `result-track:58776ccf41462488af27dbd46ba4106726234fd888728bffbe0d31763b59d684` |
| 91 | `theorem` | [diam_closedBall](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-closedball.md) | 541 | `result-track:c85335b7eb383bb35f544b69d59a761897ea8df3f7ce8d4c187263427c496dbf` |
| 92 | `theorem` | [diam_ball](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-ball.md) | 545 | `result-track:7438238049f640884b5181137b616cd8a1986adf3141d8681d25cb01d0d01cde` |
| 93 | `theorem` | [Bounded Namespaced Public](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/nonempty-iinter-of-nonempty-biinter-source-line-550-occurrence-2.md) | 550 | `result-track:a0f77a2becbab586d10de57f4f553d1f33a0babb7611c5629e24c30bf8fac053` |
| 94 | `theorem` | [nonempty_iInter_of_nonempty_biInter](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/nonempty-iinter-of-nonempty-biinter.md) | 574 | `result-track:18414833b03512d2c2732433694e30a0c476747b2bb748778fcca9d399e93591` |
| 95 | `theorem` | [diam_pos](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/diam-pos.md) | 583 | `result-track:7b4c571d62675db920f03ba085e7dcd3201cb93f189265a347cbf46c5a8a107a` |
| 96 | `def` | [evalDiam](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/evaldiam.md) | 599 | `declaration-track:db8579e94e0c30fd0bf00f9e09bb9288f282b218c0ecac125191f7920c9474a2` |
| 97 | `theorem` | [Metric.cobounded_eq_cocompact](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/metric-cobounded-eq-cocompact.md) | 615 | `result-track:dc72b279bbc1e8378025dba75cad93d7e8640ac3585ed496346e8397a00d5a76` |
| 98 | `theorem` | [tendsto_dist_right_cocompact_atTop](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/tendsto-dist-right-cocompact-attop.md) | 620 | `result-track:d942f60f609654a44c5f133fc4c0259ce7b6b21f915216328ce37d8c25534ab2` |
| 99 | `theorem` | [tendsto_dist_left_cocompact_atTop](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/tendsto-dist-left-cocompact-attop.md) | 624 | `result-track:efada5fd6b6213839746e635f9c42820f1809e72f440cf2190930e328a0ad319` |
| 100 | `theorem` | [comap_dist_left_atTop_eq_cocompact](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/comap-dist-left-attop-eq-cocompact.md) | 628 | `result-track:6c39b58ef8d4e8733f6511ff03ab371a183dfac1d4dec331b80bedf4eb90d728` |
| 101 | `theorem` | [tendsto_cocompact_of_tendsto_dist_comp_atTop](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/tendsto-cocompact-of-tendsto-dist-comp-attop.md) | 631 | `result-track:aa2d2483635461466408746fdb5d6f4dba4ef9570e4e91552e850c2340fea692` |
| 102 | `theorem` | [Metric.finite_isBounded_inter_isClosed](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/metric-finite-isbounded-inter-isclosed.md) | 635 | `result-track:c2c53782928097395fc838d339cd0cdb9f9f82b8990db401b6f2c534fb94c294` |
| 103 | `theorem` | [exists_forall_le_of_isBounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/exists-forall-le-of-isbounded.md) | 654 | `result-track:8fcc7eb739b83e50fabe8597c12b0d8b6ecca0ac227299a4fa0795be417c82f4` |
| 104 | `theorem` | [exists_forall_ge_of_isBounded](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/exists-forall-ge-of-isbounded.md) | 670 | `result-track:8b4e504912290d2d70cd751724cc43154427d33d90271cdb40b2293a79eda311` |
| 105 | `lemma` | [CompactSpace.lebesgue_number_lemma](../../../../GeneralTopology/BoundedNamespacedPublic.lean/declarations/compactspace-lebesgue-number-lemma.md) | 680 | `result-track:fe1d8c80909080e117fc55af879fc034d9ebef92286f3f1d0a770696ec403217` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96331e0990bb5f91a0758eb07346cbcb0c3e849367dafc56f5ffa23b1ed611a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
