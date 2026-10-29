# Verification target: Absolute Value Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean.json)

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
| 1 | `structure` | [AbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/absolutevalue.md) | 44 | `declaration-track:7b15c7a9145df5203fd7579e29c495b3e2a615c79ec29c13b2df43bba05bbbf6` |
| 2 | `instance` | [funLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/funlike.md) | 64 | `declaration-track:a574d33fea1cb2bfc78175c2cd6385c76a5561bf90e37733bfdc874c3d73705f` |
| 3 | `instance` | [zeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/zerohomclass.md) | 68 | `declaration-track:03a16249ba538e89a7605506d4a26496ddd47a1d8121581c39381a5e16e6c40c` |
| 4 | `instance` | [mulHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/mulhomclass.md) | 71 | `declaration-track:feb70e46edb89eefef0713b0d4bc724a80ed77cd825cba92e1c92efd06ea6bfd` |
| 5 | `instance` | [nonnegHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/nonneghomclass.md) | 74 | `declaration-track:22f067e185242060c79fc28ff7cce52c8dd397cb3366b2d858c786d574a49b96` |
| 6 | `instance` | [subadditiveHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/subadditivehomclass.md) | 77 | `declaration-track:e3c3fd8f47894d4aa172bf5e5f2b3c41255aed13af56a86bc1abbfee7f96b2c3` |
| 7 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/coe-mk.md) | 81 | `result-track:8cde1536da028990b82085499e7486e15ab9a7a5b12ab523035ec0896fe795b6` |
| 8 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/ext.md) | 85 | `result-track:4712f57f1f2b0dd3b5517cfd3dd760f56887e76a9b9dfb1113bce32fc9e267d5` |
| 9 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/simps-apply.md) | 89 | `declaration-track:cb2914abb6c1d7a160dc8b90473edd64e9c9122362063c5147e115077dc1bfea` |
| 10 | `theorem` | [coe_toMulHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/coe-tomulhom.md) | 95 | `result-track:a6d06e70f7d6ea40c5f72e3c0c20c6d3e004062e9e86d103bbb3b0c71093b809` |
| 11 | `theorem` | [nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/nonneg.md) | 99 | `result-track:e50676abd05c3792c1356279b43b6522afd4304360678af0c52850bced10fdcd` |
| 12 | `theorem` | [eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/eq-zero.md) | 103 | `result-track:a64bf834ce62ce28b5db794581c794061b54eff502526886e28d46086353df3f` |
| 13 | `theorem` | [add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/add-le.md) | 107 | `result-track:7156da520dcf9716f419acbcdf362b1727edc0bfda14e268e2cc0664c22aae26` |
| 14 | `lemma` | [listSum_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/listsum-le.md) | 111 | `result-track:4422783b612c2317f8b4aa9a70428618b36345ff601d6f599f6fb1aaee989ad9` |
| 15 | `theorem` | [map_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-mul.md) | 117 | `result-track:bc7cd53eed47ad549156504e9d669126fd4dfc22eaabc1c50f46fc20fd66ed49` |
| 16 | `theorem` | [ne_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/ne-zero-iff.md) | 120 | `result-track:5b11ef18f56de759719afb24d4472754e27adb1c86b94d70c023c4b982538f1e` |
| 17 | `theorem` | [pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/pos-iff.md) | 125 | `result-track:cc5b2a6d7ff018642779f917779bfcdc7f9370feb7f4c8763ee69732f1e5b8d0` |
| 18 | `theorem` | [nonpos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/nonpos-iff.md) | 130 | `result-track:f8891d794599617b7dea75bd08d0b4daa24cfadf9fab3d2c4f6feb20ee1d9293` |
| 19 | `theorem` | [map_one_of_isLeftRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-one-of-isleftregular.md) | 133 | `result-track:87f909cd68356146188652efb4c8ee208eff2a4c6c3ab36b9f9d1aa372baf34e` |
| 20 | `theorem` | [map_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-zero.md) | 137 | `result-track:a7ed8fe8fdd09e03e8e8c34c2837f56fed45153cfd58f1ac90eb38bb4bfababe` |
| 21 | `theorem` | [sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/sub-le.md) | 146 | `result-track:32d23860a128572ef6577dc7e8b44b9dc310c1c267c6c49a0ae580a5510411dd` |
| 22 | `theorem` | [map_sub_eq_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-sub-eq-zero-iff.md) | 150 | `result-track:b08a77562c33264570b73156991127b755b7b417770a8b72923df4f7c6b38f66` |
| 23 | `theorem` | [map_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-one.md) | 165 | `result-track:6d4ca318307fe49188ffcd0e623229fee5ee1a9119c7c546464d7035fe19ffa0` |
| 24 | `instance` | [monoidWithZeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/monoidwithzerohomclass.md) | 168 | `declaration-track:8cce9e9e2f88b35400bde32d5947c2baeaa283586b9ca3afcc1a49d6733b2bc2` |
| 25 | `def` | [toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/tomonoidwithzerohom.md) | 174 | `declaration-track:61ec201edb5c3312dacda5d695c6c39080c872e94fab8c0a724dcb5d19ff8152` |
| 26 | `theorem` | [coe_toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/coe-tomonoidwithzerohom.md) | 178 | `result-track:8b900e8d2d323685a4c13ca3d31be1a6210bdcca36853c964a919165068d3da7` |
| 27 | `def` | [toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/tomonoidhom.md) | 182 | `declaration-track:aad7d693ff1ec5fa429f04174cd2f53e473898c76c36228c300eca6132d9e704` |
| 28 | `theorem` | [coe_toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/coe-tomonoidhom.md) | 186 | `result-track:e1c0d4948c029c82a17cec162fea857292535b4dd6ad9b5caf7143bd08aeef93` |
| 29 | `theorem` | [map_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-pow.md) | 190 | `result-track:9e21a6252bc4993d12f430648b69faf3929b01c872eea0b633778dc794b75d94` |
| 30 | `lemma` | [apply_nat_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/apply-nat-le-self.md) | 195 | `result-track:31dbcc022f2ad9aa08323e461f06fbeb2421ec2bd1eff8cbaf88a0694d0023de` |
| 31 | `theorem` | [le_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/le-sub.md) | 217 | `result-track:6ecf01e088df4c93e3a7aab0b7e5f12484c8bb849457e29e6ae41fb430fc0dc4` |
| 32 | `theorem` | [map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-neg.md) | 229 | `result-track:d9b778a40b2b421ab09c0292e388e746c67d0b8749b6a053ffdbd9f764099c3c` |
| 33 | `theorem` | [map_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/map-sub.md) | 235 | `result-track:1a9fbc265e9e1f4cf9f145f484def9b9078b423591182a49ef218186d0969b26` |
| 34 | `theorem` | [le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/le-add.md) | 239 | `result-track:75e5e51b60136f7949ad89284dc7010a4b8b9b8ea13a70ebe006e2375917e612` |
| 35 | `lemma` | [sub_le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/sub-le-add.md) | 244 | `result-track:0dab17fcf295889bfb84f93935d40469968b5084792dd0058c0322a1517dacfc` |
| 36 | `instance` | [addGroupSeminormClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/addgroupseminormclass.md) | 247 | `declaration-track:e4d2327061ddab203e47cc888cabb334c5edb38ac5f21355746fe67a998a8ff3` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/instance.md) | 252 | `declaration-track:6785af0be1674c91290b85c70852fe5410153667ab1244af6ee507bd1690c7ac` |
| 38 | `lemma` | [apply_natAbs_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/apply-natabs-eq.md) | 259 | `result-track:f398c3275b4371c6ee90b5f3b89a4be005b981003db5605043dd0b2634730f21` |
| 39 | `lemma` | [eq_on_nat_iff_eq_on_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/eq-on-nat-iff-eq-on-int.md) | 265 | `result-track:f12c1eda4d6e5539d821f10dc4811a847fae878c2ad3c2d1dcc4b439594c3955` |
| 40 | `def` | [abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abs.md) | 278 | `declaration-track:af334285923b3a187e12d9fffd1be2928dc97947cf99224d83587cff4c008fcc` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 285 | `declaration-track:8d24a4a6f42c9d5d1530c9f876602cd4c293442b8c1c0a5a377f71c44c5adf9c` |
| 42 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abs-abv-sub-le-abv-sub-source-edition-2.md) | 296 | `result-track:c58a496899066944700b3e7f60e62f0c1004fb3e65fed89e6ba703300dcad157` |
| 43 | `def` | [trivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/trivial.md) | 308 | `declaration-track:37129e70a9b7b121bdc76abc01348de3b4a0c6d2d8ab7a0cee7382f499e0f98b` |
| 44 | `lemma` | [trivial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/trivial-apply.md) | 327 | `result-track:6833a0c37f4d14aae5ee3334cfe3dcfec829670fd03f02be03a5af144b5e204b` |
| 45 | `def` | [IsNontrivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/isnontrivial.md) | 343 | `declaration-track:406736cc1fa52d2de759fb1e3543ba093083136a777fde63c40b1e78409c3ceb` |
| 46 | `lemma` | [isNontrivial_iff_ne_trivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/isnontrivial-iff-ne-trivial.md) | 346 | `result-track:4c12ede56fdb09fc878ad585508c391674f1e0ec4fdc5b9037fd904eda6200d1` |
| 47 | `lemma` | [not_isNontrivial_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/not-isnontrivial-iff.md) | 358 | `result-track:006b396d0d9b0a36f20dca67545b1b5636dd38140efbeb0511a5ae209dce3e58` |
| 48 | `lemma` | [not_isNontrivial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/not-isnontrivial-apply.md) | 366 | `result-track:0a67304eaf41e00d04742386e549895346ec6077099102cafb823ea1e840d3ee` |
| 49 | `lemma` | [IsNontrivial.exists_abv_gt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/isnontrivial-exists-abv-gt-one.md) | 377 | `result-track:ad41891f80abbf71849a8763285fd5b9ad11c1c3dcd18f561242bf681061d502` |
| 50 | `lemma` | [IsNontrivial.exists_abv_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/isnontrivial-exists-abv-lt-one.md) | 385 | `result-track:c9c1a6d864e88732520788168a2d331cba1f723fc28d8cdf9a5f4cce9db271fb` |
| 51 | `class` | [IsAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/isabsolutevalue.md) | 403 | `declaration-track:a21d536d8a668f02b02589a7bb7fd729a9abe615f75a941bb8409ff6344b2de6` |
| 52 | `lemma` | [abv_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-nonneg.md) | 420 | `result-track:0051004b998a3f9c2f47a6a65cb2b7fcfa2459dd08aef6960bfdc80858d15301` |
| 53 | `def` | [Mathlib.Meta.Positivity.evalAbv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/mathlib-meta-positivity-evalabv.md) | 427 | `declaration-track:e0a7b423c42d7632e57180db570d960a3d781b58e3d813ce04fc3c789fecaae0` |
| 54 | `lemma` | [abv_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-eq-zero.md) | 435 | `result-track:71e96d01feddeb1c82f2b03ffa7886be1121ec53b81cc2362b852965317c65b1` |
| 55 | `lemma` | [abv_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-add.md) | 437 | `result-track:145c4c9d68f7faf3f21c89fdc2dd721a1485f17e25a1137bb360d70c2a0f3f73` |
| 56 | `lemma` | [abv_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-mul.md) | 439 | `result-track:bd37095cd9b77e2860975b5c22af5531ced99370bef15c31ca286adcc981699a` |
| 57 | `instance` | [Absolute Value Basic Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/isabsolutevalue-source-line-442-occurrence-2.md) | 442 | `declaration-track:e2b2a90fdfd306ca8dd644546935bd5289a0eaaa7fef18614811edeb8c859c93` |
| 58 | `def` | [toAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/toabsolutevalue.md) | 450 | `declaration-track:847e077cdad55d3f1f6098009659b6990900c62022583f77cf1efb82b88ba57e` |
| 59 | `theorem` | [abv_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-zero.md) | 457 | `result-track:73b18eb9fcb6cb7b850c2772c384845394e2fe45804a16e49ba3e9bd0b1a02ca` |
| 60 | `theorem` | [abv_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-pos.md) | 460 | `result-track:5301fd15305b350261ff9b5a833d7dc4ff6b1db91c2c52838e4bd1fbc5bbe613` |
| 61 | `instance` | [abs_isAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abs-isabsolutevalue.md) | 469 | `declaration-track:e0459f0b6bbded624cbe8fb1b0766f5edb2e528463fe0c1315c9547a11d6848e` |
| 62 | `theorem` | [abv_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-one-source-edition-2.md) | 483 | `result-track:bf5d5004e0681e8e2606d4433837c9bbfd1b7355c70c6fca2270dfcdc8b34cc6` |
| 63 | `def` | [abvHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abvhom.md) | 487 | `declaration-track:14f8d43c51691d3713d266dd3db99fa3efd8bd2b77662badd9a1b59ce74e9bc5` |
| 64 | `theorem` | [abv_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-pow.md) | 490 | `result-track:ce505ffafffb994b15545c028493dec856df803aac464d2f89cf8758c6f26c1e` |
| 65 | `theorem` | [abv_sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-sub-le.md) | 500 | `result-track:52f6040834c84ae81a45fe2edd515c2b5c1dde1bf3f3abdfb1660eafb981ced9` |
| 66 | `theorem` | [sub_abv_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/sub-abv-le-abv-sub.md) | 503 | `result-track:efdb555dda6bbbe075877d242e41e1b94f4e159c573f4b3b171b2adcf8c71723` |
| 67 | `theorem` | [abv_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-neg.md) | 514 | `result-track:d1523e4ca0d5e55cf251a078318b0bd0fe34ec773a7b035f06e12470692d9beb` |
| 68 | `theorem` | [abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-sub.md) | 517 | `result-track:8e3104277dcd6ad6cef28c1f8733b47c5e23b0258d121de7ed2250fedf5d4044` |
| 69 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abs-abv-sub-le-abv-sub.md) | 530 | `result-track:9afe7f682af88fbe6e4ca204fd1b828c8e126292c33453c9bebaa56d3eee9058` |
| 70 | `theorem` | [abv_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-one.md) | 546 | `result-track:9b61a73774c0a8105a15723e219ab87789b94467f11753abe5fa79fe9ef4499e` |
| 71 | `def` | [abvHom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abvhom-source-edition-2.md) | 551 | `declaration-track:6c517e2e74735ffc1c257d95d778f550dea76a20969eb7e5f6f5f2253e572d0c` |
| 72 | `theorem` | [abv_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-inv.md) | 566 | `result-track:a934083e574635d2f4e12c38464fa6f301f7a5d1bf3d3f32202c97111f115403` |
| 73 | `theorem` | [abv_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespacedPublic.lean/declarations/abv-div.md) | 569 | `result-track:c6e66db43ccc7557c62817bf4b5d642959249619a730e6737fe3fc4300fa25a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf5694f7734d7ca9281e33406070218ebd18d19fc06998a6ec2019674d3023be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
