# Verification target: Extr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bab568f37523edd91720f2d44e4e55b406f1671",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Extr/Variant632368d49bf390eaa8bcab6a5541d02b60f76d3bf42df1f0479043b31db43f8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bab568f37523edd91720f2d44e4e55b406f1671`.

Source path: `GRWTSK/Topology/GeneralTopology/Extr/Variant632368d49bf390eaa8bcab6a5541d02b60f76d3bf42df1f0479043b31db43f8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Extr/Variant632368d49bf390eaa8bcab6a5541d02b60f76d3bf42df1f0479043b31db43f8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinFilter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter.md) | 96 | `declaration-track:e00c7f4fe925f43fae19f5487c42251b2d05501a067099a83596d52e5c556226` |
| 2 | `def` | [IsMaxFilter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter.md) | 101 | `declaration-track:c9f5d34db76631e1690ee118fea40f801cfecacb494ac1c652d10830361dee7a` |
| 3 | `def` | [IsExtrFilter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter.md) | 106 | `declaration-track:4ec440b3d1c39418c758b1c68c7c2374d4543dd8a66d88947e6b60ed40085a10` |
| 4 | `def` | [IsMinOn](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon.md) | 111 | `declaration-track:239ce7caca302ef29c86fda7f9d011379098f40bf97963edf5ae32d1bbe6af1d` |
| 5 | `def` | [IsMaxOn](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon.md) | 116 | `declaration-track:b5c741b52329768a2cc9652d2dfa76e8cdd1eef1b29dc2db8a14f9e9dd36a209` |
| 6 | `def` | [IsExtrOn](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron.md) | 121 | `declaration-track:ceb7ddc482e77003b68dc246cf11a35383e026a709fe99d3266e6163db906938` |
| 7 | `theorem` | [IsExtrOn.elim](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-elim.md) | 127 | `result-track:2e9e53a27ac36fc5b07ae5c1871d46460a6ac2f54fa4d04f038dbfe1c5096357` |
| 8 | `theorem` | [isMinOn_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-iff.md) | 131 | `result-track:2c1d9e302e7dc378a334a5f057dca474f4d1d2094a68457bc3d629bc1909526d` |
| 9 | `theorem` | [isMaxOn_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-iff.md) | 135 | `result-track:14b4a8d4b67057d5e803385a7099d4f8d7b0e4b81ddc7ff6809b5ced3b3a40da` |
| 10 | `theorem` | [isMinOn_univ_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-univ-iff.md) | 139 | `result-track:857608e529766b27a146352b2a5e565a49fa6e5dd878cdc8d2210f650bbf09d1` |
| 11 | `theorem` | [isMaxOn_univ_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-univ-iff.md) | 143 | `result-track:71be6e8689d3d9edb6995196476f260bb9671840382971108bc3ee6696fd7de3` |
| 12 | `theorem` | [IsMinFilter.tendsto_principal_Ici](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-tendsto-principal-ici.md) | 147 | `result-track:8eee4fe8e0810a12aa76b654413b16ad7eec468d7749e66bee61c2bf607280ed` |
| 13 | `theorem` | [IsMaxFilter.tendsto_principal_Iic](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-tendsto-principal-iic.md) | 151 | `result-track:a0830ffff435960c4e3bf2746fe26c8cb1562dcdc16620d7a5ca6f543f876eb3` |
| 14 | `theorem` | [IsMinFilter.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-isextr.md) | 158 | `result-track:482275b573bf335c06a30cca69c56fb0df58cee10da82d6c23d6ab3041199ec4` |
| 15 | `theorem` | [IsMaxFilter.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-isextr.md) | 162 | `result-track:390e516d6deede17365e43b3229c64e3606e4f763599b9d6c4366f6fcc8cc741` |
| 16 | `theorem` | [IsMinOn.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-isextr.md) | 166 | `result-track:12f7429bc1f6976c2275c240f18b511bd6d65a75429afc9a34eac26615409329` |
| 17 | `theorem` | [IsMaxOn.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-isextr.md) | 170 | `result-track:3d3f2b56f9744f619bfe2913a74835ce5ddf052b39f7d787d44914cc26afb311` |
| 18 | `theorem` | [isMinFilter_const](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-const.md) | 177 | `result-track:fac2ddb33d379615363e0c8e804b69a87ae860aee4f5fe84ad0455c6b86379b3` |
| 19 | `theorem` | [isMaxFilter_const](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-const.md) | 181 | `result-track:b23bb26d523331fe288cae2fd00ae5e072357b387962fbc822953266a4b8c7b4` |
| 20 | `theorem` | [isExtrFilter_const](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-const.md) | 185 | `result-track:7f83c267b9709d4d7bd75481ef53b30a0fed69f1346bf3b84f120f6269d4380a` |
| 21 | `theorem` | [isMinOn_const](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-const.md) | 189 | `result-track:84e3888f2cd6af469e2196352667202264d48f8704807111bafde5da73aacfb7` |
| 22 | `theorem` | [isMaxOn_const](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-const.md) | 193 | `result-track:baa5e139bc6a5f5c051f9a68ae4a269ee6b2ea6416f6b321426ddcc65a7e3a69` |
| 23 | `theorem` | [isExtrOn_const](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-const.md) | 197 | `result-track:ae0d856994467b4256e4c0b3a2d0abcfbd1859e18ee9675659795291c9de5ef5` |
| 24 | `theorem` | [isMinFilter_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-dual-iff.md) | 206 | `result-track:8bb15e7ceb55328d5667e0d786754efa60097b63a91c87fb9feaa23b2f1bbb61` |
| 25 | `theorem` | [isMaxFilter_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-dual-iff.md) | 210 | `result-track:a67a1b7cd879b39548f51c6b9f96d3927518c9fd7f69ae4f41bbd031ad0abd61` |
| 26 | `theorem` | [isExtrFilter_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-dual-iff.md) | 214 | `result-track:f5bc21a27e5ce1415b5b02e09df0942423353390179a2ecd6a9b9d8b010370c1` |
| 27 | `theorem` | [isMinOn_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-dual-iff.md) | 230 | `result-track:6a42af3d21011fe541ab85c5de734d6bf5cf46de903b1887603da8724b79592d` |
| 28 | `theorem` | [isMaxOn_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-dual-iff.md) | 234 | `result-track:2cced10fd1d5782796e86d543f881cdf62012ea6a55a2c7203bc50e4ac05e2c6` |
| 29 | `theorem` | [isExtrOn_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-dual-iff.md) | 238 | `result-track:7908104ec0cdef7f3df071c7f29723996b0a011376a1cf7e7fa5c4d0ec35e338` |
| 30 | `theorem` | [IsMinFilter.filter_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-filter-mono.md) | 257 | `result-track:f6d43a8243cea8b78c48e13fe092bfc80253ee22d45166297bfae02efda025fc` |
| 31 | `theorem` | [IsMaxFilter.filter_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-filter-mono.md) | 261 | `result-track:602151f36d84f524350d20b4fcdf1650dc86ac0da14017961680b94dbfcbd9ae` |
| 32 | `theorem` | [IsExtrFilter.filter_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-filter-mono.md) | 265 | `result-track:2eb1c7c0ed31c8106a4d577bade9d64b46bab09344e3f0f475699999842118b4` |
| 33 | `theorem` | [IsMinFilter.filter_inf](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-filter-inf.md) | 269 | `result-track:07478e5688d261da695d92d13e5022f9784ccb7cf3470dbdc1077c1a50264f5d` |
| 34 | `theorem` | [IsMaxFilter.filter_inf](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-filter-inf.md) | 273 | `result-track:78d47d7b4c4e4cff83825f525a1288cdba6c27a2c077f7222bba3fbac80332a2` |
| 35 | `theorem` | [IsExtrFilter.filter_inf](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-filter-inf.md) | 277 | `result-track:9b5c7f1008ab4bdea1dd7a7386398569795dce99da739f3f68acd92778cbb7fd` |
| 36 | `theorem` | [IsMinOn.on_subset](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-on-subset.md) | 281 | `result-track:1a977d44d94e14dfb9ea37c58ff2c16ca1ef50019eb2e09d463b4c38fd541dec` |
| 37 | `theorem` | [IsMaxOn.on_subset](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-on-subset.md) | 285 | `result-track:279f2a0c170303cad6948e467355102106887f32693faf207a1549e54ded8fa5` |
| 38 | `theorem` | [IsExtrOn.on_subset](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-on-subset.md) | 289 | `result-track:4b6d79db859f09ede4e9e5fff61de50542eacca3301491cebc190e64ee8f63a1` |
| 39 | `theorem` | [IsMinOn.inter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-inter.md) | 293 | `result-track:e9c6a03c73889b82ad20cb675bb10a76dc78136ecd237c5e04b0b46e4a50cbb3` |
| 40 | `theorem` | [IsMaxOn.inter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-inter.md) | 297 | `result-track:8374be8d0c00279cec33ec5e5f4b8f4b3aa6e0709c9cca0525ad8d394c42040a` |
| 41 | `theorem` | [IsExtrOn.inter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-inter.md) | 301 | `result-track:c51af86d85f349b8596c0a63007ff0aeec5ff5b0eec5629966e304c3c60e0fe8` |
| 42 | `theorem` | [IsMinFilter.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-comp-mono.md) | 308 | `result-track:e19b5df94e4f9e80fc474c8d6386b1aff79f8fcc060d5418098d6eeee16925b9` |
| 43 | `theorem` | [IsMaxFilter.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-comp-mono.md) | 313 | `result-track:cabddce4896f51e7fd80ebf63d16de871545076d7f64cccfd4e20bc9f2ea1c0d` |
| 44 | `theorem` | [IsExtrFilter.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-comp-mono.md) | 318 | `result-track:ed0110712ba0e9192ef06988a8a0afd7e39b175705f06e9ca62c47bb6258b329` |
| 45 | `theorem` | [IsMinFilter.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-comp-antitone.md) | 323 | `result-track:f05b18feaed2a18e0666687fb7e1b076aca2551047ac55f5cb7f08141e251622` |
| 46 | `theorem` | [IsMaxFilter.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-comp-antitone.md) | 328 | `result-track:538d589985958e32a47eebbebff6f523fa7ca95a77d8a7fd95375be3fc13a84c` |
| 47 | `theorem` | [IsExtrFilter.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-comp-antitone.md) | 333 | `result-track:e1b2c2871e0027b4e54ad627daecb2e89d8301c295d64c30241751fe450080d3` |
| 48 | `theorem` | [IsMinOn.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-comp-mono.md) | 338 | `result-track:841f2a8ef8415a6e0e0d4c6a04352d963967b44a9ed20ba7c7dad4ee383b2308` |
| 49 | `theorem` | [IsMaxOn.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-comp-mono.md) | 343 | `result-track:079343449d16ca4f611e3b03b75b139f4ac6852b5cf50561d1ef0b5a07a6a270` |
| 50 | `theorem` | [IsExtrOn.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-comp-mono.md) | 348 | `result-track:5ea92266c9b9628bf41e4c21e26c7840d67fba347332ef5de71af53295a038bb` |
| 51 | `theorem` | [IsMinOn.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-comp-antitone.md) | 353 | `result-track:ee2eef8c2244cd8aee33292620c31f12f9a96c9a22def604fd9e107314da2b73` |
| 52 | `theorem` | [IsMaxOn.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-comp-antitone.md) | 358 | `result-track:862522d5829261fc7b6cb0365290746fc20a8f74b6df23399a1b9df1cb92d3d7` |
| 53 | `theorem` | [IsExtrOn.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-comp-antitone.md) | 363 | `result-track:1eb571527a22eeb1ec7c96b00e1f5169c41bfe75295c410145c13dfa93eb6faf` |
| 54 | `theorem` | [IsMinFilter.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-bicomp-mono.md) | 368 | `result-track:2c82b10b99a935d6ab136873f21526b5425c1f7c124f23ee5340ecb2f392305c` |
| 55 | `theorem` | [IsMaxFilter.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-bicomp-mono.md) | 374 | `result-track:7a83c26b127b7b18d72fd4936412fb10c00cb2203dc5931d64d73d8670dd3ec6` |
| 56 | `theorem` | [IsMinOn.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-bicomp-mono.md) | 381 | `result-track:52c398371a68964ab7ebfb97c2627e49076e98dbd87fb7b473e256793a52993a` |
| 57 | `theorem` | [IsMaxOn.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-bicomp-mono.md) | 387 | `result-track:508e10a8bcbefac5510d2d176dced18f3e1ad660c979f34af148504583c3e089` |
| 58 | `theorem` | [IsMinFilter.comp_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-comp-tendsto.md) | 396 | `result-track:88ae232603376fc81db62e7253f330049a9222c1366a05564aeb288bdd77ef39` |
| 59 | `theorem` | [IsMaxFilter.comp_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-comp-tendsto.md) | 401 | `result-track:0cff0e41adf79844a775a5f97dddf932297cc51c0a91f9ab9eab6704276a70f5` |
| 60 | `theorem` | [IsExtrFilter.comp_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-comp-tendsto.md) | 406 | `result-track:01b186f40673c21735299744b1fdf8aa5f3893bf614169a23e631a14d3b42d7a` |
| 61 | `theorem` | [IsMinOn.on_preimage](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-on-preimage.md) | 411 | `result-track:eab1737ae7eccd2d0ffed9b8cb9ba636f2c0250573e7fea17a689ebef5bab2f1` |
| 62 | `theorem` | [IsMaxOn.on_preimage](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-on-preimage.md) | 416 | `result-track:dbd5d406da8ce3711b6588cf5482d93b75f83d2b24e6882eee415ffa1ca634bc` |
| 63 | `theorem` | [IsExtrOn.on_preimage](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-on-preimage.md) | 421 | `result-track:9522f41306aa700628508af04d48628ed0ebfe367d116f5f253375f9c1b61a32` |
| 64 | `theorem` | [IsMinOn.comp_mapsTo](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-comp-mapsto.md) | 426 | `result-track:a403a18eb60d22729e4033dddd14e5dc8ccf6993f1e608e548f4e77ed7c1ce4c` |
| 65 | `theorem` | [IsMaxOn.comp_mapsTo](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-comp-mapsto.md) | 431 | `result-track:e7dc099783fe9886685e6601135ab20214ffb6f750ba99c2a746821bfab38102` |
| 66 | `theorem` | [IsExtrOn.comp_mapsTo](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-comp-mapsto.md) | 436 | `result-track:a7f7cb925250ec71a6d6aa0f4b543c83b61fddbca931f97fc655983dbe3936d2` |
| 67 | `theorem` | [IsMinFilter.add](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-add.md) | 450 | `result-track:a0d50813e18f88989a54f002019151e9e1ec39021144ea419d1505152563902b` |
| 68 | `theorem` | [IsMaxFilter.add](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-add.md) | 456 | `result-track:c9ce163bbde40d173a0918463fa5c2d08f8d3bf49489bb27b4e0b76b4793c182` |
| 69 | `theorem` | [IsMinOn.add](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-add.md) | 462 | `result-track:ec47e6882c6c17f785b3b7d26cbc5334f6fa97bb3c840e1b2d2261e1cf9622e3` |
| 70 | `theorem` | [IsMaxOn.add](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-add.md) | 466 | `result-track:620690bc6b480ed83e023b920d999672ca1a87feeb7a3dfe268e31e7f34ffea1` |
| 71 | `theorem` | [IsMinFilter.neg](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-neg.md) | 479 | `result-track:9720c5f5d7797fb555ff1c332c4387c9656e30e9066e2843fe3ca8bbc592ace6` |
| 72 | `theorem` | [IsMaxFilter.neg](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-neg.md) | 483 | `result-track:2f4d98dd8be3f501e26a31b38d5cff198c23d415feb4c2f89d226a88a32c2f33` |
| 73 | `theorem` | [IsExtrFilter.neg](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-neg.md) | 487 | `result-track:ca384524809d10b4c0b56e4e6867bf2a4365b513daf099c003bf7853c9bba2b8` |
| 74 | `theorem` | [IsMinOn.neg](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-neg.md) | 491 | `result-track:1a709e1ab3e5efcb72448f51d9bcca8c4747ad4b1134f8121f4851400edbe025` |
| 75 | `theorem` | [IsMaxOn.neg](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-neg.md) | 495 | `result-track:f5f8c3e7162d086fa9ed7a57d0cd3692079c0e4483b1dcaa106191dde7d95c9a` |
| 76 | `theorem` | [IsExtrOn.neg](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextron-neg.md) | 499 | `result-track:45cf093e5f2a656cab708e3df57d9e2af244f00a9b0724ad16023d11c716ecd8` |
| 77 | `theorem` | [IsMinFilter.sub](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-sub.md) | 503 | `result-track:e65b0381687fbbc62caa968f8d19604e1d2c52e8fc0433529d7cbd186a4e23da` |
| 78 | `theorem` | [IsMaxFilter.sub](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-sub.md) | 507 | `result-track:c2f20e7143b6462ac3c679b9029f897d571543a347dac230cbf83a335d119e5b` |
| 79 | `theorem` | [IsMinOn.sub](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-sub.md) | 511 | `result-track:e973af94b6a89a362f8c9b356af055063185fa79d74c9056fa723b75f1eb527a` |
| 80 | `theorem` | [IsMaxOn.sub](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-sub.md) | 515 | `result-track:f3369cf1ff0f3205ba101cf0af56df4c2b0a4872ed38ebe0629856e0013088d9` |
| 81 | `theorem` | [IsMinFilter.sup](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-sup.md) | 528 | `result-track:1ee7c7b3822d43e4f6c6d954d9a0bbb2506317b1e8fd1a94253eb4d5aeab658f` |
| 82 | `theorem` | [IsMaxFilter.sup](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-sup.md) | 534 | `result-track:0c83ec64ec1110db27771127ea1f14619e36d4352e4ebe580511a1a1e55d6264` |
| 83 | `theorem` | [IsMinOn.sup](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-sup.md) | 540 | `result-track:e765c4b01e77753a41a16ee5e72ce82760e3044f1c3a08d81aa8afb63135f3cc` |
| 84 | `theorem` | [IsMaxOn.sup](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-sup.md) | 544 | `result-track:380fa8dc792d974ebf1d2be45118c1dcbe0a9fa3057669c78253e6df5860df57` |
| 85 | `theorem` | [IsMinFilter.inf](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-inf.md) | 554 | `result-track:43fff192a276f0fb9987f2587b3d19dd51f8ab3a40a4e28c86725abed9b81681` |
| 86 | `theorem` | [IsMaxFilter.inf](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-inf.md) | 560 | `result-track:342c48fc66b9cd69f507812225cbf24024bd130eeaa57f841c207810690a2fe8` |
| 87 | `theorem` | [IsMinOn.inf](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-inf.md) | 566 | `result-track:2a9e53c40492dc84732893e53a08778fc55e5c488852f9514b208a4ed2a5a5df` |
| 88 | `theorem` | [IsMaxOn.inf](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-inf.md) | 570 | `result-track:9d588ece0ffab0d72c3ac94958334d105b19051c25b0ec9a9d98ef19a4e37d27` |
| 89 | `theorem` | [IsMinFilter.min](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-min.md) | 583 | `result-track:f8f0b0df826e62d9a5e5009b26b9049b8994c7795a513b367f4e8019004f5e2e` |
| 90 | `theorem` | [IsMaxFilter.min](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-min.md) | 589 | `result-track:68759aa4813c167579e2530f7ec2a0abdb7cb0a469d50c11098c21fdea2540e2` |
| 91 | `theorem` | [IsMinOn.min](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-min.md) | 595 | `result-track:8e9a9a593f275e70b2589b88b70a859e2ce1dbfdde36eac40e80209d88954ece` |
| 92 | `theorem` | [IsMaxOn.min](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-min.md) | 600 | `result-track:88daedc52890aac8ffcb7b4c99a938ebdb1c3c7a0f2472bb933c730e87844111` |
| 93 | `theorem` | [IsMinFilter.max](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-max.md) | 605 | `result-track:e0cc60a7f83f9ab35f1f1b8593d9f95a15761b8972036d592518bdf6a5d7a881` |
| 94 | `theorem` | [IsMaxFilter.max](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-max.md) | 611 | `result-track:89a7f824d3459f03d179596f3b055f7ae92ad5d003ce3eda0332f4ac34b0bba5` |
| 95 | `theorem` | [IsMinOn.max](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-max.md) | 617 | `result-track:75d55e03d71b49dac674d8603b083a9cb256984c7b9ef407bea9b38d84e0c0e0` |
| 96 | `theorem` | [IsMaxOn.max](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-max.md) | 622 | `result-track:2119f5f3da4adc744996eb1d55c7ea76ca645ded122644c1515fa48194b7d2c5` |
| 97 | `theorem` | [Filter.EventuallyLE.isMaxFilter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/filter-eventuallyle-ismaxfilter.md) | 634 | `result-track:65920c1454101001dcd40e6013e592dc3e04b1acd442675fec2910f1f388f663` |
| 98 | `theorem` | [IsMaxFilter.congr](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxfilter-congr.md) | 642 | `result-track:99c86520997d0dfbf17483ce1b0c5a7b6fd014ee7b5337b1d1f0381e226e0d30` |
| 99 | `theorem` | [Filter.EventuallyEq.isMaxFilter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/filter-eventuallyeq-ismaxfilter-iff.md) | 647 | `result-track:7b9f72d887ecbe2a6e2f8bc4f0d245a16932506e0cd8431359a4eccd7be113b1` |
| 100 | `theorem` | [Filter.EventuallyLE.isMinFilter](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/filter-eventuallyle-isminfilter.md) | 652 | `result-track:1f29ac92eaaf3bbada27808d8405cefb71fa523875a1527aa7bd6359d7df3e34` |
| 101 | `theorem` | [IsMinFilter.congr](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminfilter-congr.md) | 658 | `result-track:71e6805ff276b34c70c762f4abfa9f02a71e607e59d61c316e197125731c4ef3` |
| 102 | `theorem` | [Filter.EventuallyEq.isMinFilter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/filter-eventuallyeq-isminfilter-iff.md) | 663 | `result-track:fb9f379fe6003638ca5bcbb9c5f628f061cf48cb4b028023a79cd613146c3d29` |
| 103 | `theorem` | [IsExtrFilter.congr](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isextrfilter-congr.md) | 668 | `result-track:77be52fee14f3fcd183bae6571a083c55c8f58f6d23f598517fddeee26c758b1` |
| 104 | `theorem` | [Filter.EventuallyEq.isExtrFilter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/filter-eventuallyeq-isextrfilter-iff.md) | 674 | `result-track:b8e2a1eae84aa01daf5f11a1ff7242d77cd81ea01f8546afd26807066e1e4717` |
| 105 | `theorem` | [IsMaxOn.iSup_eq](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/ismaxon-isup-eq.md) | 688 | `result-track:eaf5949530b54b281695b8d12bf51eb90101d86b0a6bbddb9904abae101b9c7d` |
| 106 | `theorem` | [IsMinOn.iInf_eq](../../../../../GeneralTopology/GeneralitiesInTopology/Extr.lean/declarations/isminon-iinf-eq.md) | 693 | `result-track:291719ed73010a036d7244437908b81b78494209f4ad1fdc0da5508aef159604` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6d71b4d0e02eb6eb919a83c4aa9b6584dfd0d071f6c43cf30c4091a59047ebe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Extr/Variant632368d49bf390eaa8bcab6a5541d02b60f76d3bf42df1f0479043b31db43f8c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Extr/Variant632368d49bf390eaa8bcab6a5541d02b60f76d3bf42df1f0479043b31db43f8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
