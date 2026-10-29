# Verification target: Order Omega Complete Partial Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d5ca006de8845a77665832a71a6d7b8914927f7",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d5ca006de8845a77665832a71a6d7b8914927f7`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/bind-source-edition-2.md) | 71 | `declaration-track:c9f5a23778047d3edc79f5e1902ca881b712bb00855bc0342c49f882a158859f` |
| 2 | `def` | [Chain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/chain.md) | 88 | `declaration-track:44b3608fb33c7be80190b77aceb3a2f91e4be8e2ab069cf14e1358f47aef2f18` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-12.md) | 97 | `declaration-track:f96c18c12b6c118368a2c5f500c0e30cb8b5f57bef9c913fb7aeb51cebd6970e` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-9.md) | 98 | `declaration-track:8626024faaff2cb9166cb57b7aef7cd87e3ca8b6c32fcbc6bc3b51d0132b2e21` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-5.md) | 100 | `declaration-track:734718b07772183a7f148cf8362e3cbdae802ef16a3a3360d717ffa789649daa` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:42c52aba9d2a4c54c6efc8be0ba6885ab4b3f776b4ce755dd138675bd553f96c` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance.md) | 110 | `declaration-track:11f140e34df2dd4a50e9270da7b8fcbcfe16ace78bb3538450d7cbb6444a3ae6` |
| 8 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/map.md) | 115 | `declaration-track:8c2d66339ef90ba7a41ce4aaf917690fb51e3cf6749b3ec04f35c9c2329b98c2` |
| 9 | `theorem` | [map_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/map-coe.md) | 119 | `result-track:9cc190dc908d09efa99cd60ebf968ae68e926f39e3175c323c62a24ef6e6e1d8` |
| 10 | `theorem` | [mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/mem-map.md) | 124 | `result-track:b54117ab13a57a3fd2c583001a4f4c9fa7c46bca7ae82f02561e4358993bf6b5` |
| 11 | `theorem` | [exists_of_mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/exists-of-mem-map.md) | 128 | `result-track:755ea5a215cc3deb16e18b632d8ada612f39d463d55dea795f26b7915be4cb6d` |
| 12 | `theorem` | [mem_map_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/mem-map-iff.md) | 133 | `result-track:e18dd9ed0f02ec891e0cc046340feecae6fcff5fc4352d5b29889ed2d417d715` |
| 13 | `theorem` | [map_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/map-id.md) | 141 | `result-track:385017b92d24af585c9fe5e95d9d324055b8d25434aed783a28235bfb69a3692` |
| 14 | `theorem` | [map_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/map-comp.md) | 145 | `result-track:e8f8050fc05269870cc7df7779e13e7bd616f23a6caf61ed6f4a08e1e6c19970` |
| 15 | `theorem` | [map_le_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/map-le-map.md) | 150 | `result-track:304743f49e88c3189b98fd2453d6b13be673f935043b7f5c4fd0843f624380f8` |
| 16 | `def` | [zip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/zip.md) | 158 | `declaration-track:8adfc6e77afc2fac22860fc62f0b34bb812ae24ac3fab748c32607681b7be4b5` |
| 17 | `theorem` | [zip_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/zip-coe.md) | 162 | `result-track:7b44baf749660a8437c4761821195bfd7efd6c6c1f16e024d8f13e02ae7da4a9` |
| 18 | `class` | [OmegaCompletePartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/omegacompletepartialorder-source-edition-3.md) | 179 | `declaration-track:988d912dac7163d852d6e5c6c50b5443512fa056c52e90057e269873a380f71b` |
| 19 | `def` | [lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/lift.md) | 198 | `declaration-track:b801648ae2d010acd0ae2294615ef5b3114a43b0760eb8082bcca30955170120` |
| 20 | `theorem` | [le_ωSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/le-sup-of-le.md) | 206 | `result-track:7f9a96955ee6cef8418b10061696047400c28cf39f665d298404933e558abcd5` |
| 21 | `theorem` | [ωSup_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-total.md) | 210 | `result-track:609990e86ff1396b618a92343b14bfd2d244751108ca9af17818faff90cbce40` |
| 22 | `theorem` | [ωSup_le_ωSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-le-sup-of-le.md) | 221 | `result-track:0ca0c10c3ff0cc728c18dd9dddfb074a0f92021856ae951f85b5fd51cfca546d` |
| 23 | `theorem` | [ωSup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-le-iff.md) | 227 | `result-track:66ff98889366fcc158c70c16bdeeb5ee5e99cb3e755bce097cdf793a69d961f7` |
| 24 | `def` | [subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/subtype.md) | 237 | `declaration-track:70303cb0b1d4e74a0fb64489ab3a35b12012c8aa3bf448a5d75f697c56946d1d` |
| 25 | `def` | [Continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-source-edition-2.md) | 257 | `declaration-track:988e48c78a1a6fb1f2219996884506e87969c08d08a85d5d40808e9a9b42db67` |
| 26 | `def` | [Continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous.md) | 262 | `declaration-track:1a8426a77fb303ce8ae5919540d74ada38f127a07a9dbcfd69e06bc2eaa5864e` |
| 27 | `theorem` | [Continuous'.to_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-to-monotone.md) | 266 | `result-track:6efad767eba607648e9167d6bb44e597ef16da47ff1877852962169b268af557` |
| 28 | `theorem` | [Continuous.of_bundled](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-of-bundled.md) | 270 | `result-track:1aed265fb0d8c4687afd1bf75e15b2a44b8140a362682a39374a0664e9391803` |
| 29 | `theorem` | [Continuous.of_bundled'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-of-bundled-source-edition-2.md) | 275 | `result-track:ea674f88952fdf40b17f22ded15fd84294290fb97ee9d9fe01297c26f84e92cd` |
| 30 | `theorem` | [Continuous'.to_bundled](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-to-bundled.md) | 279 | `result-track:836a86561538f1f8294983d3d13596c446736c3b96ac2017260229ae26a03a82` |
| 31 | `theorem` | [continuous'_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-coe.md) | 284 | `result-track:ed1fe63210141b52f1f76df0f0a5a39eb87ef76e83baf4a5013c3eb520f00bda` |
| 32 | `theorem` | [continuous_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-id.md) | 290 | `result-track:da78f04b23af38ad46eb1a9dc5d5e840f3732b95e8bbcf702697be016e65f130` |
| 33 | `theorem` | [continuous_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-comp.md) | 293 | `result-track:b4672b2ff61bf8200ecb42907efb81adbedc55dcd4a2af937c39abca252fe421` |
| 34 | `theorem` | [id_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/id-continuous.md) | 298 | `result-track:8c4f1315008788f59af1f952a553bfb76444b3dc02b7a216958c02c65979a403` |
| 35 | `theorem` | [continuous_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-const.md) | 302 | `result-track:fe14248822ac4d3cb095bdb8aaa42a512f3a9d8c047143c5950104f50346cafc` |
| 36 | `theorem` | [const_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/const-continuous.md) | 306 | `result-track:43b531d6e5285a694ccfdb7bbafceb6aa7de2fe4807c4cf77fbdd728296513eb` |
| 37 | `theorem` | [eq_of_chain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/eq-of-chain.md) | 320 | `result-track:04c9ee1fc6d71092633e11e751d738661e4e2de24bf5fca11f3717a482702ccf` |
| 38 | `def` | [ωSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup.md) | 334 | `declaration-track:0a8979a51731a9aad2dadf5a3936991b73fa483c57516234c2531b1d8bbc110a` |
| 39 | `theorem` | [ωSup_eq_some](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-eq-some.md) | 338 | `result-track:460cbb63c3239f1812a60b64a02c9f8dd4d0e3a69edee0d5f88ebeb79a3f429c` |
| 40 | `theorem` | [ωSup_eq_none](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-eq-none.md) | 346 | `result-track:b4515794c4e7722ea5af6658c73f86ac4c574830ac3ef5959403c358046f472f` |
| 41 | `theorem` | [mem_chain_of_mem_ωSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/mem-chain-of-mem-sup.md) | 350 | `result-track:97bb394d7fd639ba9f406a4e019388d8e2e5db2e4431d219ae1b03af9a397f7b` |
| 42 | `instance` | [omegaCompletePartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/omegacompletepartialorder.md) | 359 | `declaration-track:3ca114b618d721d0f8fb6aafdf6c0dc1047a2eb6adc3a1433eb602736aa5600e` |
| 43 | `theorem` | [mem_ωSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/mem-sup.md) | 379 | `result-track:1bbaa4b9c6666ba6883f5c5ccf888cc39bf314370c7b170a6f1d1ebb4519998f` |
| 44 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-3.md) | 408 | `declaration-track:4a4679ad56692a2c18f80c8bc76534391cff53b1ee6d7019c50d153bb5f0c1a4` |
| 45 | `theorem` | [flip₁_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/flip-continuous.md) | 422 | `result-track:35d4d1600f94fc61e5639e5b8e6160ee4c07108060ed21334288768aaa173e4e` |
| 46 | `theorem` | [flip₂_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/flip-continuous-source-edition-2.md) | 427 | `result-track:fd06a8672a5604fe8c35dd640e4cc3b1c8bafa519d7c16c274519581b83efcf7` |
| 47 | `def` | [ωSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-source-edition-3.md) | 448 | `declaration-track:ae82c80754089a426a4df1118dfd9c36bba2490381e8f5ef480616a4c521a25f` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-11.md) | 455 | `declaration-track:cf4a3454d4c5b26c63788bd59b9b743a3621dda6b32af56ee49b18a58da98f6f` |
| 49 | `theorem` | [ωSup_zip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-zip.md) | 460 | `result-track:1672e9df730831ada01b77d777cc891a5907d477f5a947728c0c484cd68985b0` |
| 50 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-8.md) | 476 | `declaration-track:86130def660344d312644c7bf7c95274094f34cf364f29225fe5e137e12f3f59` |
| 51 | `theorem` | [sSup_continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/ssup-continuous.md) | 484 | `result-track:c79f827ecfb0881ac80822e0522db94d8311d275e60761b732dc8f74753e5d9d` |
| 52 | `theorem` | [iSup_continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/isup-continuous.md) | 493 | `result-track:cc27e763b17c62b0b0a72f3433bf769f1687d854f708e7b5ab07960c00680be9` |
| 53 | `theorem` | [sSup_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/ssup-continuous-source-edition-2.md) | 498 | `result-track:d3eab01c7c9d64b4f84602ddab92e6559022fbf97a15ab6caf024dfe1daf11c7` |
| 54 | `theorem` | [sup_continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-continuous.md) | 507 | `result-track:bb4c6795ac603c2eadc3368fbe6101148b0cbb281cc5d8c141275fba5b6d2927` |
| 55 | `theorem` | [top_continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/top-continuous.md) | 513 | `result-track:adc0e0fd0a3b741bbb24a5a1773439596cb529466319676571f382913c1199d3` |
| 56 | `theorem` | [bot_continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/bot-continuous.md) | 519 | `result-track:01fcb72ba21664ee84cc580cd174b35d75ac35315c40644ae80de848c47cf05f` |
| 57 | `theorem` | [inf_continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/inf-continuous-source-edition-2.md) | 530 | `result-track:f363005b6554fb943d8b9138d66b266cbffa69247e7f3803b61b6a21ae9395eb` |
| 58 | `theorem` | [inf_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/inf-continuous.md) | 539 | `result-track:f265ef69a5cc71e2c5b1d6565c917352bc61df42faee70cf118ad431742c8978` |
| 59 | `def` | [ωSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-source-edition-4.md) | 558 | `declaration-track:ee62931e9309dc29f139ca6e1e1880fefd125f0e546b154ac473ae2132295459` |
| 60 | `instance` | [omegaCompletePartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/omegacompletepartialorder-source-edition-2.md) | 565 | `declaration-track:8113bd7f28a3d5d3b5e65345efdcd3f02618368e151fa7ee08a7d6190edd91cf` |
| 61 | `structure` | [ContinuousHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuoushom.md) | 579 | `declaration-track:20c938d8a0f05659e9b3eb5e18b70da6ed2cbdf26641e3b8a285b5d746325682` |
| 62 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-10.md) | 588 | `declaration-track:caa39a29c09112a6e3f1f56b28c66f51a049bdae5ef3349b616f8e69ba851f48` |
| 63 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-7.md) | 596 | `declaration-track:85923ebbf16d319267757c6437088db46469f49b34026a5ed6a00ebdc4681ea5` |
| 64 | `theorem` | [toOrderHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/toorderhom-eq-coe.md) | 604 | `result-track:6ded72b05ffbd30f8426c4a982923f6bf0fe391af8211ee7f8f6ae168581dd33` |
| 65 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/coe-mk.md) | 606 | `result-track:6d56ee3476c08ca615f270b3f1a83e8e080d1a440c23836b27e32e6894011a55` |
| 66 | `theorem` | [coe_toOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/coe-toorderhom.md) | 607 | `result-track:e7c5a86ad782a095e57bf5b5a1df3a45b80445e467e15cac461bc3bfb582acd0` |
| 67 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/simps-apply.md) | 612 | `declaration-track:747c1c1a7a797a4e285869cc8cbc1a5855bafc933ca50d9e5dbbcc160af3f53c` |
| 68 | `theorem` | [congr_fun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/congr-fun.md) | 617 | `result-track:7f7a02ccf4eb0bb79b409ad7c6ec9b7cb403637360f0c79b6dc14a0cd0e570fd` |
| 69 | `theorem` | [congr_arg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/congr-arg.md) | 621 | `result-track:6b3eccbfe0443b21e4f3995278cef87f3a09e5ad2a4c30e063e8efefb7cf092c` |
| 70 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/monotone.md) | 625 | `result-track:7087ec6ad5df183e46b891444f1220b07c754e9b25fc094f5ee8c3f42cecd12d` |
| 71 | `theorem` | [apply_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/apply-mono.md) | 630 | `result-track:e832fca7f0e07e9a0ebccacfe4cd08b3f829df1981f2cb911d93716a8f5c51ee` |
| 72 | `theorem` | [ite_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/ite-continuous.md) | 634 | `result-track:84c286a7cffb6e4c7f29505af3cf66811efcaeffdc635a3a61ddd77c74c90412` |
| 73 | `theorem` | [ωSup_bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-bind.md) | 639 | `result-track:d5cd0eb2e1048c6ea274ec327bded08d2523f64d8a05b7ee523d5263a9e5ec21` |
| 74 | `theorem` | [bind_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/bind-continuous.md) | 667 | `result-track:5a3dce06e1b0efbf87027a82f19de3a1e32632216edf76521084454233a1623a` |
| 75 | `theorem` | [map_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/map-continuous.md) | 674 | `result-track:514acd013119b8d36c93d4783af1052bb895f25768fd54603195fe890a46673b` |
| 76 | `theorem` | [seq_continuous'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/seq-continuous.md) | 679 | `result-track:7a2e996c7ffa18d650167a1dbeda2e2a68b7b1018a620dc077d3932aa7381a82` |
| 77 | `theorem` | [continuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/continuous-source-edition-3.md) | 688 | `result-track:d38483c673b88ef440257177deba77f9d1c538d0645ad14cf6f74c4ba045c4d0` |
| 78 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/copy.md) | 696 | `declaration-track:4e41bab72ed3a1a811f054b71684cc6573a317a275364a4697ddf0ac9c4dcaf0` |
| 79 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/id.md) | 707 | `declaration-track:622c9ebff96813e6b7114ab59809136677771d7971d31728106e79f5d25a2ccc` |
| 80 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/comp.md) | 713 | `declaration-track:059e284dca4c749d175afbf0c8665734f1df967efa1034c6c883186610c8dbea` |
| 81 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/ext.md) | 718 | `result-track:545ae127d3b618173a3825564ebca7dd23c5034a6026d4584b140d8b209c2c98` |
| 82 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/coe-inj.md) | 721 | `result-track:b4d432fb066bde263f10f844faafb27731166fc6994d05fc98856798aa48ca55` |
| 83 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/comp-id.md) | 726 | `result-track:f0fe5659dabe281a21358ebbacb93e3a5cdd8730514425ca370c4cb7f1b8d8b6` |
| 84 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/id-comp.md) | 730 | `result-track:0a0d0db8490d507cecd3a9255c38b7e640c1ff2473b46af8ec546f4f7f66a3d1` |
| 85 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/comp-assoc.md) | 734 | `result-track:f9100fa5fbb0b45a1228c6bf55d0c342c7163a46cba61bba077e75da0ee69bb1` |
| 86 | `theorem` | [coe_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/coe-apply.md) | 739 | `result-track:c2a30cfcab5daa2854d1f7fd8ea17fbf739fdf7f4e50542cbba8fdd8c6c55e38` |
| 87 | `def` | [const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/const.md) | 745 | `declaration-track:a8af9fe4331350db49c95e6c797ffad14238bfb2b82bec106d0e76cd48a8a86f` |
| 88 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-4.md) | 749 | `declaration-track:58c6b6eedad35495f51c4ff96b02f751bbba582bc2a2cf10273cc5884d854ab9` |
| 89 | `def` | [toMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/tomono.md) | 754 | `declaration-track:22a38380548d6052ddb6b64a4afd1861032ffb010ee31d8dcb0f1f0d54c7185c` |
| 90 | `theorem` | [forall_forall_merge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/forall-forall-merge-source-edition-2.md) | 766 | `result-track:82012169c9fc8c31cba875484bbf37fa2e5e431b9ea19379bd3acae268cc1a43` |
| 91 | `theorem` | [forall_forall_merge'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/forall-forall-merge.md) | 780 | `result-track:726cb3bc84c40a8d94e65865a43ae8582ab2e2b3d64fe8d2bdfb0d938c30bd6d` |
| 92 | `def` | [ωSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-source-edition-2.md) | 788 | `declaration-track:2728838617827aea7387d23c704d684131e059dfbc14ce6be0149e330dab8845` |
| 93 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/instance-source-edition-6.md) | 798 | `declaration-track:7ceb8f76c2834b7fa5a1eaa7b2681b30811ab98587640c8a95a2142e390d12fa` |
| 94 | `def` | [apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/apply.md) | 806 | `declaration-track:f1e987f8a0f01f7d60c0b0cb643e5c0455bcb7480fb21733f52a2a36e8cf4de2` |
| 95 | `theorem` | [ωSup_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-def.md) | 836 | `result-track:b73fea0688def74672f92ba69bc7fc4a609ca2cc6aea9296cfb020988f1367f1` |
| 96 | `theorem` | [ωSup_apply_ωSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/sup-apply-sup.md) | 840 | `result-track:634f44d83a91af48551267ce41a188472e2b20b1016488ed1c137dc7468300bc` |
| 97 | `def` | [flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/flip.md) | 846 | `declaration-track:b862c16047dcdcab8fc25a5dd051dd9c50f54ffa7846bea226fd0bd0ea066537` |
| 98 | `def` | [bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/bind.md) | 855 | `declaration-track:0ec9f1094eb6af55ccfb074fbb77548c055884986cfac7956a120b5d58fc8fa1` |
| 99 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/map-source-edition-2.md) | 864 | `declaration-track:caa18b40255acd21f841a1f33c8ed3469cea50953f36a0b1c680f01d2e91830a` |
| 100 | `def` | [seq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderOmegaCompletePartialOrder.lean/declarations/seq.md) | 874 | `declaration-track:287965864ec200907b4fd76f2082a56289ba033a3551d03cf6a5116945e15351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bec8247e1145211ddd93ecd7d9db9f2edfdf760e24e172ec3d7eb4fc78639d9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
