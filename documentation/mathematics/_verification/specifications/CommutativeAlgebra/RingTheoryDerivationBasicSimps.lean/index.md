# Verification target: Ring Theory Derivation Basic Simps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b896d55d202d85cb94367bb9f81a0f1b13442b4c",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b896d55d202d85cb94367bb9f81a0f1b13442b4c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/derivation.md) | 41 | `declaration-track:eb9ee1e287410d4a63df0947411da68f5fa2ca56338182d693a1ceafb0b5c9d3` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance.md) | 62 | `declaration-track:0ec0aec45e167f4138903aef281d505f64fb4d2dff58efa2f0e8f5e21cd78163` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:34a84bd9ef4fc4d772c51057714ccfb347730b7579b33a70d21b62e1af61de8b` |
| 4 | `theorem` | [toFun_eq_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/tofun-eq-coe.md) | 71 | `result-track:a97f6e0f93b96aa8421a35fd3cbf88a803c8ff77c002908f4432ee57fb6a845c` |
| 5 | `def` | [Simps.apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/simps-apply.md) | 75 | `declaration-track:7ebabd02c37bb9318eded089c065f1e3d2f4ae703105076f95b14a84bd612b55` |
| 6 | `instance` | [hasCoeToLinearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/hascoetolinearmap.md) | 81 | `declaration-track:d36392d3a99f0300c660bdb5fff5c1391f9c176ae496a7cecc6a5ca05169545a` |
| 7 | `theorem` | [mk_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/mk-coe.md) | 85 | `result-track:7235cce9a039cb71b38e7e32b178d2d9dc643494d879241d9b800d9ada6e1dc1` |
| 8 | `theorem` | [coeFn_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coefn-coe.md) | 89 | `result-track:2ed7aedd7c8f2fd2a539f71893c5ce71b0650f4d8891983569903f20556d4e38` |
| 9 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-injective.md) | 92 | `result-track:ba262a80031150afc009b7452d176f13a08c55020d4cfd5deabf64de960ec572` |
| 10 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/ext.md) | 96 | `result-track:30b94bb7bce008a03436e76ba18a97507d25854e004a4ed96f9e4abdd10918ae` |
| 11 | `theorem` | [congr_fun](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/congr-fun.md) | 99 | `result-track:71e4374a6f2609f9e0215dd7ea113063e911a4ff16813bc140dfdb82048598c0` |
| 12 | `theorem` | [map_add](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-add.md) | 102 | `result-track:266c1b58388dffa17b19fb02aa150a0ddffc9c9f3d6680ac795e6528eea05b50` |
| 13 | `theorem` | [map_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-zero.md) | 105 | `result-track:235bc122e3f902beb778da960d82932fe73e91fd787255297a42018aadca5e14` |
| 14 | `theorem` | [map_smul](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-smul.md) | 109 | `result-track:e84f94b59bebddfc7a62fb47a08b960f186c56b153ef73973463d05a6ceb53e9` |
| 15 | `theorem` | [leibniz](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz.md) | 113 | `result-track:214ea8dc6b939ba713623dc9b823f9dc7d2403143d56149436b34418d8e52f97` |
| 16 | `theorem` | [map_smul_of_tower](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-smul-of-tower.md) | 117 | `result-track:f3a6dee36616cc633613792a4d0c849846a6bd9cbf90cd05d936e2ecf5aed0c8` |
| 17 | `theorem` | [map_one_eq_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-one-eq-zero.md) | 122 | `result-track:62b90dbbff3ec8d122af50a02ab114ed29fa00b2671cdd7df7d92fbd2118c734` |
| 18 | `theorem` | [map_algebraMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-algebramap.md) | 126 | `result-track:4d8dc1e50ce2fe9cc00c51ebca1dbd16e6a94d172b44713a122875c10d99d632` |
| 19 | `theorem` | [map_natCast](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-natcast.md) | 131 | `result-track:88be72986f1efca75ac6f7049f642b003a550e9caf7c8c2fc8a8245f708184fc` |
| 20 | `theorem` | [leibniz_pow](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz-pow.md) | 135 | `result-track:64851e7e2bee5376f62212867ee9766b121b52ecbf0b9053ee07a2699f68f448` |
| 21 | `theorem` | [map_aeval](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-aeval.md) | 146 | `result-track:8e418228082df535408d28b1ee1a0b77dc6aee4ce9c5f2aecedf7003cb301cff` |
| 22 | `theorem` | [eqOn_adjoin](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/eqon-adjoin.md) | 153 | `result-track:33b3a435906f63179313c777dd6f79bf5cb4d0f6df2e17c3753931643dd00097` |
| 23 | `theorem` | [ext_of_adjoin_eq_top](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/ext-of-adjoin-eq-top.md) | 160 | `result-track:39c6366c236fdca7d688cf1c797b4cdc3a69dc4f584057ca6fdce8c4211095d9` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-6.md) | 164 | `declaration-track:578feda5b172251d01b61321c01a85de7d3fd1578665140ed34baf35d7af8dd5` |
| 25 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-zero.md) | 170 | `result-track:340969fb54d386aa320fca3136e4340ebce0f4843215bf2c28e6301b3ee4e357` |
| 26 | `theorem` | [coe_zero_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-zero-linearmap.md) | 174 | `result-track:6b241c142abb4cc6263ce74144099e67c9a75a7e3d1680dfffe49525dc3af030` |
| 27 | `theorem` | [zero_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/zero-apply.md) | 177 | `result-track:97c1d11e5cfc6ce798df784f0616e26cf2d2e7feacfac36d73a8012f02cd76da` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-8.md) | 180 | `declaration-track:6b1bcc41c34901f1d532ebdcda0fe50f17104471cda860110466b658963f53f0` |
| 29 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-add.md) | 188 | `result-track:694fec3bc50b4a61073fa2dfee93543bb9c9ead09fa3bf2c5e19b9a6c4ac73f2` |
| 30 | `theorem` | [coe_add_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-add-linearmap.md) | 192 | `result-track:208cec73ae69cda101a8a330a159268e6e9e19f4e8d895e809fd0dab17f9913d` |
| 31 | `theorem` | [add_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/add-apply.md) | 195 | `result-track:af0300052291896eefe6524345817094b3633505660a1ac5fb760aadff0e2719` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-14.md) | 198 | `declaration-track:eec4c4d63bae52d69936b6804b224a5e22348b4231e81c7e6a698bdb3f08c763` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-2.md) | 207 | `declaration-track:1d825b4427b60475647c438ffb3ea1d732fc06a240a72d079082154d594399f8` |
| 34 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-smul.md) | 215 | `result-track:37bfcee04957e3dcf72f5700f3b5c93c06e9d69a65886f1a07c660e8bb89a2cb` |
| 35 | `theorem` | [coe_smul_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-smul-linearmap.md) | 219 | `result-track:6611d2f98c4f7b43ca73e8d58a2e856fce11cac702e01979affd9f87455b4597` |
| 36 | `theorem` | [smul_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/smul-apply.md) | 222 | `result-track:2fc1114f9d1823152e187896579e8347c61b72b09460472b0d2d4a6ea4b16712` |
| 37 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-7.md) | 225 | `declaration-track:5ebf9987c9f3f4eefd1c592a4fbcee9ce6dae0fb325fe1be8a6da59d6318d31e` |
| 38 | `def` | [coeFnAddMonoidHom](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coefnaddmonoidhom.md) | 229 | `declaration-track:2f5ffc99882be9fcca8a794227cd066d5053adba841fde86233efbc5c5817bbd` |
| 39 | `lemma` | [coeFnAddMonoidHom_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coefnaddmonoidhom-apply.md) | 235 | `result-track:1b1b524489705e046d0c521920c266fb36e1ae5ae668b18fa27a43358da50f72` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-5.md) | 237 | `declaration-track:4a2c38f7869eeba63e7ed73e95e18404351b7df6000a2d8ad6c85d1af1738c51` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-13.md) | 240 | `declaration-track:dc1be817196ffdd16204adfd01b6517a1040ba5f066e7aab7e61c90159cf3b6e` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-9.md) | 244 | `declaration-track:78721a470a7d64bd35b6c19514301032620e8465b6c4b3b6588e185821fd3f17` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-11.md) | 247 | `declaration-track:ad29ee8d2ff51ed705feaaf5e67095fe75c9963702cdd557efdf943824474722` |
| 44 | `instance` | [instModule](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instmodule.md) | 252 | `declaration-track:263f39de65c20e24df9584e119f602d9c441ce23dda4166ed7e015632b262007` |
| 45 | `def` | [_root_.LinearMap.compDer](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/root-linearmap-compder.md) | 265 | `declaration-track:3029dc4e6ec47a416cb73342f57c7972720f348877aa08b59be5639baa030110` |
| 46 | `theorem` | [coe_to_linearMap_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-to-linearmap-comp.md) | 276 | `result-track:891db6c14b7238818cca401291b4cd969ac3c0e8e275ec8e19cbf399280ff12d` |
| 47 | `theorem` | [coe_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-comp.md) | 280 | `result-track:a1ecf68e0228224e537aefa7e24f7b2c67c405403014287d3f4d93e02967ab65` |
| 48 | `def` | [llcomp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/llcomp.md) | 285 | `declaration-track:f680c11365f96537dc5793a2be51a731b2a8c3eca448d4327f1066c74a3edc3b` |
| 49 | `def` | [_root_.LinearEquiv.compDer](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/root-linearequiv-compder.md) | 291 | `declaration-track:a671dfba63f3fb78e68e6248fa2ec9289959c5245c6ad78bbabea43157353f26` |
| 50 | `theorem` | [linearEquiv_coe_to_linearMap_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/linearequiv-coe-to-linearmap-comp.md) | 298 | `result-track:2e688ed496856005ecfc1bd429b92eb594cc1bad5167f2feda36fe4e4a417e18` |
| 51 | `theorem` | [linearEquiv_coe_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/linearequiv-coe-comp.md) | 303 | `result-track:1b3aacf24ef77669472e2287627e18e03518c2755e502a72692621d49cdd335e` |
| 52 | `def` | [compAlgebraMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/compalgebramap.md) | 313 | `declaration-track:03a649227cbf864757c8304234207be591a4e659c253221edd9797803a1cefa5` |
| 53 | `def` | [restrictScalars](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/restrictscalars.md) | 327 | `declaration-track:27eca97ed96ae50ea62090d341b0a87818c12775c4b81766e5576c5849ad142f` |
| 54 | `lemma` | [coe_restrictScalars](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-restrictscalars.md) | 332 | `result-track:448f89acb993c003e13f79c032716b00fd0a08d8143bb83469d912078ded9ec4` |
| 55 | `lemma` | [restrictScalars_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/restrictscalars-apply.md) | 335 | `result-track:45ee7134a472f80b99b1215923d26f82d8d5f6fa2c448d58fb24846e114f93a1` |
| 56 | `def` | [liftOfRightInverse](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/liftofrightinverse.md) | 353 | `declaration-track:fc755300cedc0e59f08b12b5747ccefb0f420025fa3b21bf6fd679d8cea8322f` |
| 57 | `lemma` | [liftOfRightInverse_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/liftofrightinverse-apply.md) | 374 | `result-track:d4a3c1ba1b39e1c0b5b12ae33749853ba5094ee42680eb353a571c01d2636b59` |
| 58 | `lemma` | [liftOfRightInverse_eq](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/liftofrightinverse-eq.md) | 381 | `result-track:9cafcd6e4f9543aa74d9e0fbe4661f86c203b456de11609eb8d8b8118c9f0298` |
| 59 | `abbrev` | [liftOfSurjective](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/liftofsurjective.md) | 391 | `declaration-track:d2ebd039a6954dc1c460dc95b86409f22cb3e02f0a815ea68093ff4d581d1ae3` |
| 60 | `lemma` | [liftOfSurjective_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/liftofsurjective-apply.md) | 395 | `result-track:05db4cc31e7169520e60989e07bdaead6527acbc64e182193e4b52c651cd5274` |
| 61 | `def` | [mk'](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/mk.md) | 408 | `declaration-track:2bb0c1ba554e0dd05b5220dc7522de2433ed10151135f29796e80c8107b4ef57` |
| 62 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-mk.md) | 415 | `result-track:e515a366dab372d89e62b39a0e89080babf3b6b02247ceda2eef32d871d86867` |
| 63 | `theorem` | [coe_mk'_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-mk-linearmap.md) | 419 | `result-track:542c69ae09218a1d78bec0ed52269b74a6b4e5a6ac687bf2b74fc6e3e893deb0` |
| 64 | `theorem` | [map_neg](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-neg.md) | 434 | `result-track:3d32d62ea3d2b7994a676cc6249d2ec2da72aa269af3bc6426cf0147ad4d02dc` |
| 65 | `theorem` | [map_sub](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-sub.md) | 437 | `result-track:9b0d342eb5e75626047fa43f9d2ff58c300aeb657124d22b107154e25d4076b5` |
| 66 | `theorem` | [map_intCast](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/map-intcast.md) | 441 | `result-track:6a28a09baa0b36207ea86e4568c3f30c475c3f2e6606566f6368a4b6ccc6cc95` |
| 67 | `theorem` | [leibniz_of_mul_eq_one](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz-of-mul-eq-one.md) | 444 | `result-track:15342f8d5ed9651088da2215cc4e63245c6c04426aa11c8eace9c1be76185c56` |
| 68 | `theorem` | [leibniz_invOf](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz-invof.md) | 452 | `result-track:14a7a4c3a299c173f64384ae8e0fa4561d764b597c6c43da1e9a921103278dc7` |
| 69 | `theorem` | [leibniz_inv](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz-inv.md) | 459 | `result-track:5205aab25b6c7307ae8b69bc8f2b41f5ac57755e19f2d70097c34702ae3be8f6` |
| 70 | `theorem` | [leibniz_div](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz-div.md) | 464 | `result-track:a7fcdea51ef58ed446dee6719bb8df5ba1fc415eca2c4837305d8632616dcd47` |
| 71 | `theorem` | [leibniz_div_const](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz-div-const.md) | 470 | `result-track:181d2f21cfe32b3a42fc5430669a227572d24e17c14dfd851d9a1d9a1a0a7b33` |
| 72 | `lemma` | [leibniz_zpow](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/leibniz-zpow.md) | 475 | `result-track:372699b89b67d21b284fcd097ceccc42f50497de3cc6c2affa7f36174e5d036b` |
| 73 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-3.md) | 498 | `declaration-track:2d6fcc3e2c6875702be81758127cf489a8c6ef4d8cf1a4948e39a17f70dd186d` |
| 74 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-neg.md) | 504 | `result-track:0f2a8a8f336dfcf055a699f7d1d1d0ec63b1ef651527f7723d2cfe45617232d0` |
| 75 | `theorem` | [coe_neg_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-neg-linearmap.md) | 508 | `result-track:d3c79b0d4b6cc5e08ca63c26a71b2225e495364dd930b7930a44bfceb375d2e9` |
| 76 | `theorem` | [neg_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/neg-apply.md) | 511 | `result-track:fc3c3548d728548afbf595def77e18ee86e9d22e996b2a34f7749d54c53f961e` |
| 77 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-10.md) | 514 | `declaration-track:7f6f64abf1323f9f14a00fedfa8a9ea9c9b4e2a58fec44ccc81aeb80548aa6ea` |
| 78 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-sub.md) | 520 | `result-track:16d46e739779430f93ec82e259f893838925646eb54698499ac7a78d27654812` |
| 79 | `theorem` | [coe_sub_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/coe-sub-linearmap.md) | 524 | `result-track:1ee4264508cdab4785c1796315d01471d9d74d85a3aa15b6a6c844252a9dfba6` |
| 80 | `theorem` | [sub_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/sub-apply.md) | 527 | `result-track:44dfbafef9b953add0c41b095963ac3bb9782f82248b9dee2247cc720e586398` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicSimps.lean/declarations/instance-source-edition-12.md) | 530 | `declaration-track:da99ab586966b9292765b96f6ca7eb9309985f3d94c45c4a2f6b2e85ad438793` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ae34a6b12d29d014482eb5eb454fcf34fa7482e179dbee548fe68c9dfe43572 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
