# Verification target: Ring Theory Tensor Product Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf830b9c8d0364e7ab390a54692f968308e48059",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf830b9c8d0364e7ab390a54692f968308e48059`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean.json)

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
| 1 | `def` | [liftBaseChangeEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftbasechangeequiv.md) | 60 | `declaration-track:9207a4cb8be18d478cf0d27b9c9338d06f4d496e6f4a94eecb45aaae4722945e` |
| 2 | `abbrev` | [liftBaseChange](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftbasechange.md) | 64 | `declaration-track:6b4e6764ec05450ef94d2afd00f1dcbd719003d60dd811b3ad7bf3d32c4c3435` |
| 3 | `lemma` | [liftBaseChange_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftbasechange-tmul.md) | 68 | `result-track:7ec8b3cf46711ef4492ce61bf1f7d4b372e0284f5e6bf44f4cab63564c557e89` |
| 4 | `lemma` | [liftBaseChange_one_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftbasechange-one-tmul.md) | 70 | `result-track:b25a63a522642b3554483689fb040eb9d262255f2f9ee1ef4a2279563ba4db80` |
| 5 | `lemma` | [liftBaseChangeEquiv_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftbasechangeequiv-symm-apply.md) | 73 | `result-track:6a30b47bd17bbc65f9868d0a90cc4ac96ccc7b68a53acb7586e555452b71250f` |
| 6 | `lemma` | [liftBaseChange_comp](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftbasechange-comp.md) | 76 | `result-track:54eec5ca126c6a55d674ebf6e11cfad370258e7cea6c31a503c0ba4c0f2f1a2a` |
| 7 | `lemma` | [range_liftBaseChange](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/range-liftbasechange.md) | 83 | `result-track:5ca36aa4a565905dfcbddfc0ebb2bd3899cd4d9c895395b2a44ae9d9ccd1d4c1` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:d79f27f18b31b307aee1f823ea3d0b13c5f65bf78e92a4f13e40c64fc4756088` |
| 9 | `theorem` | [one_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/one-def.md) | 120 | `result-track:ec6b62038e6c5d9da8209660ec53ba72f92fd433162eea3556db491c81b67240` |
| 10 | `instance` | [instAddCommMonoidWithOne](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instaddcommmonoidwithone.md) | 123 | `declaration-track:3c81350ed697c1834226abc86e6e98147258c9e9862c3b40a3d04847dec7685f` |
| 11 | `theorem` | [natCast_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/natcast-def-source-edition-2.md) | 129 | `result-track:5740beeffee7ac2e23d851cf3ba2541ab3cf0cf491fbc153c3e15b0628d054a0` |
| 12 | `theorem` | [natCast_def'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/natcast-def.md) | 131 | `result-track:18fcd13d7427805a5bad7de3c2f3fd329510a17dbccaa9844c7295589b17f540` |
| 13 | `def` | [mul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/mul.md) | 147 | `declaration-track:68843b89745609b53ef91b47f62bd164ca2ccce8dfa724a887dc7085ea11c03e` |
| 14 | `theorem` | [mul_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/mul-apply.md) | 152 | `result-track:3b311fa1f5ea6c5231ab298dd6dae6f9fb34657dbd89c604c2434cd36e178c64` |
| 15 | `instance` | [instMul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instmul.md) | 157 | `declaration-track:172ea74fc51b1a382572fe0dd425c1c55c38807a6ccb5db114071888d8e586f2` |
| 16 | `theorem` | [tmul_mul_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tmul-mul-tmul.md) | 162 | `result-track:270fcdb539626ac5aacf6d75a945fcf7115c83a7239bd29819e3c3fce0902b5d` |
| 17 | `theorem` | [Ring Theory Tensor Product Basic Namespaced Public](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tmul-source-line-167-occurrence-2.md) | 167 | `result-track:8089363b1737c5173edcd661814f55349ee6d107da3dd5c64e057239b86c57fe` |
| 18 | `theorem` | [Ring Theory Tensor Product Basic Namespaced Public](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tmul.md) | 172 | `result-track:1d0dd177509f822eecf77a776b71ce47515c334aff2ace88146b465b798e0bc2` |
| 19 | `instance` | [instNonUnitalNonAssocSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instnonunitalnonassocsemiring.md) | 177 | `declaration-track:3a62a67cd63a7ffbb7c93e1f3eda86a29cf20dff0b40ff2446a27b413222cbca` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 184 | `declaration-track:bf02e29e57a9572c209bc45cb6803a05ca99428746e4c71bfcb7b7103e805522` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:1ab9388b6422606df8a90daa75deacab7819224c0f866c21874beaa3936a6401` |
| 22 | `theorem` | [one_mul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/one-mul.md) | 217 | `result-track:150fab93409a893fac08f8301696033375fbfc0a9b62b2eafdc03d8bb8cc5268` |
| 23 | `theorem` | [mul_one](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/mul-one.md) | 220 | `result-track:7dcccb475aa6245a992bfbbcabff1923004dba6a5aef27490f10eda559ef1a8e` |
| 24 | `instance` | [instNonAssocSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instnonassocsemiring.md) | 223 | `declaration-track:55c1e048f498d8eec157347d4a0c4e44c9e2d29bbf28a6ac71ecc979c25096df` |
| 25 | `theorem` | [mul_assoc](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/mul-assoc.md) | 237 | `result-track:8f961c2b73092ec95ba5c29cdcef9e12664d6140f9b2e8b7b23fe1e5579202f1` |
| 26 | `instance` | [instNonUnitalSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instnonunitalsemiring.md) | 246 | `declaration-track:7486c682d9d0fe2ddc6433b0c3a66747a0b614e1038c5d6b394a52a21ea29bdc` |
| 27 | `instance` | [instSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instsemiring.md) | 257 | `declaration-track:04f258f01668159a1c063db78c8d95c21fe084dd35c43e4e681710d8e6c66f07` |
| 28 | `theorem` | [tmul_pow](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tmul-pow.md) | 269 | `result-track:9122026e1b1a2b305958ce1399f8df4fbbae92baa4567052c0c7d3876c61294f` |
| 29 | `def` | [includeLeftRingHom](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/includeleftringhom.md) | 276 | `declaration-track:a461b25c80269613bd5abb898d6414eb9ea8cba1c67a372d4effc306d30755c2` |
| 30 | `instance` | [leftAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/leftalgebra.md) | 284 | `declaration-track:2cfc17f706b964e19932d0c48cf8338c473dd5e7ff73bf717ac32b60dc2e1c2b` |
| 31 | `lemma` | [algebraMap_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/algebramap-def.md) | 294 | `result-track:2509c62fb9ed2dead51268f8d956422767beb05a13df434a06e78a640e448e99` |
| 32 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/example-source-edition-2.md) | 297 | `declaration-track:0f31222059daa884f93635999dbaff0a14d114ec6de679dba48fd7d6c85262dd` |
| 33 | `instance` | [instAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instalgebra.md) | 301 | `declaration-track:d8e084e9afd659fa690e22dfcde053033f4be35d881e0aa1bd0ad559d7504d6d` |
| 34 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/algebramap-apply-source-edition-2.md) | 305 | `result-track:9d5b184645254656fb2862ef74fa0eb43577adff7eeecaf4540978a518344082` |
| 35 | `theorem` | [algebraMap_apply'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/algebramap-apply.md) | 309 | `result-track:5c34f778656016e7a8fa8ac515ab92584838dcb89155e29b4585a0fff304c260` |
| 36 | `def` | [includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/includeleft.md) | 314 | `declaration-track:6f2d42a60408d7a2520644814f62be01ab21da8a55d1f2a611d96c3809863d85` |
| 37 | `theorem` | [includeLeft_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/includeleft-apply.md) | 318 | `result-track:76e7481240d06eb076a442c32e7ceab34651b6e4314b7a5c6eb9b2a33a9b52de` |
| 38 | `theorem` | [toLinearMap_includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tolinearmap-includeleft.md) | 322 | `result-track:ce7daafad59fe3398a13a9862848b6b7aea1e5e8bd70e71b69a09643b009c094` |
| 39 | `def` | [includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/includeright.md) | 326 | `declaration-track:58315ac9a79a164a185d4b098ecfe1754b9b72e234eca4d83608fe7edca17409` |
| 40 | `theorem` | [includeRight_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/includeright-apply.md) | 333 | `result-track:b4dca34dbcbdc32fae3e0cd6926dd45221424098e1ed309448cc493b7fa00262` |
| 41 | `theorem` | [toLinearMap_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tolinearmap-includeright.md) | 336 | `result-track:96885fb7155062f4036b3d26ebbe28ad6be541d6e6c563025a137e00e874a418` |
| 42 | `theorem` | [includeLeftRingHom_comp_algebraMap](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/includeleftringhom-comp-algebramap.md) | 339 | `result-track:90730e2369d3ec938137fea25cc1a427d4012acb5bf4b4eb07cf34f6a4de3f3d` |
| 43 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 356 | `result-track:a1819f0f9ff2642b5ed0fbe6d5f423c229ba357100da44c4ee263185b7d8c286` |
| 44 | `theorem` | [ext'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/ext.md) | 366 | `result-track:27f35bf376481e46da7307c702cc12754f28ffa111eceefea57f4982609dfda4` |
| 45 | `lemma` | [ringHom_ext](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/ringhom-ext.md) | 370 | `result-track:5d7efa7effa7f0e092b2772783c42058120e3668d01ee5a24b0b1684df3efae5` |
| 46 | `instance` | [instAddCommGroupWithOne](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instaddcommgroupwithone.md) | 387 | `declaration-track:5c5c08148033d95dd5ff824e083e380bd794cfb68d54729eda9ae1c6f5b3f923` |
| 47 | `theorem` | [intCast_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/intcast-def-source-edition-2.md) | 394 | `result-track:74634314a5ed7a182b1c9bd48ab6793381962f95a4f83413ed97ddbe4eea39fe` |
| 48 | `instance` | [instNonUnitalNonAssocRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instnonunitalnonassocring.md) | 403 | `declaration-track:2ee013fdc870c279a8911e01495babdf7939942dcc3b1c8be6c36d20de49fea5` |
| 49 | `instance` | [instNonAssocRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instnonassocring.md) | 414 | `declaration-track:821291eef6870129f97ca2abb94377b2c23724a81e0ec605f29cd36e876bda9f` |
| 50 | `instance` | [instNonUnitalRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instnonunitalring.md) | 426 | `declaration-track:3ef0e4fb24e7d2b379d23bdab5f4a0dddc5d33bd948ef6681192057f16687d2f` |
| 51 | `instance` | [instCommSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instcommsemiring.md) | 437 | `declaration-track:c33debc4648c55d636af2c7fbc126fa8e023a0d4bc133b5d9111b959d00af61f` |
| 52 | `instance` | [instRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instring.md) | 457 | `declaration-track:18e3c3967995a945fb004b38faadbff1d4964e8c252c0c11bb7b5a269aefa28b` |
| 53 | `theorem` | [intCast_def'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/intcast-def.md) | 462 | `result-track:08657384af5cbf93c412003bcd2ff9df6039458c8daec8946da5b111edec221d` |
| 54 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/example-source-edition-5.md) | 466 | `declaration-track:d43d78ae69a0dfeb75055975bf450f6fea0fe56ab8d5fd14bf82d574cba6cbf7` |
| 55 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/example-source-edition-4.md) | 469 | `declaration-track:b18a8f51ab1e36a096f49e726f861b8c9105336f9d01fdbacd2f1dcc2b5d3a95` |
| 56 | `instance` | [instCommRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instcommring.md) | 478 | `declaration-track:1af344fc7856c8b4a5ae263972e28e86e816659a35b2500d8fbdb9449e582fc8` |
| 57 | `abbrev` | [rightAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/rightalgebra.md) | 492 | `declaration-track:431496c6f49c2e243af10ca0616cbe3b60e4c2befab2783becaf49d19e188bcb` |
| 58 | `lemma` | [algebraMap_eq_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/algebramap-eq-includeright.md) | 501 | `result-track:2d9f7e7686089a9944f7d7b374eb5c6561235b978c91ef1c6332bfd40d08200f` |
| 59 | `instance` | [right_isScalarTower](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/right-isscalartower.md) | 505 | `declaration-track:f9ba7dbb5658428cc9190ed8f50557c3e96469e569e89c269c58b5bd208d094a` |
| 60 | `lemma` | [right_algebraMap_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/right-algebramap-apply.md) | 508 | `result-track:1bce6f72d71cd29e0654c62fa11de4ec428345b56156b15eb6482bcfd9115ec9` |
| 61 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 510 | `declaration-track:660eb0b6d7b2d19c16efb5aa7aea688ae5804c702c332a9506fabdcfdf1c538b` |
| 62 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instance.md) | 515 | `declaration-track:11a15715ff0582ff6ba104b16ff4f2b6f4c99b676402b48244845a083542e3b4` |
| 63 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/example-source-edition-3.md) | 522 | `declaration-track:14f06aee2273c7867d60f9638a0bdc8a68bf8b1fd81a60612db2476bd9c5b674` |
| 64 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/example.md) | 527 | `declaration-track:024e876f0f97ac4b6b2eb6345fc031dd61ee1ff62c482f4980abbce9157d405e` |
| 65 | `lemma` | [closure_range_union_range_eq_top](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/closure-range-union-range-eq-top.md) | 530 | `result-track:34730b29dbbee20569b22ba4e8b577ebf258b1884b11463cd724af3a45e79995` |
| 66 | `lemma` | [adjoin_one_tmul_image_eq_top](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/adjoin-one-tmul-image-eq-top.md) | 548 | `result-track:73078d742477808958cd7866c91aa84b88543d814d6739bae3670da03b4c64cf` |
| 67 | `lemma` | [mk_one_injective_of_isScalarTower](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/mk-one-injective-of-isscalartower.md) | 561 | `result-track:a90798ee1b80e375e1cb94c2cc8396716e1f68002efa10007d3ac0b9815126c2` |
| 68 | `lemma` | [Algebra.baseChange_lmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/algebra-basechange-lmul.md) | 572 | `result-track:c5792781ebf1302ebc5c4d0ddecdb1b91966771fa737e0e31c218f7060c5796b` |
| 69 | `def` | [moduleAux](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/moduleaux.md) | 588 | `declaration-track:9edee11f1bb543f7cd9e127fc4fe5981f48f75f172f50f91a35f8a5b46809437` |
| 70 | `theorem` | [moduleAux_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/moduleaux-apply.md) | 598 | `result-track:4b0902dcc9e643c541b836e6836d0fa7f4d93a5df8dc8c073184736ad832a8bd` |
| 71 | `def` | [module](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/module.md) | 618 | `declaration-track:4cbb6d381e0cdecd64d7d83575b24e70899812a972f66f21065d5967a5744f1b` |
| 72 | `theorem` | [smul_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/smul-def.md) | 648 | `result-track:22f326c1033817c61da0b679693ba168dbb5fb0560b05453653466bf2b6ed117` |
| 73 | `theorem` | [linearMap_comp_mul'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/linearmap-comp-mul.md) | 653 | `result-track:ac9457d3802253fd61d02b30d0d016df38a6caf29f29002ec81d23377710b1b0` |
| 74 | `lemma` | [Submodule.map_range_rTensor_subtype_lid](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/submodule-map-range-rtensor-subtype-lid.md) | 666 | `result-track:7eae004b5d5511428fbb7d935994cc5aae5bb8af79a4f33b96052fd1b115cb6d` |
| 75 | `theorem` | [TensorProduct.mk_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tensorproduct-mk-surjective.md) | 682 | `result-track:1637b7791c9317170e09dec32fa22b7039a9ae7aeb7cf29103bacff76d67866d` |
| 76 | `lemma` | [TensorProduct.flip_mk_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tensorproduct-flip-mk-surjective.md) | 691 | `result-track:a62a5f2a392c67ae3842b4756ad4697454e9d155c68d68b86adaff725ea1145f` |
| 77 | `lemma` | [Algebra.TensorProduct.includeRight_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/algebra-tensorproduct-includeright-surjective.md) | 700 | `result-track:64f0d1d8f177a3167d824e39fd49d1e6c3f255f41ac1402b22d01511e746c565` |
| 78 | `lemma` | [Algebra.TensorProduct.includeLeft_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/algebra-tensorproduct-includeleft-surjective.md) | 704 | `result-track:a7a1256a5e7653a0b5febd4ff2177567e5b87bdb870f8a6b852c3b8950003141` |
| 79 | `theorem` | [TensorProduct.Algebra.mul'_comp_tensorTensorTensorComm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/tensorproduct-algebra-mul-comp-tensortensortensorcomm.md) | 717 | `result-track:6cf0febbfd94f5eb2c2015105514568e8448b7fa85c5ee634a1f6a7bb3f3b9be` |
| 80 | `lemma` | [LinearMap.mul'_tensor](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/linearmap-mul-tensor.md) | 723 | `result-track:c4a49914e9fea1c67c61436dcfa751278ec1ca605045bb5cd1e6b3a3129e9f70` |
| 81 | `lemma` | [LinearMap.mulLeft_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/linearmap-mulleft-tmul.md) | 727 | `result-track:f03bcebd6dbb07b932d67c7166a64f2f8ec99d0d4ac16fa761dfe631a807a061` |
| 82 | `lemma` | [LinearMap.mulRight_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/linearmap-mulright-tmul.md) | 731 | `result-track:b01ec212e3791dcb75ad808a1a6700a1310176ee4b5784757d33ea8c4886761c` |
| 83 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 738 | `declaration-track:eb517ddebabbf92927daef057a29d6b14e9b81ef52a6de2e00642b0299cffde5` |
| 84 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 746 | `declaration-track:5b975e8e5a99f3061be580e48a3dff08af05bef9784e2727357624e374b4061f` |
| 85 | `def` | [liftEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftequiv.md) | 765 | `declaration-track:3f26917d9ff31719ef569ae2980bbd323eec60740514d9b97c55e74d6e8df9e0` |
| 86 | `lemma` | [liftEquiv_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftequiv-tmul.md) | 777 | `result-track:217fe2f7f4cee5a418eb16f7855fa3136d04328929f8d6c772aaeef80dde4b12` |
| 87 | `lemma` | [liftEquiv_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/liftequiv-symm-apply.md) | 780 | `result-track:1924f84458b7953f505aff8078aad80b05341555d1656663a2f8f35350236f40` |
| 88 | `lemma` | [Ring Theory Tensor Product Basic Namespaced Public](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespacedPublic.lean/declarations/ext-ring.md) | 784 | `result-track:ac3ddf52749426b2a1121a2d3e75c141dedd331ab3ade1428e3a8ae0245f22df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e655f5c1434dd634231990da9414dfbe49bf6f46bd19e063f9cbcdd91df908b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant95c370424cbcb74a373459fbacbb9be2f9a74a586692ea649018510e5a367946.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
