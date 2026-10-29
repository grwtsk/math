# Verification target: Uniform Convergence Namespaced Tendsto Uniformly Congr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e25f3cc619dcb97fcc87aeafa5e2ca9b374aed6a",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/index.md) · [Full source](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e25f3cc619dcb97fcc87aeafa5e2ca9b374aed6a`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter.md) | 76 | `declaration-track:a8be9dc2a38d520b4b2a5057eba284f6c7529ce1405220aa2b2e5965b2737a38` |
| 2 | `theorem` | [tendstoUniformlyOnFilter_iff_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-iff-tendsto.md) | 84 | `result-track:ce70c6167e88763ab80488fb6be7cf63029dca70cdac944f9f98679a0ca18688` |
| 3 | `def` | [TendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon.md) | 92 | `declaration-track:665c4ea1d96608681a4b08d530419859d8795e3fc4969d21840176dd3e18a55f` |
| 4 | `theorem` | [tendstoUniformlyOn_iff_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-tendstouniformlyonfilter.md) | 95 | `result-track:17dda3f15d7dd545b1752695b205d0228264e68654107fbed388b09de7f3f3b4` |
| 5 | `theorem` | [tendstoUniformlyOn_iff_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-tendsto.md) | 109 | `result-track:1a662141ae60b07d957cd7e27eb635a88238fa6684d39349f13c9940f1f22aa6` |
| 6 | `def` | [TendstoUniformly](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly.md) | 117 | `declaration-track:0e9ea79f4a48ee080703211faccd2bf63acae67ea81b157b3ee0a1c50cb03708` |
| 7 | `theorem` | [tendstoUniformlyOn_univ](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-univ.md) | 120 | `result-track:c6339216a156cc4092cca5e8e06a9489201ab528fefcfece18b445a9fff15a00` |
| 8 | `theorem` | [tendstoUniformly_iff_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-iff-tendstouniformlyonfilter.md) | 123 | `result-track:90c82fafba51f07147456262a76414983cb56780d50c0b5705f84e17ebd64c52` |
| 9 | `theorem` | [TendstoUniformly.tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendstouniformlyonfilter.md) | 127 | `result-track:0fa48f80280b93b30cd55130fed11b0265f5a9064ed77ea5045af8f500706a0d` |
| 10 | `theorem` | [tendstoUniformlyOn_iff_tendstoUniformly_comp_coe](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-tendstouniformly-comp-coe.md) | 130 | `result-track:cdda3fd97d1f9a5f7c71a680de09f167da0a0a55521ad7debea2d896a3c0de4a` |
| 11 | `theorem` | [tendstoUniformly_iff_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-iff-tendsto.md) | 138 | `result-track:2bf8fef72abca3b2f13647702cc9bda10d58a136217628a1dc632e3ccc7527cb` |
| 12 | `theorem` | [TendstoUniformlyOnFilter.tendsto_at](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-tendsto-at.md) | 143 | `result-track:3e0a9656ff5a900481bed2d69c6994a1ac9115757def0c8663a172395ea9ffbb` |
| 13 | `theorem` | [TendstoUniformlyOn.tendsto_at](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-tendsto-at.md) | 151 | `result-track:36e942c708ceabecbea8599e1150e8deffd4bf7dbd2af021bf3a6e54ba9735aa` |
| 14 | `theorem` | [TendstoUniformly.tendsto_at](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendsto-at.md) | 157 | `result-track:8a1783377733712998134070e3581ad6538bf24661701932984761a6a674f8f8` |
| 15 | `theorem` | [TendstoUniformlyOnFilter.mono_left](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-mono-left.md) | 161 | `result-track:0673b5606269b1e4a3961c8864a1264eeecd785cf6b00e26a06a30dadb56774c` |
| 16 | `theorem` | [TendstoUniformlyOnFilter.mono_right](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-mono-right.md) | 165 | `result-track:165dc7e5ab649a490217d23e8333236724223ccf69ac27ba257bfa93e63bde0d` |
| 17 | `theorem` | [TendstoUniformlyOn.mono](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-mono.md) | 169 | `result-track:87d19077db7005a6af3f11e142adf6d05aa9b40eca93ecd234d1bebbb8139b17` |
| 18 | `theorem` | [TendstoUniformlyOnFilter.congr](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-congr.md) | 174 | `result-track:4caa18c44127ed83aa0849bae6aae196a5f0a0735483b50619aca884f9596cc3` |
| 19 | `theorem` | [TendstoUniformlyOn.congr](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-congr.md) | 181 | `result-track:255d1a7afb02743dd0516ec1e933425d6732ee15385602af8336a46f28456574` |
| 20 | `lemma` | [tendstoUniformly_congr](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-congr.md) | 189 | `result-track:703c63831bf72d40845bbe79fd5d5c9976ff3d20f441c293b0ed327a46f9a876` |
| 21 | `theorem` | [TendstoUniformlyOn.congr_right](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-congr-right.md) | 195 | `result-track:e42c86e43c07749a11185a9618183682e78007f6bb280f62e4fa7fa7bef7ef7e` |
| 22 | `theorem` | [TendstoUniformly.tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendstouniformlyon.md) | 199 | `result-track:b65b4d16c95254dd2f79ebb1137ca7a3712b98e875e4fe6287aa7919ea47c4e5` |
| 23 | `theorem` | [TendstoUniformlyOnFilter.comp](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-comp.md) | 204 | `result-track:5bdcf212a4076fd362fb4382a482d548aa21583b5e2d80b6f977f823ff9f1e0e` |
| 24 | `theorem` | [TendstoUniformlyOn.comp](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-comp.md) | 210 | `result-track:08445c0d642f00b920aff88bd70de6df0cbf6c7ef38fa00cb7c0cee2db1d1e57` |
| 25 | `theorem` | [TendstoUniformly.comp](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-comp.md) | 216 | `result-track:1e0e958e59b311f41edb12b5d4dfa12b6e2824265d7d87ed69ecabe4e618b1cb` |
| 26 | `theorem` | [UniformContinuous.comp_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-tendstouniformlyonfilter.md) | 223 | `result-track:58ac4bee22fad411d8ba647d88e06cbefb6760f5dca220350bd58afe585a16f8` |
| 27 | `theorem` | [UniformContinuous.comp_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-tendstouniformlyon.md) | 229 | `result-track:6ff38e7becfcb580d07bc8d4fce70a0c8f75900a7e0fe4f94700188f72ed6eb4` |
| 28 | `theorem` | [UniformContinuous.comp_tendstoUniformly](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-tendstouniformly.md) | 234 | `result-track:44f2e66c1a647cbf23be4e5fd83723a1695ab46d516acba43e76f5f600c49ce0` |
| 29 | `theorem` | [TendstoUniformlyOnFilter.prodMap](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-prodmap.md) | 238 | `result-track:97185aff695782a161c1ccb33cce7f2b3143ce0fc5ef63d26cd517896f2fbe02` |
| 30 | `theorem` | [TendstoUniformlyOn.prodMap](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-prodmap.md) | 250 | `result-track:3d74d8038a39640c1fd1430122f3cb553b1ccffb7ce9681ad4d2d05892733e6c` |
| 31 | `theorem` | [TendstoUniformly.prodMap](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-prodmap.md) | 261 | `result-track:b21c9bd274913cb28fda39acec786aa32c368ec12e677f99a7d4ed2b9b46ccc7` |
| 32 | `theorem` | [TendstoUniformlyOnFilter.prodMk](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-prodmk.md) | 270 | `result-track:27b8512c4552d5a995817c33102f61de0183b7e60a5404945dd45f4bab7030f5` |
| 33 | `theorem` | [TendstoUniformlyOn.prodMk](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-prodmk.md) | 280 | `result-track:6a2927a7fcf554b834fd03b3417423568b202ac1cca59ceb499204cdfa87aabb` |
| 34 | `theorem` | [TendstoUniformly.prodMk](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-prodmk.md) | 290 | `result-track:d93ab549d63904dd7c3e0fbdfac71fa7264edaf9527352525de89bca05e1c211` |
| 35 | `theorem` | [tendsto_prod_filter_iff](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendsto-prod-filter-iff.md) | 300 | `result-track:7c1df15d6eb9b2fed9196d60484a7e8aa46c5a8ea522a923ae5fc3183db66dae` |
| 36 | `theorem` | [tendsto_prod_principal_iff](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendsto-prod-principal-iff.md) | 307 | `result-track:202b2980eb1a70845a770b0f90fd2dcbec482fdc9b3785cab01b6a960b9c7606` |
| 37 | `theorem` | [tendsto_prod_top_iff](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendsto-prod-top-iff.md) | 313 | `result-track:cfb5373e006e31968b6db08f1acf109823477c2dc20890bf2aad525bca4284c3` |
| 38 | `theorem` | [tendstoUniformlyOn_empty](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-empty.md) | 319 | `result-track:dfcae89abcdb2279ee8920045ee6a3baa1430b7beb228ea265e1eba2146cf197` |
| 39 | `theorem` | [tendstoUniformlyOn_singleton_iff_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-singleton-iff-tendsto.md) | 322 | `result-track:38406c4d4d99aaef942b5debe7ef4441aad8aeebad1cb8dcb0248b01c6aa9cc4` |
| 40 | `theorem` | [Filter.Tendsto.tendstoUniformlyOnFilter_const](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/filter-tendsto-tendstouniformlyonfilter-const.md) | 329 | `result-track:6cc6c3469c8adf975ce5bd3625cb1c200377e7f970ae7be35686af5091ef7898` |
| 41 | `theorem` | [Filter.Tendsto.tendstoUniformlyOn_const](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/filter-tendsto-tendstouniformlyon-const.md) | 336 | `result-track:498b5682e157f36c29e954dcbdf54147372fcb48676c8420c00a23cc0ebf186b` |
| 42 | `theorem` | [UniformContinuousOn.tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcontinuouson-tendstouniformlyon.md) | 340 | `result-track:d4f0c0295b88c55d4a028888440032421e47193e2ce116cb0938eb826f594b52` |
| 43 | `theorem` | [UniformContinuousOn.tendstoUniformly](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcontinuouson-tendstouniformly.md) | 352 | `result-track:ca0612b3f2bbf02bb7cd8433a80389a42238e72a4ec5fd8f25115e16ea7d3870` |
| 44 | `theorem` | [UniformContinuous₂.tendstoUniformly](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcontinuous-tendstouniformly.md) | 358 | `result-track:199ebd8a09e4a47ec938877a09f488e4e256f89ee30200b4ede1c5c73599abdc` |
| 45 | `def` | [UniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter.md) | 364 | `declaration-track:d2ab1946e7b4573c27017e3de6ebcaf918e34cef5b24a70b67d4b1374b8cbe17` |
| 46 | `def` | [UniformCauchySeqOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon.md) | 369 | `declaration-track:ee4bcf53819a464dc7010fcf49b04b000ae57dbbff95225564d90c0f8af16e41` |
| 47 | `theorem` | [uniformCauchySeqOn_iff_uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-iff-uniformcauchyseqonfilter.md) | 372 | `result-track:a3f771a3a0b5e002f12fe8dc0cc85f9ed142a7a47b7981e342254a62df46a8af` |
| 48 | `theorem` | [UniformCauchySeqOn.uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-uniformcauchyseqonfilter.md) | 378 | `result-track:3a06b561c6a2cc047e5d6b202ef33e9806bff882363701d12105c9a77c4ccd61` |
| 49 | `theorem` | [TendstoUniformlyOnFilter.uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-uniformcauchyseqonfilter.md) | 382 | `result-track:42d1574fe27e9161ed901ddf652d022fc3f3ad0d03aea289be6257413540e309` |
| 50 | `theorem` | [TendstoUniformlyOn.uniformCauchySeqOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-uniformcauchyseqon.md) | 393 | `result-track:bbb0043946f2ca78fd6d31bd6de48f15ff666de0f81a0bcf15202534e1add3f9` |
| 51 | `theorem` | [UniformCauchySeqOnFilter.tendstoUniformlyOnFilter_of_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-tendstouniformlyonfilter-of-tendsto.md) | 399 | `result-track:0cac3aba14ecf8ad68ccfc2190020377bc3ca52105c34a17f5bc66906ebfc227` |
| 52 | `theorem` | [UniformCauchySeqOn.tendstoUniformlyOn_of_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-tendstouniformlyon-of-tendsto.md) | 430 | `result-track:a1a1b987821e5030e5604a73ed1af7fc0c04b157e1775476ccde04f9f2d1b56e` |
| 53 | `theorem` | [UniformCauchySeqOnFilter.mono_left](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-mono-left.md) | 435 | `result-track:8c0f9ee7b50bbb2f5dad6210677c3405b84cb39acc97b8478f2c3d1c2a374875` |
| 54 | `theorem` | [UniformCauchySeqOnFilter.mono_right](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-mono-right.md) | 441 | `result-track:e0cf3d5e26dadd9e1cce4593018db3d8e53d7b394a7f19f973e881b8d3ac892c` |
| 55 | `theorem` | [UniformCauchySeqOn.mono](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-mono.md) | 446 | `result-track:418ad9312fa5996b147cf879336280908d1a791f8058c9b191b3143a571c75a1` |
| 56 | `theorem` | [UniformCauchySeqOnFilter.comp](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-comp.md) | 452 | `result-track:e9370cd660ab4c8e77aab1b543fb51a09c1206b4a983fc2b6a4712d4449d2a68` |
| 57 | `theorem` | [UniformCauchySeqOn.comp](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-comp.md) | 460 | `result-track:e1d88891a002a18cf38375be5ad63359c7417358da9215c0803dcbc0d2b2fad3` |
| 58 | `theorem` | [UniformContinuous.comp_uniformCauchySeqOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-uniformcauchyseqon.md) | 467 | `result-track:f3e1a51f234fe686a876ef8af784ab14c65910a5b21de9d7faec022f59ed35e6` |
| 59 | `theorem` | [UniformCauchySeqOn.prodMap](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-prodmap.md) | 471 | `result-track:310c53cbdb3260c2b7ac96d3acc1ce85bd69af1513be201e7ec193ac5cf58f01` |
| 60 | `theorem` | [UniformCauchySeqOn.prod](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-prod.md) | 487 | `result-track:94b1c40877073c86cd671ed833e854628697615db0e69f7242841981476dd61e` |
| 61 | `theorem` | [UniformCauchySeqOn.prod'](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-prod-source-edition-2.md) | 492 | `result-track:f2e603b9d0165f3f7914e4a1df8c6b59329f138de65a9419918faf431d62cedb` |
| 62 | `theorem` | [UniformCauchySeqOn.cauchy_map](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-cauchy-map.md) | 500 | `result-track:36de14e8acc4fc85213ec44b80fcecec5dd467549d317c96bafc1946bef0c290` |
| 63 | `theorem` | [UniformCauchySeqOn.cauchySeq](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-cauchyseq.md) | 509 | `result-track:857db8cd2e4d9cb7c599682c1bf23d7a6026e31ec819bc9081abb4c41d209a9d` |
| 64 | `theorem` | [tendstoUniformlyOn_of_seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-of-seq-tendstouniformlyon.md) | 516 | `result-track:f3cfe11865acab7bb7e336aaba79aa999e0e80ae46880c163bfa8d0c6daa7c58` |
| 65 | `theorem` | [TendstoUniformlyOn.seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-seq-tendstouniformlyon.md) | 526 | `result-track:2621f7a112a17a1d960f92ff7b85f3c6b042f9b2aad8fdc7c1336fa9f9f676aa` |
| 66 | `theorem` | [tendstoUniformlyOn_iff_seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-seq-tendstouniformlyon.md) | 531 | `result-track:58455a9284a737a024664bd7945ab8fcecfd00b4e1c5a8a186f3fedd1cbe4590` |
| 67 | `theorem` | [tendstoUniformly_iff_seq_tendstoUniformly](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-iff-seq-tendstouniformly.md) | 536 | `result-track:ff280d38dfd01befadad9866e01e41aa9747cff6808e834f6b48350121a9dc7b` |
| 68 | `theorem` | [TendstoUniformlyOnFilter.tendsto_of_eventually_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-tendsto-of-eventually-tendsto.md) | 548 | `result-track:e444d857492091caa4833ac720aa2c47e0579b65ee9e20da5e234a5ab4f9d475` |
| 69 | `theorem` | [TendstoUniformly.tendsto_of_eventually_tendsto](../../../../GeneralTopology/UniformConvergenceNamespacedTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendsto-of-eventually-tendsto.md) | 562 | `result-track:a54bc53c2d99967c4fb0429c43bbad99536b6282c6ebec128982a95b8cb4bcd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c38e100cf80307e2947e8e18dcf301f9c4516a293d3d3716e964c60c1f288287 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
