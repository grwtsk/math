# Verification target: Hausdorff Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f13a2e98c2ccf28f2041334ec8a494d43440ba81",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HausdorffNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/HausdorffNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f13a2e98c2ccf28f2041334ec8a494d43440ba81`.

Source path: `GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.SigmaCompact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Irreducible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [T2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2space.md) | 88 | `declaration-track:3fb9758c5fccac1acd9ad1a493ba7f1cf2b42decdd521e13cd9529b16e48df08` |
| 2 | `theorem` | [t2_separation](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2-separation.md) | 93 | `result-track:063dd8deb98c21159e21164851d525f5b5417fce28fc40dc7e0048a24b6c7102` |
| 3 | `theorem` | [t2Space_iff_disjoint_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2space-iff-disjoint-nhds.md) | 98 | `result-track:767e20217b058f970a3f138ec44d743843dc47978c781eaffa76fbc03d2c08a8` |
| 4 | `theorem` | [disjoint_nhds_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/disjoint-nhds-nhds.md) | 104 | `result-track:5c56a4bd7253e9a907120ceab4228189f3e974c299523d3577d6e0a1cf1f6895` |
| 5 | `theorem` | [pairwise_disjoint_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/pairwise-disjoint-nhds.md) | 107 | `result-track:ac0ec6487646b2871d8337d253f24b6f51f61f632803a680a38c8f7239604ba0` |
| 6 | `theorem` | [Set.pairwiseDisjoint_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/set-pairwisedisjoint-nhds.md) | 110 | `result-track:f844adbbe21cd4e7ad951bbf36bd9c47f8b8ed0e98eb4dc584c6bf97dcc682fe` |
| 7 | `theorem` | [Set.Finite.t2_separation](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/set-finite-t2-separation.md) | 114 | `result-track:01d5849d1730bdd8a443ed737d4a11998bfb0ddb31c5350d50162a76ff022400` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance-source-edition-8.md) | 119 | `declaration-track:cc46583aaae8c7a89069f886258ce9e2ebd3e952476a0012a7c5ae5bae739dbe` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance-source-edition-2.md) | 124 | `declaration-track:3c5534629bdbcbe107fdfadb7b11b54fd7b708e266708c83585090f8fb9b53c0` |
| 10 | `theorem` | [SeparationQuotient.t2Space_iff](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separationquotient-t2space-iff.md) | 127 | `result-track:b506fb74fd2f1a39ceaaddfc16ee49545bdc75010a2bb5910c7f9f82302518f3` |
| 11 | `instance` | [SeparationQuotient.t2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separationquotient-t2space.md) | 132 | `declaration-track:5e38f56d4779dbda5b7c4be195aa502b3fc3a815eb5183d5b5466ccbeb684f2b` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance-source-edition-6.md) | 135 | `declaration-track:9e05c8216a765e254e566483d9c61998a77bb763ed0cc8f6ece760bc9a704dc6` |
| 13 | `theorem` | [R1Space.t2Space_iff_t0Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/r1space-t2space-iff-t0space.md) | 139 | `result-track:349b398c3e2a2a60fbc8060ac1e9dccafe69ec21ceb676a6121c76dcf0137720` |
| 14 | `theorem` | [t2_iff_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2-iff-nhds.md) | 143 | `result-track:a0e7dc2a7d1573e52cb625469da774a9390bcf1a9a17120cb648c324b05f564b` |
| 15 | `theorem` | [eq_of_nhds_neBot](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/eq-of-nhds-nebot.md) | 146 | `result-track:cd1157cbc8c04d481814f923cba52e60ecfb7c7affda92b44db41b85e3dbd147` |
| 16 | `theorem` | [t2Space_iff_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2space-iff-nhds.md) | 149 | `result-track:5b80b4d10241b6f1e178e9567beaa9b26b60f971952a9ea876e45f34a1be38ce` |
| 17 | `theorem` | [t2_separation_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2-separation-nhds.md) | 153 | `result-track:fa2c6d5002db37ff3f8a8cb5f56380e885ad68707abdec3994bfbe0a592f269e` |
| 18 | `theorem` | [t2_separation_compact_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2-separation-compact-nhds.md) | 158 | `result-track:2e3548ea7ecfc1a4389b99d67fa26bad773c8f0d69d1334752ce21992b90b2f2` |
| 19 | `theorem` | [t2_iff_ultrafilter](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2-iff-ultrafilter.md) | 163 | `result-track:ffc10fee183c2460f6c41c736d4458e404dca6c0e60f74272084db631cfdabe1` |
| 20 | `theorem` | [t2_iff_isClosed_diagonal](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2-iff-isclosed-diagonal.md) | 167 | `result-track:dc5df44859398091114180f17071612235be758a3b6de9ed355111d6b40daa4a` |
| 21 | `theorem` | [isClosed_diagonal](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/isclosed-diagonal.md) | 171 | `result-track:4e5177e2e8c779c526ab442c4bc3e7a60306d8e49e824398ece04a31a3dff363` |
| 22 | `theorem` | [tendsto_nhds_unique](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/tendsto-nhds-unique-source-edition-2.md) | 174 | `result-track:f9e54a800f7b94cff06bc8c37504efcb2705500640180d7e6e3d55c6217a068d` |
| 23 | `theorem` | [tendsto_nhds_unique'](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/tendsto-nhds-unique.md) | 178 | `result-track:da15ada8390fda6157cd357f9f4ec5f34acd2dc39e60c4838bdfc53def4ce588` |
| 24 | `theorem` | [tendsto_nhds_unique_of_eventuallyEq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/tendsto-nhds-unique-of-eventuallyeq.md) | 182 | `result-track:c63f1bb87b137434660fce2c41bfb2e52630c726d30d8dde417a35d7568d1919` |
| 25 | `theorem` | [tendsto_nhds_unique_of_frequently_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/tendsto-nhds-unique-of-frequently-eq.md) | 186 | `result-track:3f4e6a72b6d09aed9043eb9bb043a2194831a53b10999e165b7acaac94377be0` |
| 26 | `theorem` | [IsCompact.nhdsSet_inter_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/iscompact-nhdsset-inter-eq.md) | 195 | `result-track:1ce58d2841e6f95863e280a2da121985bb4c2bf8fd8aac13a5d87248ab16b5c5` |
| 27 | `lemma` | [IsCompact.separation_of_notMem](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/iscompact-separation-of-notmem.md) | 206 | `result-track:9701b4a82aa966c2108a722d10296fdfec1f45b8d15a62b0a0816ca693476c4d` |
| 28 | `lemma` | [IsCompact.disjoint_nhdsSet_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/iscompact-disjoint-nhdsset-nhds.md) | 217 | `result-track:abcfbde20a2df98f547b7f1a9f817ddbc70021b6b06fcbb376e8a9c40f4ebcc4` |
| 29 | `theorem` | [Set.InjOn.exists_mem_nhdsSet](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/set-injon-exists-mem-nhdsset.md) | 230 | `result-track:73bd19fe66b02368b3b0bbf1c90de076758b6be4315818aa74361e3ae5c6db9c` |
| 30 | `theorem` | [Set.InjOn.exists_isOpen_superset](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/set-injon-exists-isopen-superset.md) | 251 | `result-track:1fa5371e6bc21c90d2ec887c75f3348bfe6e5f194514f87e36edb39e819250fb` |
| 31 | `theorem` | [lim_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/lim-eq.md) | 271 | `result-track:115c1d8712359df3bcfe986cc4c24cf14354fd7993085424e5f975a7c24d9067` |
| 32 | `theorem` | [lim_eq_iff](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/lim-eq-iff.md) | 274 | `result-track:2398b9a619e4d819c716f9ca2c862b28cdf28dee9e35c1ae40ed7b28e8662466` |
| 33 | `theorem` | [Ultrafilter.lim_eq_iff_le_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/ultrafilter-lim-eq-iff-le-nhds.md) | 277 | `result-track:a5892c18e9830b0d877c921fa35584df04fdc3065f2e95e719db6b459122aede` |
| 34 | `theorem` | [isOpen_iff_ultrafilter'](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/isopen-iff-ultrafilter.md) | 281 | `result-track:2a07573a63f7c24a66eda43f7314212e5b05d001124aafb660493e676b9c65dc` |
| 35 | `theorem` | [Filter.Tendsto.limUnder_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/filter-tendsto-limunder-eq.md) | 289 | `result-track:7d9d233bb2f0eb23e923a33c5921fd75415a8c80da9514f2fc76a8aa18aaca23` |
| 36 | `theorem` | [Filter.limUnder_eq_iff](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/filter-limunder-eq-iff.md) | 293 | `result-track:90f3a80e5ea2f8d520cdefaabf88569b03d503b20645da66b5e5deec46819a91` |
| 37 | `theorem` | [Continuous.limUnder_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuous-limunder-eq.md) | 297 | `result-track:568bd8f6f7e6ae4d8cb6666a18966103a392bbe8aa54869a01291cdba70763fc` |
| 38 | `theorem` | [lim_nhds](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/lim-nhds.md) | 302 | `result-track:438abb4d220ebbc6fd4726444bc5a37aedaf45910dbb697a4caef6d5ab3a4e9d` |
| 39 | `theorem` | [limUnder_nhds_id](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/limunder-nhds-id.md) | 306 | `result-track:2917160a0f7ab11583d276e1181b9c8ee8d8f3d23c92ad2264cc073da8695316` |
| 40 | `theorem` | [lim_nhdsWithin](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/lim-nhdswithin.md) | 310 | `result-track:5f4ddfc220048c635c06afefb2b6a5c338580e90d60e33477c83455cdf4c656b` |
| 41 | `theorem` | [limUnder_nhdsWithin_id](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/limunder-nhdswithin-id.md) | 315 | `result-track:9b928b462e188cce173ac687a6b06050ccf702b3a7c9cd45b952b258f1128da3` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance-source-edition-3.md) | 338 | `declaration-track:54323a2755b180c5a111c73e0801a0d860aa46ca3652dedae7bb46dacba919a7` |
| 43 | `theorem` | [separated_by_continuous](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separated-by-continuous.md) | 342 | `result-track:e515411df55ef187c07689875491474b40b07ca3ba089439635eb9e68c6b2ded` |
| 44 | `theorem` | [separated_by_isOpenEmbedding](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separated-by-isopenembedding.md) | 348 | `result-track:e83e8e7793308c12e37b20a4e606f2da86f93fdf4758fe0d9ff74cb1b191384b` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance-source-edition-7.md) | 355 | `declaration-track:a3b04bea387585c7fbaa0335a487b91f371cf5643982808574f16b915a6a8091` |
| 46 | `instance` | [Prod.t2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/prod-t2space.md) | 357 | `declaration-track:a7c468882595a9a304c1d36e268ebcd8f74a83ace28a4e56932aafc9d5ace2df` |
| 47 | `theorem` | [T2Space.of_injective_continuous](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2space-of-injective-continuous.md) | 362 | `result-track:da75efdd73a7d9a08351f760c22c57f043302dc87ff7b320cefed263f3e7784c` |
| 48 | `theorem` | [Topology.IsEmbedding.t2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/topology-isembedding-t2space.md) | 368 | `result-track:c17e7e597e6f82e80fcb0e7100d88e231a52e32a371344b221fd75fdd73b594b` |
| 49 | `theorem` | [Homeomorph.t2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/homeomorph-t2space.md) | 375 | `result-track:b0228351c0011b67443c5f75204c33e9268faba1d5ca61153741e70263ad5545` |
| 50 | `instance` | [ULift.instT2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/ulift-instt2space.md) | 378 | `declaration-track:612268a0511757f7b6d898fa0a3cdddb1df7697002eb75cd0a84812d6f8df675` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance-source-edition-5.md) | 381 | `declaration-track:8babbc82b891e8c9ebd3b760bca2f909982f1a51a1487143cc2d5d8a8f8469dd` |
| 52 | `instance` | [Pi.t2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/pi-t2space.md) | 390 | `declaration-track:6e42e2ae9e52a2be501368f2f442717a052d42ba22b5119341b8fa7514b463d0` |
| 53 | `instance` | [Sigma.t2Space](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/sigma-t2space.md) | 394 | `declaration-track:843a5522c14c49051d9f711a682859128f6f8aa0a9fb89822167654c914da8b4` |
| 54 | `def` | [t2Setoid](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2setoid.md) | 408 | `declaration-track:7aa42fec072eb4a2ee14d9b20dc93af70a4b7ba29f94921327a45b86dbeb9a2d` |
| 55 | `def` | [T2Quotient](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2quotient.md) | 412 | `declaration-track:c6d8c910744035b400e1214aee1edd6e563224f4dfc0c6d4455dd2c13c445721` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance.md) | 419 | `declaration-track:32aa9289ab81b93873957bb608d4004b0c9ff8aff96031959f127176e14063da` |
| 57 | `def` | [mk](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/mk.md) | 423 | `declaration-track:675483026d956d4ad72dd4da962304fae26e5202bf75e575ce70938518682085` |
| 58 | `lemma` | [mk_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/mk-eq.md) | 425 | `result-track:9da712b6b8ef66dd98e99567bcda5e96ef8f679e0a95971ba6c58b5e41d75618` |
| 59 | `lemma` | [surjective_mk](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/surjective-mk.md) | 430 | `result-track:aa43860fa546850d12677da3a1fd3ca33f010d68bfce6cd59b11b16d028ac423` |
| 60 | `lemma` | [continuous_mk](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuous-mk.md) | 432 | `result-track:d3b07d37bf1440cab34ef2e7ef57f4aef687f1b503f00946936e32afba27a775` |
| 61 | `lemma` | [inductionOn](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/inductionon-source-edition-2.md) | 438 | `result-track:5a511dfff9fc384b96f44ee64d40893851202ebac24c9d5eb24be0aa941ff456` |
| 62 | `lemma` | [inductionOn₂](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/inductionon.md) | 442 | `result-track:567a9ffad3a8ef8614ed76f52916b69707aa3ae22369acc013f2037fe886e6c8` |
| 63 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/instance-source-edition-4.md) | 447 | `declaration-track:5fa7f86bc219ea024f38709619520d450e318a24c0767f49fe992043b20873c6` |
| 64 | `lemma` | [compatible](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/compatible.md) | 454 | `result-track:461d49c7be345d44521b7551a8be8ac903bfa662d3f7ffef17fe37efccf8313a` |
| 65 | `def` | [lift](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/lift.md) | 465 | `declaration-track:a8296d8e3154ed0cfaa5ad224a96a98d0507a4b4800aaf1d85ca0e88ba43b511` |
| 66 | `lemma` | [continuous_lift](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuous-lift.md) | 469 | `result-track:fb743813f6ed838c1a369b77bb610042c320a302402dbc9ee3becc406a115ffd` |
| 67 | `lemma` | [lift_mk](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/lift-mk.md) | 474 | `result-track:e2b8591458e1df66fd6543bd4253b5429c5b1eff407248386027d1cce7bbee49` |
| 68 | `lemma` | [unique_lift](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/unique-lift.md) | 478 | `result-track:d4b1d169f1221996f52c33ea6b5b99a23e894d9822857ad8dd8b903d221565e3` |
| 69 | `theorem` | [isClosed_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/isclosed-eq.md) | 489 | `result-track:81f669dedf1fb3df3752297f7f7db5c7f19f60854e485ef9fde7c5b71b128584` |
| 70 | `theorem` | [IsClosed.isClosed_eq](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/isclosed-isclosed-eq.md) | 495 | `result-track:0943b2a0ee52d58dd2644a6709d16a8961ddf91310a9d218918988c21315fd89` |
| 71 | `theorem` | [isOpen_ne_fun](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/isopen-ne-fun.md) | 499 | `result-track:7cae0b42fbac86d4266f66fd81588f3cbf0cf0f8c1310994c9996635e95d2c2c` |
| 72 | `theorem` | [Set.EqOn.closure](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/set-eqon-closure.md) | 505 | `result-track:bfa149b9492084f3b2a3fe824649191c70293a2307bb52327f5b9b430bd3e0ab` |
| 73 | `theorem` | [Continuous.ext_on](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuous-ext-on.md) | 510 | `result-track:c367133fdd5f27e48f2ddf85d3449d843f69741ad2a5a72a814fac7215f639db` |
| 74 | `theorem` | [eqOn_closure₂'](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/eqon-closure-source-edition-2.md) | 514 | `result-track:5539d0f59a24c4eec5e5e8f420f579cb231ab2a5ace49e2ebe477e32dc580610` |
| 75 | `theorem` | [eqOn_closure₂](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/eqon-closure.md) | 522 | `result-track:024534417b2bdcc1460d22075d4052030fefcdf4229ccef78f8c7107f365fccd` |
| 76 | `theorem` | [Set.EqOn.of_subset_closure](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/set-eqon-of-subset-closure.md) | 529 | `result-track:49026b9d2c420d80d46d9834ae42c112b2509602d6bdaad41c29e3cdf0e3b8c1` |
| 77 | `theorem` | [Function.LeftInverse.isClosed_range](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/function-leftinverse-isclosed-range.md) | 538 | `result-track:5023bf66dff9e6e1d72653d73af08a4a4b30d4673ea8ddc5aff2f4d0bab823a7` |
| 78 | `theorem` | [Function.LeftInverse.isClosedEmbedding](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/function-leftinverse-isclosedembedding.md) | 544 | `result-track:40b34f78878a947f8aaba018f48c9b4f16d3cdc0aed6dc30fef91a792f89cfa5` |
| 79 | `theorem` | [SeparatedNhds.of_isCompact_isCompact](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separatednhds-of-iscompact-iscompact.md) | 548 | `result-track:4b18439e513ce16917069349a0dc027e1067b69a287153faf6c87ff3324e8e5b` |
| 80 | `lemma` | [SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separatednhds-of-isclosed-iscompact-closure-compl-isclosed.md) | 555 | `result-track:913eb665c0353e43fe97d82af84c944b2340ab537c3df482bafb450b5a6bcf61` |
| 81 | `theorem` | [SeparatedNhds.of_finset_finset](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separatednhds-of-finset-finset.md) | 574 | `result-track:faed89cea7165bcdd3e6b9197843bdefb9d0e79a09ad421223906a09d072c14f` |
| 82 | `theorem` | [SeparatedNhds.of_singleton_finset](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/separatednhds-of-singleton-finset.md) | 578 | `result-track:a34fda8eb6f7f81adfe746efeabf2fdc83d398c445bcc1ecb3fe1b929ea85dca` |
| 83 | `theorem` | [IsCompact.isClosed](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/iscompact-isclosed.md) | 585 | `result-track:d857e7826502b794c532e3eec60c03ca78c012dba66b133f7c556f7817c91ac7` |
| 84 | `theorem` | [IsCompact.preimage_continuous](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/iscompact-preimage-continuous.md) | 591 | `result-track:2e1cf564fe0502659c73dcf026d24e2c1ad3ef5d183201ad13b3dcefac27b6ba` |
| 85 | `lemma` | [Pi.isCompact_iff](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/pi-iscompact-iff.md) | 595 | `result-track:c52c3c5b63f7e19efd6159a72765ab85f91610edfc33af23b6f4b6ae5490b9d6` |
| 86 | `lemma` | [Pi.isCompact_closure_iff](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/pi-iscompact-closure-iff.md) | 602 | `result-track:8d564e1fefc93b8075a1afeccaa17015de49dbc00ed812e717d9aaa5fd81d75e` |
| 87 | `theorem` | [exists_subset_nhds_of_isCompact](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/exists-subset-nhds-of-iscompact.md) | 611 | `result-track:7eba0d636127307379fde37a768bf44656dc6ae4e83970e7d180230afff85e1d` |
| 88 | `theorem` | [CompactExhaustion.isClosed](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/compactexhaustion-isclosed.md) | 616 | `result-track:ecefb2190d293ae1988cd9550d3762248227e055b54723745f4676673334aafd` |
| 89 | `theorem` | [IsCompact.inter](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/iscompact-inter.md) | 619 | `result-track:b79d2eb314f85ec6f75808b18a6da57555aac00594205d0fd05c8936f4f02aca` |
| 90 | `theorem` | [image_closure_of_isCompact](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/image-closure-of-iscompact.md) | 623 | `result-track:d538539f6504607fe1927a7ee394f07beff499d54abe4be92e40200b8fdcfb9c` |
| 91 | `theorem` | [ContinuousAt.ne_iff_eventually_ne](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuousat-ne-iff-eventually-ne.md) | 630 | `result-track:ea5da393d9bbe4e0457f18142c5b9b06ca283018b9b38030a1609f7f1ff357d5` |
| 92 | `theorem` | [ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuousat-eventuallyeq-nhds-iff-eventuallyeq-nhdsne.md) | 650 | `result-track:e1a25e5fa29a4dc5357ff3996e9eabe688a9aa94277bfc9eeb517e1c0e0c2036` |
| 93 | `theorem` | [Continuous.isClosedMap](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuous-isclosedmap.md) | 669 | `result-track:a49cc0c0351a8ca80ce15ad393e701a88f716af3ef38d71cd7b2a1dc43216b75` |
| 94 | `theorem` | [Continuous.isClosedEmbedding](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/continuous-isclosedembedding.md) | 673 | `result-track:c9917ff5a82e25ebeffe4530b1b09302fe514afcf1be58c8126273725f7c6e82` |
| 95 | `theorem` | [IsQuotientMap.of_surjective_continuous](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/isquotientmap-of-surjective-continuous.md) | 678 | `result-track:18c6fca33d732fc27325cba829feab9fceb51571e185c52d3f5e8cf2796aa735` |
| 96 | `theorem` | [isPreirreducible_iff_subsingleton](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/ispreirreducible-iff-subsingleton.md) | 685 | `result-track:5c373112246d0924d9c4d0907777945ace5b3d52a08d3c5da2adad2b9030acd4` |
| 97 | `lemma` | [IsPreirreducible.subsingleton](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/ispreirreducible-subsingleton.md) | 693 | `result-track:a2e2a391383db576b680fcef4f25ac91e474ddd4cc99b667c5181a1abcd94dee` |
| 98 | `theorem` | [isIrreducible_iff_singleton](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/isirreducible-iff-singleton.md) | 697 | `result-track:2ae871dc23cbc31131e92e2282feb666dc2c13b307f4bfaf6bf5283fdcb81fa4` |
| 99 | `theorem` | [not_preirreducible_nontrivial_t2](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/not-preirreducible-nontrivial-t2.md) | 702 | `result-track:eab987ebcf840cc61063b96194632b45aeab91b83d0b16bf22c835d9cae2e765` |
| 100 | `theorem` | [t2Space_antitone](../../../../GeneralTopology/HausdorffNamespaced.lean/declarations/t2space-antitone.md) | 706 | `result-track:3cec498d95caa0ba809dd3872b18f91b7728cfe673087c1a05d957173bd07d40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6b331b7f9072b56dc99453d448fc84f6b324b82452537146135ca67c0430aab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
