# Verification target: Extr Namespaced Sup Eq Of Is Max On

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "834fdb4b48ee89651568a7939a67cf50977551b0",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `834fdb4b48ee89651568a7939a67cf50977551b0`.

Source path: `GRWTSK/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Tendsto` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinFilter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter.md) | 103 | `declaration-track:e83a055ed72aeadf32a51a98a50c5ddb0fa5a9be37c1f6148dd11dbf447989b3` |
| 2 | `def` | [IsMaxFilter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter.md) | 107 | `declaration-track:2874b562e67362afba5b0a1c5c7637145b36089ad8ca682a968d3f65c96488e3` |
| 3 | `def` | [IsExtrFilter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter.md) | 111 | `declaration-track:48122dd33102854f11d8d387ea7af0b3bca0b2d61ed9c0d204925d286384987f` |
| 4 | `def` | [IsMinOn](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon.md) | 115 | `declaration-track:77059b2fd7b8ad810449fcd0642956d734e947cce1f1989429cd140db383c68d` |
| 5 | `def` | [IsMaxOn](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon.md) | 119 | `declaration-track:ce12a7e77f27ddcf389a7bc533548ef088fe64e43d97d244eb437d21bcf0801b` |
| 6 | `def` | [IsExtrOn](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron.md) | 123 | `declaration-track:d6560d4ca836ae05e32ec2f9720ae58bbbb25a732a016e17f04bb2b0369cf2dd` |
| 7 | `theorem` | [IsExtrOn.elim](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-elim.md) | 128 | `result-track:054ca246467a293714536fb91fbaa291f6920b01210e2584d11c38ee7910d6d0` |
| 8 | `theorem` | [isMinOn_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-iff.md) | 131 | `result-track:de62ced30776c4a04264133022e38dd8f1c9db54f6db7ae986bbdd23038cf6f8` |
| 9 | `theorem` | [isMaxOn_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-iff.md) | 134 | `result-track:22e53876eabb9f9acfb86e10dea2576d21774bc279cb7f3a8604c0f10e8ba9fb` |
| 10 | `theorem` | [isMinOn_univ_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-univ-iff.md) | 137 | `result-track:f7e4f0fe0ce0ecd29e4d7ca7548d0a8edd025b81bf8dcfd07bc4a9e4d0d949b3` |
| 11 | `theorem` | [isMaxOn_univ_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-univ-iff.md) | 140 | `result-track:ee6b1db3239aee88feb9b21b23f8f361fb62e78cb1b5bd5d18dab2857a81827b` |
| 12 | `theorem` | [IsMinFilter.tendsto_principal_Ici](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-tendsto-principal-ici.md) | 143 | `result-track:f2091af788fb50b822c13fe2c9c008d375007e2fd66e892bc3ed378c49659d9c` |
| 13 | `theorem` | [IsMaxFilter.tendsto_principal_Iic](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-tendsto-principal-iic.md) | 146 | `result-track:6fceb292df6c82eab4eadc96ad4a6629bd232ec298c04d165ecfe29d1656cf22` |
| 14 | `theorem` | [IsMinFilter.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-isextr.md) | 152 | `result-track:a537047af12d149bb69a34b208ff286337e1444e66ce28332071cd177cf009b8` |
| 15 | `theorem` | [IsMaxFilter.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-isextr.md) | 155 | `result-track:561c0267c04c4301e2784ed7117c426203789d6b3a42fd76b1fd3a11cf48a509` |
| 16 | `theorem` | [IsMinOn.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-isextr.md) | 158 | `result-track:f59900c330884891b947607ba710b295a3f13caf28bf6b5fec701832fdc660bc` |
| 17 | `theorem` | [IsMaxOn.isExtr](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-isextr.md) | 161 | `result-track:0da90574b3697a7da5b79d04f7c61e619ffde7ea9fa7c0d3690b9580fa5990a8` |
| 18 | `theorem` | [isMinFilter_const](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-const.md) | 167 | `result-track:5e84c41c941ad1a5ac0c62392ec20a04c4e512ed9e6f18b951c226f198ba3c42` |
| 19 | `theorem` | [isMaxFilter_const](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-const.md) | 170 | `result-track:b4807483ac633d8a570f5dc6b286b653ff84dd9bf0ba241d5eb73ae7629e4444` |
| 20 | `theorem` | [isExtrFilter_const](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-const.md) | 173 | `result-track:3066782935f90410d0d38c6dece1a609aa5cbd75919f6108955da8db99ab0e53` |
| 21 | `theorem` | [isMinOn_const](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-const.md) | 176 | `result-track:3482ce48435b745a93c9fa4447f167178f307a3249ffc82aa7a72055e9e0bfb9` |
| 22 | `theorem` | [isMaxOn_const](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-const.md) | 179 | `result-track:e43dfc44e3706fe58272fc764beb5531e82b0431995f60087fa50e88ebd1731d` |
| 23 | `theorem` | [isExtrOn_const](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-const.md) | 182 | `result-track:431fda06059b06c9258bd985ce031db74c4d2094e7e38b67854620f20a5adbfd` |
| 24 | `theorem` | [isMinFilter_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-dual-iff.md) | 190 | `result-track:c999971d6dc42b7167975a85bf79db60b4ce8132ef42d7f6bdf5e889b042e8a6` |
| 25 | `theorem` | [isMaxFilter_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-dual-iff.md) | 193 | `result-track:00c769df7347b834a783c5b8889929126ba84bcaddaca9a0cbd563ba4ff10277` |
| 26 | `theorem` | [isExtrFilter_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-dual-iff.md) | 196 | `result-track:3f23462ef3587b68ed5a8b54be3c276231647bb658cd029d5b4fc2aec3f36b43` |
| 27 | `theorem` | [isMinOn_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-dual-iff.md) | 205 | `result-track:a40a5ab22f7114968a59fb32d6a2979d042028f09ae3168b1bec901f02747870` |
| 28 | `theorem` | [isMaxOn_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-dual-iff.md) | 208 | `result-track:eff3310e7c969fa4b52383cd7adb06f5b53086caed5dfabda4be6f9e784ade8d` |
| 29 | `theorem` | [isExtrOn_dual_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-dual-iff.md) | 211 | `result-track:7715c552d0b154acd2151fa36e0a68bb9dc73540c85ac107f18691fe72f3575c` |
| 30 | `theorem` | [IsMinFilter.filter_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-filter-mono.md) | 223 | `result-track:5163fee2a68f392d1a23100df7a46d0b80f71627551f2c94088398475ad98370` |
| 31 | `theorem` | [IsMaxFilter.filter_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-filter-mono.md) | 226 | `result-track:1b37a35af2c476e0d933645d0edd2b652091fbf199b0b09046e09f285dee8809` |
| 32 | `theorem` | [IsExtrFilter.filter_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-filter-mono.md) | 229 | `result-track:11d42fa93d354f95e89efaf2040cf7f83d9491023e8f456ed7683d071555e118` |
| 33 | `theorem` | [IsMinFilter.filter_inf](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-filter-inf.md) | 232 | `result-track:c11309e97a3557070a645fbb509e5d64fc4a776bb00b4492c848d3f77b0b9b9e` |
| 34 | `theorem` | [IsMaxFilter.filter_inf](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-filter-inf.md) | 235 | `result-track:9d3564106cb50ec2b3fdb1ae8bc18d682151cbff5bb0b3f53862aac8f919b94c` |
| 35 | `theorem` | [IsExtrFilter.filter_inf](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-filter-inf.md) | 238 | `result-track:71597ca626231b150d8bf5a7cd04b83714555a082708c6cb0b60472259841e44` |
| 36 | `theorem` | [IsMinOn.on_subset](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-on-subset.md) | 241 | `result-track:887a8824bb60fcdcd4016d194c192ebbdf9b041ae4af95a10714f9a858a11644` |
| 37 | `theorem` | [IsMaxOn.on_subset](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-on-subset.md) | 244 | `result-track:7eefca01746cbf5180775dac740d62a3da19646db4829c92015214d06b9f787a` |
| 38 | `theorem` | [IsExtrOn.on_subset](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-on-subset.md) | 247 | `result-track:c4de7253e0a091827a4206165b820d89e764d4a407208cdaebcfe763fe156005` |
| 39 | `theorem` | [IsMinOn.inter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-inter.md) | 250 | `result-track:9fbf4c67d598b5f96650a49f6aca2ea06a5cbf27c94c8afebf4594e81ad39fdf` |
| 40 | `theorem` | [IsMaxOn.inter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-inter.md) | 253 | `result-track:7db63c66892738fb16485271324c8f0ba272656c734970f432bb7ebb7b8cdfef` |
| 41 | `theorem` | [IsExtrOn.inter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-inter.md) | 256 | `result-track:33315bd71300096b84a990b9eec2723632db8f2908adf094aa7c169dfb0dadf0` |
| 42 | `theorem` | [IsMinFilter.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-comp-mono.md) | 262 | `result-track:2c14d9495bf17d199a2b11a3521d0a23bb4954c3231e24c851d2b1d31e0854e4` |
| 43 | `theorem` | [IsMaxFilter.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-comp-mono.md) | 266 | `result-track:f84cbb309b396c3f80523ce3a33e99450834c74a2c8f191cd0058e13f113628d` |
| 44 | `theorem` | [IsExtrFilter.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-comp-mono.md) | 270 | `result-track:2bc5fc1091e35fc7162fb302b486deea5592d8e039c0550328891ce3e61b3a88` |
| 45 | `theorem` | [IsMinFilter.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-comp-antitone.md) | 274 | `result-track:e1ebc7ffaf95d33439e1b4b1f33a9ddf548518ccd3adde01cf36888b4383a3ed` |
| 46 | `theorem` | [IsMaxFilter.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-comp-antitone.md) | 278 | `result-track:3c943749ad5369288dab058d0fc42b3d47e4b5300a359c0e95374e2a41958fac` |
| 47 | `theorem` | [IsExtrFilter.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-comp-antitone.md) | 282 | `result-track:899906309a8c5d3e938469c34dcc6d132550e5814af1b99179e5e3a09c7918e5` |
| 48 | `theorem` | [IsMinOn.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-comp-mono.md) | 286 | `result-track:95bca192c23edb2825d89b66ad4af8c2ab645b5318cdc88239ae5c14a322fedd` |
| 49 | `theorem` | [IsMaxOn.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-comp-mono.md) | 290 | `result-track:0eb6ba088bdafa486165ba4368ebda6957af390b9915631af1b3a714f524e9de` |
| 50 | `theorem` | [IsExtrOn.comp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-comp-mono.md) | 294 | `result-track:ba6dbcb1b16c98886f55c556d3cdd5d782573f6af37c5977d98f566f6feae1d6` |
| 51 | `theorem` | [IsMinOn.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-comp-antitone.md) | 298 | `result-track:3e9302e5ba8ae962af08c9b762a1decfebe1ae8385e3fc30f66da958098e39cf` |
| 52 | `theorem` | [IsMaxOn.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-comp-antitone.md) | 302 | `result-track:10570e2a9bc1c76b7f2b9871450e38a94b38742cae785824fe9adfe0d8a2ef02` |
| 53 | `theorem` | [IsExtrOn.comp_antitone](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-comp-antitone.md) | 306 | `result-track:f051a95539c2bb72692a12fd597817e41b1092e8f9af001237779350cfbd1157` |
| 54 | `theorem` | [IsMinFilter.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-bicomp-mono.md) | 310 | `result-track:0aef7eb8624c3e439c7ef3791b589e2427c95851ef3bbb07b0a05e57e93f0806` |
| 55 | `theorem` | [IsMaxFilter.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-bicomp-mono.md) | 315 | `result-track:3aa66a8d2fff26503c687e10b112260e4a89e5834a1173fc33939d315bfe047b` |
| 56 | `theorem` | [IsMinOn.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-bicomp-mono.md) | 321 | `result-track:c1b37d9fc66bd137af3f56c5aa623c0680010f1a0f2edcfb45f785eacc8b73ea` |
| 57 | `theorem` | [IsMaxOn.bicomp_mono](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-bicomp-mono.md) | 326 | `result-track:515381ea53e69b268a2d32f563416b5f5c9378d8e7cb31f59edb60b454856184` |
| 58 | `theorem` | [IsMinFilter.comp_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-comp-tendsto.md) | 334 | `result-track:560a17014f88339094a10f02d4636e8537867350dd2c37a48187f81e6eb89e1d` |
| 59 | `theorem` | [IsMaxFilter.comp_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-comp-tendsto.md) | 338 | `result-track:1a316f41311d0da729cb620f1f01c6f43f46a94f3c1379ff884281d52abb118d` |
| 60 | `theorem` | [IsExtrFilter.comp_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-comp-tendsto.md) | 342 | `result-track:80eb530fccaf1a6b9faedd817a3361abd47a6cf4c06f2096a527b18cf2e3f4e4` |
| 61 | `theorem` | [IsMinOn.on_preimage](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-on-preimage.md) | 346 | `result-track:fc7c929f4541aa16f71126c5d3bce9eef9abd0e2ca49345bb73e1922a3166399` |
| 62 | `theorem` | [IsMaxOn.on_preimage](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-on-preimage.md) | 350 | `result-track:6621ae248ca520fb79d8c321d2c0e0b7df7b4a7aa2ca6d5fc8d70455f2001727` |
| 63 | `theorem` | [IsExtrOn.on_preimage](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-on-preimage.md) | 354 | `result-track:21bfefa0d0f390b167f5c8946a96d7ef316fd7d3c1cda1b4f78e6ccb654d740d` |
| 64 | `theorem` | [IsMinOn.comp_mapsTo](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-comp-mapsto.md) | 358 | `result-track:67119efd7b816f9e09cdf382ea15876926283244a49767244466bd95aa1b75ec` |
| 65 | `theorem` | [IsMaxOn.comp_mapsTo](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-comp-mapsto.md) | 362 | `result-track:20178fe07076a811498c845b26b861dc20bf8385948a7ae07799a5d69410b645` |
| 66 | `theorem` | [IsExtrOn.comp_mapsTo](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-comp-mapsto.md) | 366 | `result-track:6d54ba716319925f4dfb54243274bb4c2c0173f4d4f90b8101632d421051262f` |
| 67 | `theorem` | [IsMinFilter.add](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-add.md) | 380 | `result-track:cc82cc5215e91a06c292e2a3ba7c3259be84abd1a048d7117ac2856eb1dd1e04` |
| 68 | `theorem` | [IsMaxFilter.add](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-add.md) | 385 | `result-track:04e737000d9b483a8bedcf03793ee194f8613abf62ad7443a698b02e07edeb91` |
| 69 | `theorem` | [IsMinOn.add](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-add.md) | 390 | `result-track:e991cb09d3aee1b6ef5d70468c0f7128ee6638a5941f1656c5ec38e53f86f96d` |
| 70 | `theorem` | [IsMaxOn.add](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-add.md) | 393 | `result-track:e75b10faad1654461c5faa7a7500d2c49c59df842c0f48e8bc532260c70e00b5` |
| 71 | `theorem` | [IsMinFilter.neg](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-neg.md) | 406 | `result-track:1a5e4db48e08155f39acfdd7c88c544fd079aee6bb24ab88dca99691e1f1c6ab` |
| 72 | `theorem` | [IsMaxFilter.neg](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-neg.md) | 409 | `result-track:6d0c4d8f50bfc9369c947ad7deadeda61b69dcb32c8869a341f2b41ce9732cdc` |
| 73 | `theorem` | [IsExtrFilter.neg](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-neg.md) | 412 | `result-track:2b7f23b5528516c4ed77af8a72a6736486d94fefdb3793f00be26b764afa349f` |
| 74 | `theorem` | [IsMinOn.neg](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-neg.md) | 415 | `result-track:c116b406646cb9b10b28ddc34d869c77492527e08234065aabb39c91b822ba43` |
| 75 | `theorem` | [IsMaxOn.neg](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-neg.md) | 418 | `result-track:dc66117d121cd10b2f08aa78230cf1970d9cde87fb5af6d225857d4b2ab639bb` |
| 76 | `theorem` | [IsExtrOn.neg](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextron-neg.md) | 421 | `result-track:3fee35685fa1fa41c0f9036f92b770716c884a123e841d07233dd24049bdcd26` |
| 77 | `theorem` | [IsMinFilter.sub](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-sub.md) | 424 | `result-track:ddd94ba86f4fd37c32a806ae8b11e02d3b0bb655ff6256a500c8e6b5bcd8927a` |
| 78 | `theorem` | [IsMaxFilter.sub](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-sub.md) | 427 | `result-track:c77e8995700340617956dec179f513f056c8522acee0661d57554dbf40f87a06` |
| 79 | `theorem` | [IsMinOn.sub](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-sub.md) | 430 | `result-track:92de3cd9ff91e6d570da2a7d5a0ce4a0c905826b19ae018268f8e0ba333aed63` |
| 80 | `theorem` | [IsMaxOn.sub](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-sub.md) | 434 | `result-track:7f5addd30b02e3462dbb64c5d96ab61a3d49191b1f98ecfa7881d14c324f978d` |
| 81 | `theorem` | [IsMinFilter.sup](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-sup.md) | 447 | `result-track:485b4fd6a13a5dad4699a1172fa282634065dd17070b6ce4bd428a5f84d85c53` |
| 82 | `theorem` | [IsMaxFilter.sup](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-sup.md) | 452 | `result-track:a389addd1e33c027264bd920521069e874ccb12ec3b398fa6fd78d3f27430d4a` |
| 83 | `theorem` | [IsMinOn.sup](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-sup.md) | 457 | `result-track:4217247bf497d93d6eaddb8d9eabf1c92fa15d7facd35f6fe0eef3c93039a11e` |
| 84 | `theorem` | [IsMaxOn.sup](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-sup.md) | 460 | `result-track:8ce0f65574a1435702f9918c5a9ff4085b3156fcfd3648bdc24b2813c0ca65f3` |
| 85 | `theorem` | [IsMinFilter.inf](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-inf.md) | 469 | `result-track:b5429150ae62af148822cd30a83bf36cf81b1303c803e292cf02fa257b9258d9` |
| 86 | `theorem` | [IsMaxFilter.inf](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-inf.md) | 474 | `result-track:7e50017016325e6539a49eb7c19cd05ac4ef946469b2e3a53cedbfa4eb04806f` |
| 87 | `theorem` | [IsMinOn.inf](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-inf.md) | 479 | `result-track:f0d41cca4ddaa1c1fa0a858a45dfb7547904dbc5f56d3c70a0fdca58c3b3167a` |
| 88 | `theorem` | [IsMaxOn.inf](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-inf.md) | 482 | `result-track:99624f48c9d0184dfe2207a711714f4b28118b62a0359540d85a4c0a903d9cf1` |
| 89 | `theorem` | [IsMinFilter.min](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-min.md) | 494 | `result-track:fccf8b08946ca3b3abf5f359b812052a677dc1dd3780c81d7bc73549106f2bff` |
| 90 | `theorem` | [IsMaxFilter.min](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-min.md) | 499 | `result-track:181db7ca6cf2cfd55ae252d1c72bf75544a328ae20ccff7db25346613f98ffba` |
| 91 | `theorem` | [IsMinOn.min](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-min.md) | 504 | `result-track:b467e985361d40535c84cf261a6713d979356f269cf2eeb65777b35c364959fb` |
| 92 | `theorem` | [IsMaxOn.min](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-min.md) | 508 | `result-track:20ad9dbc04bb911ab43a3b62d9befd5b0374fd2b9bb3a90752a6e56bca7f8b39` |
| 93 | `theorem` | [IsMinFilter.max](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-max.md) | 512 | `result-track:379de07dfed605d50e362148995a8201541dbc2d1519bd027abfe762ebfa6566` |
| 94 | `theorem` | [IsMaxFilter.max](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-max.md) | 517 | `result-track:a2143ba9f0feec7b3e4f7ffb6aba37bbedded89f05692a9dee605ddf8f9b9c31` |
| 95 | `theorem` | [IsMinOn.max](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-max.md) | 522 | `result-track:fff5487b98c233dbb434c958ace140d1c465b3280d60cf4430b217e3c81d95d3` |
| 96 | `theorem` | [IsMaxOn.max](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-max.md) | 526 | `result-track:4ea90d7ddb3d9e15d1926c61cc8ae880704fe3ff939a59780389db82a64e790d` |
| 97 | `theorem` | [Filter.EventuallyLE.isMaxFilter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/filter-eventuallyle-ismaxfilter.md) | 537 | `result-track:d427a5b0e04b46c12fe37c8f96ba170b42a14e8b392c70f45fef5efa9563a66f` |
| 98 | `theorem` | [IsMaxFilter.congr](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxfilter-congr.md) | 544 | `result-track:50695801425593635389ccfc04a45b0a043fcd2cd433f17c8a51d7267d995b01` |
| 99 | `theorem` | [Filter.EventuallyEq.isMaxFilter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/filter-eventuallyeq-ismaxfilter-iff.md) | 548 | `result-track:31fcaa771f577be39e1e3d758c7a21881c56218595ef6fdc170d47c43982fe72` |
| 100 | `theorem` | [Filter.EventuallyLE.isMinFilter](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/filter-eventuallyle-isminfilter.md) | 552 | `result-track:d0596f9b009a7c0a85fff545e84add72544d4d28624084cc74b94ee9dac85a24` |
| 101 | `theorem` | [IsMinFilter.congr](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminfilter-congr.md) | 557 | `result-track:f1584582b0a9528ef82866e8a29137186f15efcd7bc826e10cd68508bf18d616` |
| 102 | `theorem` | [Filter.EventuallyEq.isMinFilter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/filter-eventuallyeq-isminfilter-iff.md) | 561 | `result-track:7c34b1388f6f5814fa20111eae1f682b2314f974c83526c54abff6379cade1b3` |
| 103 | `theorem` | [IsExtrFilter.congr](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isextrfilter-congr.md) | 565 | `result-track:b1ec5a8f10ff92a212cfcaefc398d59af7ed4206d1992492b629d21b00ae0f7a` |
| 104 | `theorem` | [Filter.EventuallyEq.isExtrFilter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/filter-eventuallyeq-isextrfilter-iff.md) | 570 | `result-track:6c06438453745a38a9de40fcc5e7ea2da9544dbbb4909bdc42d0534672d83ff2` |
| 105 | `theorem` | [IsMaxOn.iSup_eq](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/ismaxon-isup-eq.md) | 583 | `result-track:9cc0276244ffc31b8f3b9140dd9c7cf150e3af4f0057976234b3350c164f677d` |
| 106 | `theorem` | [IsMinOn.iInf_eq](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/isminon-iinf-eq.md) | 587 | `result-track:8ecc3efa4f7bc2e73026ba2c6925ee1820c8eb900f49e7a93cf20966e305e07b` |
| 107 | `theorem` | [sup_eq_of_isMaxOn](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/sup-eq-of-ismaxon.md) | 598 | `result-track:a104774f89f4122c51925c920a314b7d17f6e5ec7711abbe56d101a1c62acd4d` |
| 108 | `theorem` | [sup_eq_of_max](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/sup-eq-of-max.md) | 601 | `result-track:a914688d2889dfe585faa1f66153db99b2e86edd4d513f15267c06a30cd023d3` |
| 109 | `theorem` | [inf_eq_of_isMinOn](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/inf-eq-of-isminon.md) | 614 | `result-track:cc043b3b5cabfc20debd1466b3d9c89dd6d6f4dd42dacd7d7462dccf7149cacc` |
| 110 | `theorem` | [inf_eq_of_min](../../../../../GeneralTopology/GeneralitiesInTopology/ExtrNamespacedSupEqOfIsMaxOn.lean/declarations/inf-eq-of-min.md) | 617 | `result-track:6c17580ef0fd3979180efc90fb38ec108e6f9cd0a48066223a5e25353ee980a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ac33f34862117035aad215c0060731920ffb82e8a87e908dbfef4b23a650561 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
