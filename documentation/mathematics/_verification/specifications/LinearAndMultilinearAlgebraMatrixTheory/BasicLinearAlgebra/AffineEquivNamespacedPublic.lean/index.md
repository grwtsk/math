# Verification target: Affine Equiv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a67ddc34e87aee2cab759eef74be013519386a2",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a67ddc34e87aee2cab759eef74be013519386a2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean.json)

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
| 1 | `structure` | [AffineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/affineequiv.md) | 55 | `declaration-track:a0453e17930056bbe31642c2ab188446cfd433928228a0f6998c75572419213f` |
| 2 | `def` | [toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toaffinemap.md) | 73 | `declaration-track:471f7fcb137c8f7b955d56516689eb9328a3d0a559da886e6c0df8af22926697` |
| 3 | `theorem` | [toAffineMap_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toaffinemap-mk.md) | 77 | `result-track:2b6708b763c4ee92f25bfe45d3aa7961931bf4a263b832647e8fbc95f790442b` |
| 4 | `theorem` | [linear_toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linear-toaffinemap.md) | 82 | `result-track:8ed7b327024c8413757d283fe6938a913950fdb61d0c924793031b79ba0089cf` |
| 5 | `theorem` | [toAffineMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toaffinemap-injective.md) | 85 | `result-track:1a50f1981827d88a8cc9416cd107f8e430667c1662f90e5a1ada3157efcd9d78` |
| 6 | `theorem` | [toAffineMap_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toaffinemap-inj.md) | 90 | `result-track:e1fec62f32c3c891b8e3e1545b36efa71ebf0d85cc61e3c976d287a35ea11ef2` |
| 7 | `instance` | [equivLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/equivlike.md) | 94 | `declaration-track:1d07974f0dc12aab253ec5458c2a9b55abd2376549097a97cf72d78575d3bf31` |
| 8 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 101 | `declaration-track:be3ba8d1c10873d2c755f59962f75149b3c92b65438e17f7e436ca5451cf21f6` |
| 9 | `theorem` | [map_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/map-vadd.md) | 105 | `result-track:774c0582b514a30e844c7dcbc6de6cf1090d0c2b144a0ffafca282fe747b8c7d` |
| 10 | `theorem` | [coe_toEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-toequiv.md) | 109 | `result-track:7c775b69cade6a31e3d63880f0dafef505d3229cefa8daf4b229d8d4a484a760` |
| 11 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/instance.md) | 112 | `declaration-track:5f9c2f2f395253782a6833efcdef51a30d3989dca4e3d16f913e64f9653c4752` |
| 12 | `theorem` | [coe_toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-toaffinemap.md) | 116 | `result-track:a1ddafefefb941f086bc6624e80aa64e093715b52feec700f39b6da73d2c8281` |
| 13 | `theorem` | [coe_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-coe.md) | 120 | `result-track:381f86da44fd6210b9374464d50cd0fda1c7dbb2115b4206a55bb2ec709a728b` |
| 14 | `theorem` | [coe_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-linear.md) | 124 | `result-track:5021902a166b22f8d1ae8f6becca909ede3263e9b030670567c538b6bdd89db7` |
| 15 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/ext.md) | 128 | `result-track:cf8466294f926e9773248a46d7527dbe69838af22638c47785b8c9f4357731b7` |
| 16 | `theorem` | [coeFn_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coefn-injective.md) | 131 | `result-track:185e64f1ee1096fcf5b7319cfd9cae343fa48710988d635d69b6c4633f99d46f` |
| 17 | `theorem` | [coeFn_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coefn-inj.md) | 135 | `result-track:97754457e907dd4d19e8a5cc137413f6ca53e3318a2ae31cb83060abbbdc2e12` |
| 18 | `theorem` | [toEquiv_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toequiv-injective.md) | 137 | `result-track:56eb22f147a5973d4a953bfeff6fbd2e120406a909ce2a99803a91b848532f5e` |
| 19 | `theorem` | [toEquiv_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toequiv-inj.md) | 141 | `result-track:36736d73f461ee75ce6f8c103d5a36f5a8288e3b39f66c494db9436b4c72e462` |
| 20 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-mk.md) | 145 | `result-track:c44222738e3dc7fd21566b7c2c8e1495b9de21d07831469ad1bca1f76bec8d32` |
| 21 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/mk.md) | 152 | `declaration-track:10edbb43ae3e42b8d06535fd6aa9a5c9b62ec019a44be3192803cc11e26cda5e` |
| 22 | `theorem` | [coe_mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-mk-source-edition-2.md) | 162 | `result-track:c7a781ff139076c83af949df432b6b17a8c35c682b87dc9cf67298742806dc48` |
| 23 | `theorem` | [linear_mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linear-mk.md) | 166 | `result-track:1c6cd9fe6f2364b43114a361c4f732fbd293217d78cdb23125d5f43677e06f8b` |
| 24 | `def` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/symm.md) | 171 | `declaration-track:0ef7ca7efb8a17ad96e8c77f7c43eaf68f36463fced9368ab2e3f0910372124d` |
| 25 | `theorem` | [toEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toequiv-symm.md) | 180 | `result-track:1f8a9aaad8e08ae896a1fea6238b52724af9419d61eab6611593337eb5d5f32d` |
| 26 | `theorem` | [coe_symm_toEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-symm-toequiv.md) | 184 | `result-track:f6c71a2c724d3adcee3c0db5b15badd07b8b5333b92c17f30b743056670be6a3` |
| 27 | `theorem` | [linear_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linear-symm.md) | 188 | `result-track:e60a56bd034f6f8661a34d7d943b73fedb50a23317ba45cce0362db8a6776d28` |
| 28 | `def` | [Simps.apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/simps-apply.md) | 192 | `declaration-track:7d415f94603ad42d83a8f846e9f74ce3da2abf421789e2d8df773b1c684acd66` |
| 29 | `def` | [Simps.symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/simps-symm-apply.md) | 196 | `declaration-track:05b19fd3ec083296cb5157c26161f8776e5f8006ca4ce4cb54c9a19f2683d1ba` |
| 30 | `theorem` | [bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/bijective.md) | 202 | `result-track:445673a443c914ba6cbc26fa7e955521b212ff5c4072e2bc7eee53e509aba7d7` |
| 31 | `theorem` | [surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/surjective.md) | 205 | `result-track:e073e656ee97b1a18624a4e5bdc1c79ca7202cd02dc410d02145df06619be8ab` |
| 32 | `theorem` | [injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/injective.md) | 208 | `result-track:5723074868f791fb722691ea733514475dd1862adc7333f584e9d706be97afe0` |
| 33 | `def` | [ofBijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/ofbijective.md) | 213 | `declaration-track:b8f0aee27a5789630b7171f3d8afba12e6af338ca0fa2980f092218caddb604f` |
| 34 | `theorem` | [ofBijective.symm_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/ofbijective-symm-eq.md) | 218 | `result-track:b544ed07d4b70508e3e24c6ced8498bd4b358a04b5f7f248f6446546db1b6abd` |
| 35 | `theorem` | [range_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/range-eq.md) | 222 | `result-track:3cec1d4f8996046f09cb448c4a57dad578a95d9f0712cf87b6d31f5a1d70d924` |
| 36 | `theorem` | [apply_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/apply-symm-apply.md) | 225 | `result-track:7c066fe7bcc37becde565d62204c6c234d4cf3d0f5448d5b68f1538aaf09257e` |
| 37 | `theorem` | [symm_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/symm-apply-apply.md) | 229 | `result-track:7e09a1d447b6b59dc15aaa87af33f112e8a21b7b1586f10c606adc2f8ef22200` |
| 38 | `theorem` | [symm_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/symm-apply-eq.md) | 232 | `result-track:accf0eee2d2da58492b657f4a1f169e5073f1cc13bf9c414372c7837e7a80e08` |
| 39 | `theorem` | [eq_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/eq-symm-apply.md) | 235 | `result-track:b9a9b1cea6f4da24c8b679e501dce54e023b5be0527ccb754f2effc5bd968abc` |
| 40 | `theorem` | [apply_eq_iff_eq_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/apply-eq-iff-eq-symm-apply.md) | 239 | `result-track:c15ad444fb3434f147f487f0c08f01a544d775a9bbae7c26004a4c1ed71557a3` |
| 41 | `theorem` | [apply_eq_iff_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/apply-eq-iff-eq.md) | 242 | `result-track:380a534c07b9aef392c9ab350571d933be1f0c5cc18df444e32fe3b693bdaf71` |
| 42 | `theorem` | [image_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/image-symm.md) | 245 | `result-track:125febd1d71aa0f8ad3b4e6a371062e88f6683dabb997ca0d119537294074de2` |
| 43 | `theorem` | [preimage_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/preimage-symm.md) | 249 | `result-track:12c6c9b325eb3843a1b7f3a4da29f956fda75f1c4ce87c9a683b49f510d3aa1c` |
| 44 | `def` | [refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/refl.md) | 256 | `declaration-track:e6ba17f8b47986968126f9a39cba3c17d8573942a03cca4d61c707ee0eb9ad19` |
| 45 | `theorem` | [coe_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-refl.md) | 262 | `result-track:b321755f35e7205612df1b78ed10f30b94d414e9a52cb5a425dc03f72077f688` |
| 46 | `theorem` | [coe_refl_to_affineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-refl-to-affinemap.md) | 266 | `result-track:4983bdfcb3c7041316c7b1e07f3f14746f80ec7ecfe3e0923e80283540f9375a` |
| 47 | `theorem` | [refl_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/refl-apply.md) | 270 | `result-track:5a9608f146cfe2a74e44afe85bef4904dc0427b09b9eafbcd51bd9ea3b9fdb6c` |
| 48 | `theorem` | [toEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toequiv-refl.md) | 274 | `result-track:436017e69a9e65c50d90df1f80b4116fe8668292f50df99f288cf22e810376ba` |
| 49 | `theorem` | [linear_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linear-refl.md) | 278 | `result-track:b7d1b25ebdb1364e501eddd09828c6ee57f9e3a1c35bacfa253a7d2822c57b99` |
| 50 | `theorem` | [symm_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/symm-refl.md) | 282 | `result-track:8c38e2257fc4079cc6930b4aa37ecd4860c43be3f97ec42eb2e5a4cbf7eb1aa0` |
| 51 | `def` | [trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/trans.md) | 289 | `declaration-track:7bce2139ee44a1f6cd7d3787ea760243fc2e09bc3221e5b4cd6c6165a062e6c8` |
| 52 | `theorem` | [coe_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-trans.md) | 296 | `result-track:e4254e75a8fb3f0bd8ddfa73e52bbfb1ed3c92522a8f7a580d4f697e7d3bbfa4` |
| 53 | `theorem` | [coe_trans_to_affineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-trans-to-affinemap.md) | 300 | `result-track:99b9666afabe09c2be32a2abcee5d1528f1603f6085cba7fdb232b238b3c4c2a` |
| 54 | `theorem` | [trans_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/trans-apply.md) | 305 | `result-track:4c29c484d6884db5f1d804c14b116d140165858ccf9dd0b274e6e940c8a805a8` |
| 55 | `theorem` | [trans_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/trans-assoc.md) | 308 | `result-track:68b62ac5caa897d00362151e98a780692ac73c80bc9bc5ffd3b41175271e3b34` |
| 56 | `theorem` | [trans_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/trans-refl.md) | 313 | `result-track:3530a2f43018d6573096ea4c178fbbde6efe672b1ed6df2ef17d9bd96475a800` |
| 57 | `theorem` | [refl_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/refl-trans.md) | 317 | `result-track:31ce1e2031eeb5a5904e2748773020c52244f23c6ff5da7b064ab27134d015f2` |
| 58 | `theorem` | [self_trans_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/self-trans-symm.md) | 321 | `result-track:13aa003da22750e5cc511a2684f65371bee0cee6c9bfa8230e92ffe0e5fb5a6d` |
| 59 | `theorem` | [symm_trans_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/symm-trans-self.md) | 325 | `result-track:6df4906173bfb353bf9114fc691dadc6a1a5f94a7cd6aca57fd35efea2122a43` |
| 60 | `theorem` | [apply_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/apply-linemap.md) | 329 | `result-track:d32061ea0c9038635a3dc9d2d6dead09bccdcdcc73026d553563c2ccda945217` |
| 61 | `instance` | [group](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/group.md) | 333 | `declaration-track:068721b51a8133627c5a3c7cd4c38c71f6254d4b4858346bb223d55caaff2b1b` |
| 62 | `theorem` | [one_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/one-def.md) | 342 | `result-track:15e38b5a39717d31d6ab2c96b0a939dd78196482912290a3817551e9e350df63` |
| 63 | `theorem` | [coe_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-one.md) | 346 | `result-track:9599df234c4f0debe3e691aed4eb78f475f78e66dd653eb06f756218f77d0cce` |
| 64 | `theorem` | [mul_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/mul-def.md) | 349 | `result-track:ef35386209b4fd480d871a7a4cb74d5f45f678afffa170fd401971eee2147d44` |
| 65 | `theorem` | [coe_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-mul.md) | 353 | `result-track:64e30731a86615b3f935f89eb33c140b9e527cd64ec837c845af91e4b85a9658` |
| 66 | `theorem` | [inv_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/inv-def.md) | 356 | `result-track:22594d13c70085f7a68a6af3dde02b669e220122c9a34f8c0fa0b05e889d88c0` |
| 67 | `def` | [linearHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linearhom.md) | 361 | `declaration-track:0013b772cbf0649ddc62637558cc90ee99167203272d25e4515f8ef0987a381b` |
| 68 | `def` | [equivUnitsAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/equivunitsaffinemap.md) | 370 | `declaration-track:3a6a8786df26d26fa79677c44c110360131b9f362437c78c2cd6e2a7667ef7fe` |
| 69 | `def` | [prodCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/prodcongr.md) | 391 | `declaration-track:c2b2d38c762c7b60f2ba35ca1d9ed410e368bad7b9d40e5e32a71d99ed182f52` |
| 70 | `theorem` | [prodCongr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/prodcongr-symm.md) | 397 | `result-track:52300a73959df2aa53af1d275308e0b64e3e5ee197ad752a36ca2958890c0e0c` |
| 71 | `theorem` | [prodCongr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/prodcongr-apply.md) | 401 | `result-track:e1f2873d7a895643a3b557af47e32db7d6b77ac98527ab115c7ced9c2944220a` |
| 72 | `theorem` | [coe_prodCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-prodcongr.md) | 405 | `result-track:113392c3e222a16838b36638f7e952fbfc671a41b743426ca08f3dbecd98d8d1` |
| 73 | `def` | [prodComm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/prodcomm.md) | 417 | `declaration-track:17d7451baf17eba782e766d8c14c5bea28ddf153648249c9be76539c1ec15037` |
| 74 | `theorem` | [prodComm_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/prodcomm-symm.md) | 423 | `result-track:7f090aa2429e6cee4a36ef48df11c368ece19dc652de4bd0cde5fd322634f38e` |
| 75 | `def` | [prodAssoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/prodassoc.md) | 428 | `declaration-track:6dff5f429673c0a16505f915962b0f0169937936bd4bfb7c5d30ef14e2259a2b` |
| 76 | `def` | [vaddConst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/vaddconst.md) | 440 | `declaration-track:8ae68472aa9198df6a0bd917dcc6ed1ec0b5fb1d965ab160ab76e9e0031ba2c9` |
| 77 | `def` | [constVSub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvsub.md) | 447 | `declaration-track:caa6d57ed5182480a7544b551fe7e528f70dd979fb19dc1f351eebb3258e95e4` |
| 78 | `theorem` | [coe_constVSub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-constvsub.md) | 453 | `result-track:ab2e363c68bb217acb43bd6a8725e540772cb2ac07dfd92519af477e59488702` |
| 79 | `theorem` | [coe_constVSub_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-constvsub-symm.md) | 457 | `result-track:53d7b16bd247c0e8df5675dc61200c5f5ab3fbe43607ece771021acd3d71d379` |
| 80 | `def` | [constVAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvadd.md) | 467 | `declaration-track:5023b29a60b0f1f9bb783836a8a7f3a38bd22531d7047ada3b03d6f59b251c65` |
| 81 | `theorem` | [constVAdd_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvadd-zero.md) | 473 | `result-track:55ef90dc5623920eb63fddaac005ba6d2c23fbce4038f86d204f6c1dbb34780f` |
| 82 | `theorem` | [constVAdd_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvadd-add.md) | 477 | `result-track:7b7f56ea50ccad1b899e205b9582fbaf32469439a64f4bb24390af81f0ed0bfa` |
| 83 | `theorem` | [constVAdd_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvadd-symm.md) | 482 | `result-track:014805c78e39c472498746f60088582aaadf151a7bbc0dd9a9ee1b58ed6eb841` |
| 84 | `def` | [constVAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvaddhom.md) | 487 | `declaration-track:04866685b75bc784b9b3fe08498034b9849ced4cb055558bd764a1a8e17917f1` |
| 85 | `theorem` | [constVAdd_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvadd-nsmul.md) | 492 | `result-track:5b24b5f4a8c8e95de4a02409d1d110661c34be7afc49cbefca9d69d9a643f96f` |
| 86 | `theorem` | [constVAdd_zsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/constvadd-zsmul.md) | 495 | `result-track:3d6e7889b6709bde0535ada468f4b11016a938c26d84a7aeac7f5991d86e03bd` |
| 87 | `def` | [homothetyUnitsMulHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/homothetyunitsmulhom.md) | 504 | `declaration-track:9331ed1ba415702196f3f366daecd9f30527dc499cbcf10ec991ecbe53e3f128` |
| 88 | `theorem` | [coe_homothetyUnitsMulHom_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-homothetyunitsmulhom-apply.md) | 508 | `result-track:5277f5c667dcac376b4d0b6084aab78cf5baf76816872850b4465156f3f2a471` |
| 89 | `theorem` | [coe_homothetyUnitsMulHom_apply_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-homothetyunitsmulhom-apply-symm.md) | 513 | `result-track:5f272c4cbf1ece99c314c4c0a2b7b7f451137e971e150165f3e1905875d400e3` |
| 90 | `theorem` | [coe_homothetyUnitsMulHom_eq_homothetyHom_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-homothetyunitsmulhom-eq-homothetyhom-coe.md) | 518 | `result-track:ca824f6fb058e705602bed8b9908c3018f96899abdd9b468740b25107e73de1d` |
| 91 | `def` | [pointReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/pointreflection.md) | 531 | `declaration-track:6ebf99e94461b40c4e4e32c170a930976f665154c912247212dcf98f5a88c085` |
| 92 | `lemma` | [coe_pointReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-pointreflection.md) | 535 | `result-track:ae2fa4f6033d6e9105e5a412c745959d59018e207bac77bf1addb19b98ac53c1` |
| 93 | `theorem` | [pointReflection_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/pointreflection-apply.md) | 541 | `result-track:b18b1a29cbb6135ec46c288115d43e57b8329bbdd067ef1fa50f193b3d848cdd` |
| 94 | `theorem` | [pointReflection_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/pointreflection-symm.md) | 545 | `result-track:528f5e4396727fcda122a85929fe5e24abc10e8cbfcd015a9c3d0df5a9673a3d` |
| 95 | `theorem` | [toEquiv_pointReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toequiv-pointreflection.md) | 549 | `result-track:c1ef46e4580ec706814393ec59416fac6865255205b07d13a370590beb73e968` |
| 96 | `theorem` | [pointReflection_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/pointreflection-self.md) | 553 | `result-track:fb1a9c26f6e07ac37927946228bfd0897952f8b6fce74840bf920a10dad5f223` |
| 97 | `theorem` | [pointReflection_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/pointreflection-involutive.md) | 556 | `result-track:95e80449d87c0397eb531a8a4ef2b76a9244e95e4f76eb2f5a0df131601f3e4b` |
| 98 | `theorem` | [pointReflection_fixed_iff_of_injective_two_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/pointreflection-fixed-iff-of-injective-two-nsmul.md) | 561 | `result-track:78fe9cb014f167bc9270009fa8d1ec3e50f909d5497aa6f91844fc198de61859` |
| 99 | `theorem` | [injective_pointReflection_left_of_injective_two_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/injective-pointreflection-left-of-injective-two-nsmul.md) | 565 | `result-track:5607f594a9b8e67e927a1f5228da9fbfa460220167622cfd95bb749f172f82a9` |
| 100 | `theorem` | [injective_pointReflection_left_of_module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/injective-pointreflection-left-of-module.md) | 570 | `result-track:df6e2746e46f728e991a9b6dc38ad3c79c9ad528d30cb4563a578013ed1843de` |
| 101 | `theorem` | [pointReflection_fixed_iff_of_module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/pointreflection-fixed-iff-of-module.md) | 577 | `result-track:ff38cc27b3396d69d0eee864bb3d0f4e9b10e16ee6a69a7c0ac57494d36e7a9a` |
| 102 | `def` | [toAffineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/toaffineequiv.md) | 586 | `declaration-track:afc2311b432846bd3447f468d7cf6c59134ded82f9889105444d952520c6c9cd` |
| 103 | `theorem` | [coe_toAffineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/coe-toaffineequiv.md) | 592 | `result-track:e82a0b738ebe32ccae9382fcbae84776af692a2cd54b6cdc3e16912f95fe66d0` |
| 104 | `def` | [ofLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/oflinearequiv.md) | 609 | `declaration-track:1a3eecfd35aa300ebbb0163e0241aca6d7c59b23b35ce07883b6e077489a8d3c` |
| 105 | `theorem` | [ofLinearEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/oflinearequiv-apply.md) | 613 | `result-track:115f7b50e2cdb1eb8a8fcb9f728bc80779b056df1dec508dc3c3097b04a7b52a` |
| 106 | `theorem` | [linear_ofLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linear-oflinearequiv.md) | 618 | `result-track:32866fca31e7ea5027ecf495c4f62cb933a743e5876a7c2bd8aa20c26bb5a407` |
| 107 | `theorem` | [ofLinearEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/oflinearequiv-refl.md) | 623 | `result-track:db0068486d30cb47d6c2a2cb41ef2bd002481308e071ee5a9eb8da112388bd0c` |
| 108 | `theorem` | [ofLinearEquiv_trans_ofLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/oflinearequiv-trans-oflinearequiv.md) | 629 | `result-track:dfd501975e7a37a541419d319c0100a52b5893850bf5bc554e61d5306fb6a989` |
| 109 | `def` | [arrowCongrEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongrequiv.md) | 646 | `declaration-track:ffd7b23a226891f30bc6ac8d57f7d42a64974d040e7a50cfcd1d5dfce0a0b680` |
| 110 | `theorem` | [arrowCongrEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongrequiv-apply.md) | 653 | `result-track:a4987ce2e2e3f7ee638d61b0bb595bea8defc04ce12db43c6d97047236cdc33e` |
| 111 | `theorem` | [arrowCongrEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongrequiv-symm-apply.md) | 658 | `result-track:5f05332f0e820c288439cdee68aa1ed7adb23732b02057f41c1f8b9a6f5004e5` |
| 112 | `def` | [arrowCongrₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongr-source-edition-2.md) | 676 | `declaration-track:9b59585524586c549b037ef4e645e414fdc85771a2ca52eec08469c7b3c254ce` |
| 113 | `theorem` | [arrowCongrₗ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongr-apply.md) | 682 | `result-track:55eb75f610cb28854bb53cc5e80a0dea7820ca993fba0070c9bb9221eed7266a` |
| 114 | `theorem` | [arrowCongrₗ_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongr-symm-apply-source-edition-2.md) | 687 | `result-track:dd18ae02ba1848960ae7dfc02295dbda5dc9f646e2469c3e1fd88a0dc4890630` |
| 115 | `def` | [arrowCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongr.md) | 702 | `declaration-track:5a819699a149978f0a5475eae9cf1f5c27ebb29d98015ac2a8d07007025b2f35` |
| 116 | `theorem` | [arrowCongr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongr-apply-source-edition-2.md) | 708 | `result-track:6ee0ec7d51c0531636641f948d47dad9f0c278d5164d5d4626f47b0712d2ffd9` |
| 117 | `theorem` | [arrowCongr_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/arrowcongr-symm-apply.md) | 713 | `result-track:0436f16f0ac2cee799f9406d7463fdfae2a8fe1c2dee63bf2de860d99554b93c` |
| 118 | `def` | [congrLeftₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/congrleft-source-edition-2.md) | 728 | `declaration-track:e75a4c2009e8096021dd8ff61e19d177e4fda68efd82c9ca8378458b0a08cd23` |
| 119 | `theorem` | [congrLeftₗ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/congrleft-apply-source-edition-2.md) | 734 | `result-track:9188ad1d1c5720bcad19b68c04ba45e1a2ca04e2e4156890cfc30f576a616789` |
| 120 | `theorem` | [congrLeftₗ_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/congrleft-symm-apply-source-edition-2.md) | 738 | `result-track:49c0a204f2b6ddddebe025c05b8582c2860323ec31189b4341683f0472d79f91` |
| 121 | `def` | [congrLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/congrleft.md) | 745 | `declaration-track:75677deecd6fccb3433fb6f848b7a1d002505e950d975926291f04eee2f3f607` |
| 122 | `theorem` | [congrLeft_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/congrleft-apply.md) | 751 | `result-track:0f1a78b4260747e4f789f91fba3c57f754d2c66aee33bbb48648c7b2c004d92d` |
| 123 | `theorem` | [congrLeft_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/congrleft-symm-apply.md) | 755 | `result-track:41ff3d0f21de0cca64ae0a0c784f802e6765a920555b6b49bbfc2d465cf91c8e` |
| 124 | `theorem` | [lineMap_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linemap-vadd.md) | 766 | `result-track:e607d2d4037ac6ac6da6b032a24a0173abea75eaba8c919f0920a4a3849f90be` |
| 125 | `theorem` | [lineMap_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/linemap-vsub.md) | 770 | `result-track:80545dd645ac8dd7a9002eab79705e59beba1611e53a2b528526ada3404d3c9b` |
| 126 | `theorem` | [vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/vsub-linemap.md) | 774 | `result-track:1a0149d33570aa470efcf362a67f16c64874c0d509b54079fbc0d76cafec36bb` |
| 127 | `theorem` | [vadd_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/vadd-linemap.md) | 778 | `result-track:abafb84baa295b6df2ff7bad8d68492111a58ed7af1df501d559d3ef914941ad` |
| 128 | `theorem` | [homothety_neg_one_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPublic.lean/declarations/homothety-neg-one-apply.md) | 784 | `result-track:5920bf2e72a36bf17b477131d2c7e9c4e0d4da0c107548347544817f8332c1c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f371a0c7ad2b132b652f8c56965680a5ed9ca76e572bf78732476e37325d02c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
