# Verification target: Order Lattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff4c0a37cdb2b44c9fc40dc7c61fc086d89dc258",
  "lexical_observation_count": 158,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff4c0a37cdb2b44c9fc40dc7c61fc086d89dc258`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.GRewrite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-source-edition-2.md) | 69 | `declaration-track:4ded4cada2520ce5ed4ac4a545a977a9025b7cc71b123cf1ff39222f0fe3b9e0` |
| 2 | `class` | [SemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticeinf-source-edition-2.md) | 83 | `declaration-track:17de0b0bb19e28a06fdfadbc94baf04b0e6a9c056bb785b97f3b313d51495441` |
| 3 | `instance` | [SemilatticeSup.toMax](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-tomax.md) | 96 | `declaration-track:a7c252b60e4a83e46b6780f6eacfcbcea3a81b735f82dc8905764ef17a5044a0` |
| 4 | `def` | [SemilatticeSup.mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-mk.md) | 106 | `declaration-track:0f75745251c9d1ad4fcf84ebd28128920455638f1a955fff48c418750e0986bb` |
| 5 | `def` | [SemilatticeInf.mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticeinf-mk.md) | 125 | `declaration-track:908719568f2f09016845045efed13b042d41c9280415712c6a6356a80e51d7a9` |
| 6 | `theorem` | [le_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-sup-left.md) | 142 | `result-track:882603e732f6a0f1049780bf1ee5343eb399fb469dcd763e652fb2e36ec1f2db` |
| 7 | `theorem` | [le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-sup-right.md) | 146 | `result-track:1a18850819e63169f9913b04236441f2635cc3c1dc3f7605a9de3950b1bd11d4` |
| 8 | `theorem` | [sup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-le.md) | 150 | `result-track:4d42699b95719dd5fdfcd5a02bbcdb66e00e3c0ba85c20b4849b1fc05864170e` |
| 9 | `theorem` | [le_sup_of_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-sup-of-le-left.md) | 154 | `result-track:55ac72c0582e6b67f4d16f51a2486f0c89cc75b6861da304580275404a8683ca` |
| 10 | `theorem` | [le_sup_of_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-sup-of-le-right.md) | 158 | `result-track:8f58fb6c7145ae6fc0eadeba1e9e08f33ace35e2b28cb3194bd5ed45c7407364` |
| 11 | `theorem` | [lt_sup_of_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lt-sup-of-lt-left.md) | 162 | `result-track:a366e5c0472a9dc079249aead6d733766d9f50f0c6a74dd6ee5d4b38c782ad65` |
| 12 | `theorem` | [lt_sup_of_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lt-sup-of-lt-right.md) | 166 | `result-track:b815bfd65081de09262c9861bbd3288e063c8b96393c4e7c8f323f2a62c027d7` |
| 13 | `theorem` | [sup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-le-iff.md) | 170 | `result-track:c5c9ab7bb5485eae47083aae94fbb5b4762f2ea6c84d951b1d46a2f8c09e3d28` |
| 14 | `theorem` | [sup_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-left.md) | 175 | `result-track:9190d70e1cfa38bb913f89816dd4e58b3875bfc5b6d51381391710733956a4b1` |
| 15 | `theorem` | [sup_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-right.md) | 179 | `result-track:ce24ef55155ff28fd2c252c9c3f9c29acf00edb4b2e4739d37fcce2566b96974` |
| 16 | `theorem` | [left_eq_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/left-eq-sup.md) | 183 | `result-track:98690038309a445bc914eedd9c4be505ce2b5a3ecb90dc068cf797bf1bf0166d` |
| 17 | `theorem` | [right_eq_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/right-eq-sup.md) | 187 | `result-track:0772c60e8dd999ff840fd4da05893e2a848a40f15b5465851643ea18abc4919c` |
| 18 | `theorem` | [left_lt_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/left-lt-sup.md) | 199 | `result-track:504226ce1c685fcb7950da547048106dbe8d1b62ddd9e1faab030bd7cfb601af` |
| 19 | `theorem` | [right_lt_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/right-lt-sup.md) | 203 | `result-track:abfb58d53ebe9dc1bd19ce4a61c64e495c7503008b5377caf6d606902703165c` |
| 20 | `theorem` | [left_or_right_lt_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/left-or-right-lt-sup.md) | 207 | `result-track:0e89d9497bebcc8ea8dd38f12b9445e4f687c4afb75f85dc08bfd431e4b95d33` |
| 21 | `theorem` | [le_iff_exists_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-iff-exists-sup.md) | 211 | `result-track:9735bdf4ff3721d4ffda3892d499cca6268823ddcf81e8f4954881215df9a767` |
| 22 | `theorem` | [sup_le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-le-sup.md) | 219 | `result-track:786f727292db876179863577de79df0cfd653232d0197567d05558b4b4b0c528` |
| 23 | `theorem` | [sup_le_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-le-sup-left.md) | 226 | `result-track:48f456c6f90f82062d04839365de599483f0b87a21e47b9172db220540ff45a5` |
| 24 | `theorem` | [sup_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-le-sup-right.md) | 230 | `result-track:cd27b7f867ef2e54a210c1efdbe77cdcf0dba22f7a4c654700cc55ee96e3e106` |
| 25 | `theorem` | [sup_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-idem.md) | 234 | `result-track:96f066284f9259fe4c859735c10a1fdbe2859526948d13d80bdca004c4bff4d8` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-12.md) | 237 | `declaration-track:daf2a241ffbad78c5f7788a2698df3c6c3ad1f7ced28ac5529a520a6584931e4` |
| 27 | `theorem` | [sup_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-comm.md) | 240 | `result-track:df9147656cfb1dbe3e54ed500b69b0add5c7e11e7707185ddd1ae994020ae91a` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-13.md) | 243 | `declaration-track:fe612eb8a1930ce4c03f2795a5065b25f4a5dfff3945403316430bd2cfbeedea` |
| 29 | `theorem` | [sup_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-assoc.md) | 246 | `result-track:65d7b6fea6b5f015413a67da3851ae551741562714786fbb103121ac9f31ee27` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-5.md) | 250 | `declaration-track:9525893db09e616e21be4ed0df0525e5770814989cc75666aa33a96c4a531e9b` |
| 31 | `theorem` | [sup_left_right_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-left-right-swap.md) | 253 | `result-track:f82bc13b6c02e534513f87562fe08f02cb38b2d25af27b5a261234c5d11f4f1c` |
| 32 | `theorem` | [sup_left_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-left-idem.md) | 257 | `result-track:600981d810163b4167343d2e64d4411055dcac89dcbc012429e0a47d64696aad` |
| 33 | `theorem` | [sup_right_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-right-idem.md) | 260 | `result-track:3f932f3e773c0ba740e2ee73a85b91325772e38f8e7b0ddb91e9889d04cd5b2b` |
| 34 | `theorem` | [sup_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-left-comm.md) | 263 | `result-track:01d8b2fdfd1a008fc1d25b2ac2489e55f4490f9361604c62e203eefc90c833a1` |
| 35 | `theorem` | [sup_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-right-comm.md) | 267 | `result-track:b4158b703055c1619afd000c0503bdd21d5108855c89a5c0d9f95ecaed429c29` |
| 36 | `theorem` | [sup_sup_sup_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-sup-sup-comm.md) | 271 | `result-track:8b0554560e1eb29036f107915691e8cd8407141d020f2ce113fa55dcd1784ac0` |
| 37 | `theorem` | [sup_rotate](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-rotate-source-edition-2.md) | 275 | `result-track:958148d6a6ebf05081c200ca8aae3c96439ca14bc3ff60b6d2ea37425b89f141` |
| 38 | `theorem` | [sup_rotate'](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-rotate.md) | 279 | `result-track:30d8f8eb59dd736f67afdf1327557c11db4d6d1e897ede86a9ee8e32231ef521` |
| 39 | `theorem` | [sup_sup_distrib_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-sup-distrib-left.md) | 283 | `result-track:fe0a28c30db05a56b2f81801fe0a8cc4381d90558c2023108c5a26702f8a22a3` |
| 40 | `theorem` | [sup_sup_distrib_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-sup-distrib-right.md) | 287 | `result-track:299498e608e622f98687a183b4b7fd842c7c687ab1f6ae985705ee2e248ab69a` |
| 41 | `theorem` | [sup_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-congr-left.md) | 292 | `result-track:8f78ddd13cbffbd847b0fbacb59b482148c35fc9c1f3acef11ce440d05cb39d8` |
| 42 | `theorem` | [sup_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-congr-right.md) | 296 | `result-track:33e385ae10481689151049205abc4af9a491e123be261304b34df2ecdddcaea4` |
| 43 | `theorem` | [sup_eq_sup_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-sup-iff-left.md) | 300 | `result-track:39a8e8db5add8e6fb20c68bdc587a80ab43b5b57f71f65a339357a7fef322c29` |
| 44 | `theorem` | [sup_eq_sup_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-sup-iff-right.md) | 304 | `result-track:34af3a1f701284aa59c11250f1121e95b1c5606e46f38ec901ee51c4cf0e09cf` |
| 45 | `theorem` | [sup_eq_sup_mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-sup-mono-left.md) | 308 | `result-track:d11cdc3949cbf7965d18c2e8bd4c5210311329a4aab096f65d3054193ac7eb18` |
| 46 | `theorem` | [sup_eq_sup_mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-sup-mono-right.md) | 313 | `result-track:122a72e92ef38360ade611777a32597254d80cbf2ac0fa5c3f30c9c3d89c6c9e` |
| 47 | `theorem` | [Ne.lt_sup_or_lt_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/ne-lt-sup-or-lt-sup.md) | 318 | `result-track:72009700304cefa193744eb7315bcb0f53c16459899aae6a77beb1179e145fa0` |
| 48 | `theorem` | [ite_le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/ite-le-sup.md) | 322 | `result-track:ccd0ddba5f7437669d2de3ca17f80e1a895d961865728f7192af8378841a0cd4` |
| 49 | `theorem` | [SemilatticeSup.ext_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-ext-sup.md) | 326 | `result-track:80f9ccb68a7d972f0409edda8e118bafbfc135cadf07e30e3cd1c2f6f3bbccbe` |
| 50 | `theorem` | [SemilatticeSup.ext](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-ext.md) | 333 | `result-track:f5f91b142945205f271ba2f6cc8522afe12b029ce78c9c134d34a11035630d22` |
| 51 | `instance` | [OrderDual.instSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/orderdual-instsemilatticesup.md) | 343 | `declaration-track:fbe44abb6a63bcd217897347706182c738954d7ad8d01c0b6f4d7260a25e9ffa` |
| 52 | `theorem` | [SemilatticeSup.dual_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-dual-dual.md) | 350 | `result-track:00c9ce232205fcdbe7ebe5a4c88fd4af76bf08edb8d1ba781da6f08a9886961f` |
| 53 | `class` | [Lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lattice-source-edition-3.md) | 362 | `declaration-track:943e6ae54cfd7e1483fcacce8a8b58c8ae753014333d4907b640cbeec335d913` |
| 54 | `def` | [Lattice.mkDual](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lattice-mkdual.md) | 368 | `declaration-track:e979b9698e647f34809d6eaf55b1de23683d96db389f3d6947b1f612ed55256f` |
| 55 | `instance` | [OrderDual.instLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/orderdual-instlattice.md) | 376 | `declaration-track:8a0e21d6c7179f518b9834173170f67568598e8a24fbe34aabb3e543f8586dd0` |
| 56 | `theorem` | [semilatticeSup_mk'_partialOrder_eq_semilatticeInf_mk'_partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-mk-partialorder-eq-semilatticeinf-mk-partialorder.md) | 381 | `result-track:223df0b05dd56d0c5a044d4797ffb02a3d11507bf3e70f4559b59f3dfc289d5b` |
| 57 | `def` | [Lattice.mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lattice-mk.md) | 399 | `declaration-track:0ee74ed438b8b192eeff57044a0eddf056d11b6977adf36ddc6e3f3154edfe3d` |
| 58 | `theorem` | [inf_le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-le-sup.md) | 432 | `result-track:a3835e3b008b31cba18b977fd21ef055e55b5493f8105ab4c47c7f874ca17f31` |
| 59 | `theorem` | [sup_le_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-le-inf.md) | 435 | `result-track:3b78ff532c77bade7c9e0a39582ae53a2fc38f426197352bf33adc653c87d278` |
| 60 | `lemma` | [inf_eq_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-eq-sup.md) | 438 | `result-track:a309a4f6cc9591d09102e3993a044d671e173bce38d55468fbe81f3fa614684b` |
| 61 | `lemma` | [inf_lt_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-lt-sup.md) | 440 | `result-track:ebb4e384f122a576f7577e9fd25b3777522b80db5b39d4eb61d055feaa1f0592` |
| 62 | `lemma` | [inf_left_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-left-le-sup-right.md) | 443 | `result-track:69cbb5e9381e7d11d406c340bb47ac508a34e3bd3222d833b98f4857360d9dc3` |
| 63 | `lemma` | [inf_right_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-right-le-sup-right.md) | 446 | `result-track:79e33c1bd6818442528cb29d6e9f91fcf607064eab3b9e9067de4b70f3826aac` |
| 64 | `lemma` | [inf_left_le_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-left-le-sup-left.md) | 449 | `result-track:7a2788b004dd335c61462aed00f7ac1f640c0ac6457e5aa833963a01eb890403` |
| 65 | `lemma` | [inf_eq_and_sup_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-eq-and-sup-eq-iff.md) | 452 | `result-track:3a15475b9c41a71c30fb3baec441c88f842891b5473483eb56f4d6a30617065d` |
| 66 | `theorem` | [sup_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-inf-le.md) | 466 | `result-track:e184377d5c0c4bd71da02e392530b167bc592e40203140935260562c894a6051` |
| 67 | `theorem` | [inf_sup_self](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-sup-self.md) | 470 | `result-track:7a92d63438e0c408db9e8df70bb0edf6975283f5198029d1cf6ff36261ada012` |
| 68 | `theorem` | [sup_eq_iff_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-iff-inf-eq.md) | 473 | `result-track:8971b5b4a993e69e582960d539aa6058ac4389723d39e1ea4135616c0d52be64` |
| 69 | `theorem` | [Lattice.ext](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lattice-ext.md) | 476 | `result-track:3068a686247be28e60d064465172a7cba0c3897702db2873a62a9d070b7ec5f5` |
| 70 | `class` | [DistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/distriblattice-source-edition-2.md) | 502 | `declaration-track:fc1f9a49d36c4560aae6f667ac5f7a2161b1da37e74e6b9686d90d0f69f4e88d` |
| 71 | `theorem` | [le_sup_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-sup-inf.md) | 510 | `result-track:c294e11a4cad3e5506d3eb164ce262fb595661da4dd1b9dbe8a6d37695e94ae1` |
| 72 | `theorem` | [sup_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-inf-left.md) | 513 | `result-track:4a6e596950d3cf870d3d8428a36a55893d3fb860f159ea49dca3c3fd2f86cbcd` |
| 73 | `theorem` | [sup_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-inf-right.md) | 516 | `result-track:e322bb06a3714d2a088975b6bf7d06cd8ee5ad229e769fb4e21c03ffc2ca07e2` |
| 74 | `theorem` | [inf_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-sup-left.md) | 520 | `result-track:45086398ad1429d579f75173ba7dc2f094d78d198643d59780897e797e052499` |
| 75 | `theorem` | [inf_sup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-sup-le.md) | 529 | `result-track:56dd4cec7cd938c7d06b4906bc33ce7703bb77e62c751eb5e49181cc58c82147` |
| 76 | `instance` | [OrderDual.instDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/orderdual-instdistriblattice.md) | 532 | `declaration-track:e6ffe6d165a0cec4b2d90e52646517d92328959ddcb968c5f52d142fbf323c33` |
| 77 | `theorem` | [inf_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-sup-right.md) | 536 | `result-track:2538eb1a1974cd2581ad4f5fdd4937e982aa010b719d13e94037aec3b6d92ad7` |
| 78 | `theorem` | [le_of_inf_le_sup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-of-inf-le-sup-le.md) | 540 | `result-track:342f48aa75260dc923361480ff798807fd6e16413b06b35b3ae20374de13407e` |
| 79 | `theorem` | [eq_of_inf_eq_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/eq-of-inf-eq-sup-eq.md) | 550 | `result-track:1ab27158d617382250e233e4739855a8532d54cec9d3dbdc0103f9c4c3c3672e` |
| 80 | `abbrev` | [DistribLattice.ofInfSupLe](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/distriblattice-ofinfsuple.md) | 559 | `declaration-track:455d306f40068d755a20b99a6ea9e7fdfda4652f65517693827ee2848757e516` |
| 81 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-3.md) | 569 | `declaration-track:7831005e052850e96eb522033814fc499695a5d83f68dfd1edde8375cc1ea0d8` |
| 82 | `theorem` | [sup_ind](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-ind.md) | 580 | `result-track:c4f7ec398dbb6e6e3bc0603dfbb90944330cd690511d20dbd265d6efaba94038` |
| 83 | `theorem` | [le_sup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-sup-iff.md) | 585 | `result-track:c696f2dd2d12256a4465114f99cbd289df6fa427b1130d0983845fd1a029e53e` |
| 84 | `theorem` | [lt_sup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lt-sup-iff.md) | 589 | `result-track:e6891d51dd898fbe2f46be536dec98d20ac4ca74c7cae4b6d23205d050948de0` |
| 85 | `theorem` | [sup_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-lt-iff.md) | 593 | `result-track:715ef4d743c8fc4449d2d6ab7144a23ab0841455b71ee62ab78107cb3bd4f6c2` |
| 86 | `theorem` | [max_max_max_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/max-max-max-comm.md) | 600 | `result-track:86e9b86cdde056742618f4c0f26a9fbef8f57f6270eacd14f06b2ba91c248412` |
| 87 | `theorem` | [sup_eq_maxDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-eq-maxdefault.md) | 605 | `result-track:2d1c3c7a2e47c7e0a5ea4a343c71b55adbe0822b154e833decef76a7f971dea2` |
| 88 | `theorem` | [inf_eq_minDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/inf-eq-mindefault.md) | 612 | `result-track:bb8da4c920212309a27f5b1319fdda719b58745d364145c0ebc88b754b13d5d1` |
| 89 | `abbrev` | [Lattice.toLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lattice-tolinearorder.md) | 622 | `declaration-track:b7789e33c8dabd2b08d7d4a7dc0200fa938f4683a37fc246121d6937f5b5e556` |
| 90 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-2.md) | 632 | `declaration-track:1e5011016074b7d0edc4b125fb81b14f228bcbc2800e1e1c6093f18e187fa1d4` |
| 91 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-8.md) | 638 | `declaration-track:bd4135f8a621ba4de31870029353aee7b27a390dad99633b6e27f4a7730c0488` |
| 92 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-9.md) | 639 | `declaration-track:d566b7666ebd528190c417126f7f4e248ae3d0b8d0273485803aa44bb25bc30d` |
| 93 | `theorem` | [ofDual_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/ofdual-sup.md) | 647 | `result-track:89218e1d55fef631b49777bc8418da322b30d652186204ee84541879cd17a4c9` |
| 94 | `theorem` | [toDual_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/todual-sup.md) | 651 | `result-track:b02f475e5057eb5eafc4dd54c704a2a655fb70fb9b9b3c38009a7456036a7eaa` |
| 95 | `theorem` | [ofDual_max](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/ofdual-max.md) | 658 | `result-track:27460a0336f08507a007c0cea1b719e6d1288a513e2932a6389643bed378fc04` |
| 96 | `theorem` | [toDual_max](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/todual-max.md) | 661 | `result-track:009e14295d45263cb5d9d4426e73e787523d28bcce219aa815f4d2d9849c716b` |
| 97 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance.md) | 674 | `declaration-track:156d54c7262157f922397148041251508f244185f163eeff1debae9cd3667165` |
| 98 | `theorem` | [sup_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-apply.md) | 678 | `result-track:ea32946127eee2663aea5e8703843b29f5efb8924935dcc7ce40dca05c5728cb` |
| 99 | `theorem` | [sup_def](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-def.md) | 682 | `result-track:9554f34e36931e78646b9eb5f6d8bf029eeccb204cd93f18ffe19d93f4456aa7` |
| 100 | `instance` | [instSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instsemilatticesup.md) | 686 | `declaration-track:24b5a82d18aede6b153bee1db0ff239c5b9c6a18a20f1d20d1f1c049bc5df841` |
| 101 | `instance` | [instLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instlattice.md) | 692 | `declaration-track:05d1868beba8eaba11e6bb25d8888deb214544c50e33ec3ec8f3386876e529ba` |
| 102 | `instance` | [instDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instdistriblattice.md) | 694 | `declaration-track:967a2dbc21dd63fea2d7fb64bb8803678523102524d1477b63827508ec1ef880` |
| 103 | `theorem` | [update_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/update-sup.md) | 705 | `result-track:66c93dfd6b0de772793ced749d5998f9692212a9c9cd02a92941d3bbfe1b6f65` |
| 104 | `theorem` | [sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-source-edition-3.md) | 720 | `result-track:85a68e89abbddf50134588c5a213b226675ab9f79f8635067d44c7b3b42bdb05` |
| 105 | `theorem` | [max](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/max-source-edition-2.md) | 726 | `result-track:2ec41acad0438f3279376c6cf4569332b0a3f64675b0097c4b827a1de74bb7d3` |
| 106 | `theorem` | [le_map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/le-map-sup.md) | 732 | `result-track:bb6fc79380854477b8a1f0c052a2ec742dbff33d255a16b5ad83b18e0bfffc4b` |
| 107 | `theorem` | [of_left_le_map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/of-left-le-map-sup.md) | 737 | `result-track:44192e8fbad70792ca66a72c48879288e3f3c6b273fbc36c37950462075070ab` |
| 108 | `theorem` | [of_le_map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/of-le-map-sup.md) | 744 | `result-track:7e28160ba060e9aaeadde755f01ee983dacf830f7b46b24eaafef60ce2bcf465` |
| 109 | `theorem` | [of_map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/of-map-sup-source-edition-2.md) | 749 | `result-track:258ba38fa4c2c9eda2449b3ea2a334bd0785fc49ba0dfa1551b63cf42e3ab994` |
| 110 | `theorem` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/map-sup-source-edition-3.md) | 756 | `result-track:e36ca3c32e67db092e09c821e9cd0febb1b4093d72553e9006660a251c31961e` |
| 111 | `theorem` | [exists_ge_and_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/exists-ge-and-iff-exists.md) | 763 | `result-track:81b207bb685b38665ab792209e214c0344d661a19be3889ab66068267331423c` |
| 112 | `theorem` | [exists_and_iff_of_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/exists-and-iff-of-monotone.md) | 767 | `result-track:1a340da8598b3c463b6533e365307b679b92e013dfb1407fef9f3e14e9371d92` |
| 113 | `theorem` | [sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-source-edition-4.md) | 778 | `result-track:b5df032a3bf34fec8c45d3a687ef30f57cb1868ed22137a3f8e319bd48035958` |
| 114 | `theorem` | [max](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/max-source-edition-3.md) | 784 | `result-track:37c5700701c36c392197426ed4da3543aacfe8bbcce7ba63271a8a522e7a976e` |
| 115 | `theorem` | [of_map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/of-map-sup.md) | 789 | `result-track:1c37d9a3c9d374e70da1607e4200b375d2a11e69d4b043e7befe70c186846447` |
| 116 | `theorem` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/map-sup-source-edition-4.md) | 796 | `result-track:f5765bf5ac9f8d2fa9de581d5206bd217db6e23c5052c9eefb6c62c92838321b` |
| 117 | `theorem` | [sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-source-edition-2.md) | 809 | `result-track:6f3485f5d3b27125ce81eae7c447e24d5de7da8fe04cc4d7ea73556111527dfc` |
| 118 | `theorem` | [max](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/max-source-edition-4.md) | 815 | `result-track:bb769d8f8e2648fe792280bb3c7427d25b6380bd561b364d9a4f208e9d2d87ef` |
| 119 | `theorem` | [map_sup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/map-sup-le.md) | 821 | `result-track:99c3de21a53bf5e1025c1c7b6d0a4b6e3d4bc4de37b319064ca7449dc746df83` |
| 120 | `theorem` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/map-sup-source-edition-2.md) | 828 | `result-track:8aa37902e46623d48ea26cfe9afa97c3ef0db6dee72cf12be9605cdca7397c7a` |
| 121 | `theorem` | [exists_le_and_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/exists-le-and-iff-exists.md) | 834 | `result-track:c6c3814f2457372922f41061d11b01868a73820cfae5026e54b61c8f6307225c` |
| 122 | `theorem` | [exists_and_iff_of_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/exists-and-iff-of-antitone.md) | 838 | `result-track:0987d38cf4baac6cfee7257ad36d1494c6c53003a9105ddf2814ac18ad025ab8` |
| 123 | `theorem` | [sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup.md) | 848 | `result-track:1c45438adef90eb9c9f6b3fac521588c807f0caa8e3110e62b6bbe2428ee087e` |
| 124 | `theorem` | [max](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/max.md) | 854 | `result-track:2e8ad1df2f44b36b6ced66423fcd14fd4ce687e0ff682adb1feceef8325eed03` |
| 125 | `theorem` | [of_map_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/of-map-inf.md) | 859 | `result-track:c2d2cb774b1b861ba7f42200bc79fbddc63633df65290785849f19dcbdc5e44e` |
| 126 | `theorem` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/map-sup.md) | 866 | `result-track:7caa075ace944914324abf4156f39657c834fef94752b71589f4656c365871d5` |
| 127 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-4.md) | 885 | `declaration-track:88f8171a90d2b4192240a5a85c6df640f0f90686d501241f5be4474d9fe331ba` |
| 128 | `theorem` | [mk_sup_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/mk-sup-mk.md) | 889 | `result-track:c01ba050a96e72e3926ca7c83f91fe33f87c48f64b16f2f23585fe6729c3c930` |
| 129 | `theorem` | [fst_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/fst-sup.md) | 894 | `result-track:5f048a7dae46e05b861421427d60e6011d31a60e23bf6d4498bc5caa59d233ba` |
| 130 | `theorem` | [snd_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/snd-sup.md) | 898 | `result-track:d76523e236a43679d8289401c57ea6269368fe4ee0631b1d03598209e412591a` |
| 131 | `theorem` | [swap_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/swap-sup.md) | 902 | `result-track:f902b29a2d47dfc80e23cc8b6dc4c2779cb5c9525a04194df26c070040e46039` |
| 132 | `theorem` | [sup_def](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/sup-def-source-edition-2.md) | 906 | `result-track:e8db5e3c48d68ee3a7edc84a026d96dfa607e4677fac115c285aae6a75aa6e48` |
| 133 | `instance` | [instSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instsemilatticesup-source-edition-2.md) | 910 | `declaration-track:9114ff02f693121105c2d0471436d6362ef91c3ed9674b2a2fc19e7c1460ef36` |
| 134 | `instance` | [instLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instlattice-source-edition-2.md) | 916 | `declaration-track:0a13bbecb7c68184325d020ec80acd1e3830028c999b2fdf3d7364c0d4e514e1` |
| 135 | `instance` | [instDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instdistriblattice-source-edition-2.md) | 918 | `declaration-track:ac79939720cf41bc3e81cc814f667d6c2b8b5bae2de6f142af6803e7cb525043` |
| 136 | `abbrev` | [semilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup.md) | 935 | `declaration-track:2aaa8e223eba0e10cf5962c0ecaff833697eaa99f7468a5e01d38660bbb2ade6` |
| 137 | `abbrev` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lattice-source-edition-2.md) | 945 | `declaration-track:7a43b615237332ae5835835986328d81807736c491b10125e5265c3ea02f3398` |
| 138 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/coe-sup.md) | 951 | `result-track:acdeff15a19f1368a9231c19cffe0acea72af215b5cb6c51a397889f4eeba83a` |
| 139 | `theorem` | [mk_sup_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/mk-sup-mk-source-edition-2.md) | 957 | `result-track:ecdda2a5d941306880bba45a40d98fdeb954c008a2b7899764f33a3f0a40166a` |
| 140 | `abbrev` | [Function.Injective.semilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/function-injective-semilatticesup.md) | 973 | `declaration-track:96e000221c3d9c070a2f845b47f0608ded4d9e9fc109143b1f1c9020f917aafb` |
| 141 | `abbrev` | [Function.Injective.lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/function-injective-lattice.md) | 995 | `declaration-track:d87affda2062a622b4d0467d7fbef3e1580ba7b86f96ee367980351577d5f481` |
| 142 | `abbrev` | [Function.Injective.distribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/function-injective-distriblattice.md) | 1007 | `declaration-track:c640409fc212252ccda7370bb57e89c8d8a9bef8b4ccf6cf85c52baa22af22ca` |
| 143 | `abbrev` | [Subtype.distribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/subtype-distriblattice.md) | 1019 | `declaration-track:22b1cc4063cc95b4b570cbdbb80232811b341af4878a3a4e65a9a557a0d11870` |
| 144 | `abbrev` | [preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/preorder.md) | 1030 | `declaration-track:70d4c797e351ec737e49b3775f93387ecf33daa725a0912a0bd4271c0c9454e3` |
| 145 | `abbrev` | [partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/partialorder.md) | 1036 | `declaration-track:2b98290a269e95658226ed720fd13ed0c5fcaede778b26d46f276075506ebcca` |
| 146 | `abbrev` | [linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/linearorder.md) | 1041 | `declaration-track:6c9e42381173bafa9b888c8f3079787e329a5f3d4ea5e2e3560c30a2cd82cb52` |
| 147 | `abbrev` | [semilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticesup-source-edition-3.md) | 1049 | `declaration-track:927d84424777ab2710ecd51d850b578c3006f6c889e85fbed9d2223e9ae626a1` |
| 148 | `abbrev` | [semilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/semilatticeinf.md) | 1055 | `declaration-track:05332b50aa80d9543bf6271e941ace00e96848c61733b88444dc7271862582cb` |
| 149 | `abbrev` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/lattice.md) | 1061 | `declaration-track:06e2c7bd0b3370770f315fbd270b9223d4f710556b102cf347e5ead0fad7be3a` |
| 150 | `abbrev` | [distribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/distriblattice.md) | 1067 | `declaration-track:332e86b50647f56efd6a9e5c43719286aa9744778cd1ae958841f9ce926b8eb7` |
| 151 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-6.md) | 1078 | `declaration-track:982b4a330486a0ee7ee1ec079a6765cfd7f7208b7131e63c5d66b108a4c11757` |
| 152 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-10.md) | 1081 | `declaration-track:d63b3d2019c28a9789e1956d7010e102bd3672b60c55206aaf87677394944a1b` |
| 153 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-7.md) | 1083 | `declaration-track:9fe3c302a41372288bdcaa7d94b90ca7f677a0aed717754b1606bafd0d3090d4` |
| 154 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/instance-source-edition-11.md) | 1086 | `declaration-track:d7c4186b2fc3e06f081b43affb7fdc6f114b4bafa448cb8ddbccf52a56cd18d9` |
| 155 | `instance` | [Bool.instPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/bool-instpartialorder.md) | 1092 | `declaration-track:feb831f2475f02c5a9ee926cf5aa60e028359898feb7d2cc6ba806b035952983` |
| 156 | `instance` | [Bool.instDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/bool-instdistriblattice.md) | 1093 | `declaration-track:9c1c051865d9b2a0b0aced119d37c7b74d0ceafef6c933bd5a233f81649b2146` |
| 157 | `lemma` | [pairwise_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/pairwise-iff-lt.md) | 1097 | `result-track:a3c327dbabea8d611efb57413f9c37a5dda36d2825d1a5dc352bd1cc024d0b2b` |
| 158 | `lemma` | [pairwise_iff_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/Lattices/OrderLatticePublic.lean/declarations/pairwise-iff-gt.md) | 1100 | `result-track:01cec428bcdfa2af48e9f9b1fb743f734363debb617fa5ec0e48ae5a9e96ca6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6aa7afff0691e379080e8457213962be94dbce4be4be524fd1193cfe81be7494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant848c632cb02ed8fedafbe876e8a609e8855a7acb66e604505431d5a7b5dd3e48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
