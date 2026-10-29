# Verification target: Infinite Place Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1b1683265535421c7b8e4dfd69b024efd13b564",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1b1683265535421c7b8e4dfd69b024efd13b564`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Norm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Complex` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NumberField.InfinitePlace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/numberfield-infiniteplace.md) | 54 | `declaration-track:73d2e23be2958f7f4ecfac3b7ccf9747424d3801e21662a9fcb5bc52ad6fd307` |
| 2 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 56 | `declaration-track:c088f80a0771f9e7afa92ff3f8bc0996eb519647c6fd444ce0c0fe6772b36d9e` |
| 3 | `def` | [NumberField.InfinitePlace.mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/numberfield-infiniteplace-mk.md) | 61 | `declaration-track:e4624be0c323b3f2e8689cf7de294e4c7f71830b822e55aa0faabeb57c2d6808` |
| 4 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 66 | `declaration-track:5b39c72c5a754a4f08a0e2de0c38ed97f2e2f4948565cdf5c034f42265850a1a` |
| 5 | `lemma` | [coe_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/coe-apply.md) | 70 | `result-track:825902ed5869eb3d4ec387f726dfafc4fbff7d3f822fc208e844566c4507989f` |
| 6 | `lemma` | [ext](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/ext.md) | 74 | `result-track:f9b8bd07c6078a9ca7ecab2995607627b1068c4d026b15655920f5a6bf283780` |
| 7 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 77 | `declaration-track:d87bdc41215f1c309059b776b54639e33ea9a6f594d8c906aea9e153a96ac66d` |
| 8 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 82 | `declaration-track:ce171f8c7ba6b65fb361813e1431a543f7600d937dd50e79f8ab66f80785e9cc` |
| 9 | `theorem` | [apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/apply.md) | 86 | `result-track:6ca4b118791f03c6d436845430b8953f7b4deb1f811bb5e33a3b13e1a10178ff` |
| 10 | `def` | [embedding](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/embedding.md) | 89 | `declaration-track:2a39d0fc393411477f8479ca818190e897a725c342b2eaeea1a59c2559ed0715` |
| 11 | `theorem` | [mk_embedding](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mk-embedding.md) | 92 | `result-track:51127bcd7362e9b39f358f1f0412d0d20635be805fc1f84f243b463073dd6501` |
| 12 | `theorem` | [mk_conjugate_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mk-conjugate-eq.md) | 95 | `result-track:fc8b8dbe7e6670faa39661d97af9efbedf6d60dffe9ef5da49d3c1e133046851` |
| 13 | `theorem` | [norm_embedding_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/norm-embedding-eq.md) | 99 | `result-track:6f8ee7493fea57c424de494365cf284bb852dc6e214bb866148232a657b8b937` |
| 14 | `theorem` | [eq_iff_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/eq-iff-eq.md) | 104 | `result-track:7d9bbc13f6135588da3c794bc9efcb6f83f3eee894d8494f28b1d6e6028ce0ed` |
| 15 | `theorem` | [le_iff_le](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/le-iff-le.md) | 107 | `result-track:9ca42fb18f92c2825efe779f057d7b2bd902a137a5210b427623adb54553acd8` |
| 16 | `theorem` | [pos_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/pos-iff.md) | 110 | `result-track:1d64ca5f6064af962e70c98a218326876f91f2d34a3cd38c821ec590cac8c536` |
| 17 | `theorem` | [mk_eq_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mk-eq-iff.md) | 113 | `result-track:35dee0bb547ba9f9c03b7f22b4ca4fcdee3d1c5461357e51669a236fb0f7a7f4` |
| 18 | `def` | [IsReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/isreal.md) | 147 | `declaration-track:86bba40c23a6f691065851da2fdd5be5d13984dfcea29058354892b477cd894f` |
| 19 | `def` | [IsComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/iscomplex.md) | 150 | `declaration-track:fa073522262d0633ecfb86d3314dba43fff48f7517bf381164fa49f925090d5a` |
| 20 | `theorem` | [embedding_mk_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/embedding-mk-eq.md) | 152 | `result-track:d83dbc3fe0e2a5268408e0545fea1184288f70c2bb8bf1ec3630a0100b33f27b` |
| 21 | `theorem` | [embedding_mk_eq_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/embedding-mk-eq-of-isreal.md) | 157 | `result-track:43f555ab9d0804980b40ed6bb21390a3b0c9cebc195cf478dc6d0220dc1a0614` |
| 22 | `theorem` | [isReal_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/isreal-iff.md) | 162 | `result-track:3b5b8c861fde2cd90d53fa516544f74730fc08ec57ffc50dbb03b2e03b91151e` |
| 23 | `theorem` | [isComplex_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/iscomplex-iff.md) | 168 | `result-track:1c3be95f9de10563e46c66fbb293fc67829a23cc3153317f56cef52a2bf4b7df` |
| 24 | `theorem` | [conjugate_embedding_eq_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/conjugate-embedding-eq-of-isreal.md) | 178 | `result-track:b91e951de9cdb97943a654655fea32853ec1b4d8fdbbad708d3bbe34a0c6ae97` |
| 25 | `theorem` | [not_isReal_iff_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/not-isreal-iff-iscomplex.md) | 183 | `result-track:bd35c91e25c5cd3c895a3f3ac858024a9b4c2345f3467a7338970ff7afb4ebfe` |
| 26 | `theorem` | [not_isComplex_iff_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/not-iscomplex-iff-isreal.md) | 187 | `result-track:852fe6fe96b2886db118bade555948f6087796430cedba92d6532974bac4c1d0` |
| 27 | `theorem` | [isReal_or_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/isreal-or-iscomplex.md) | 190 | `result-track:2434f34566328d48a1d9616fd57304b36ca2a3bf1e77582df9724335a1e7dc1f` |
| 28 | `theorem` | [ne_of_isReal_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/ne-of-isreal-iscomplex.md) | 193 | `result-track:4a78cbbb329ed30cd6d001b447a681348cf59c0c3cdb8ebe3d2ba1603bf304ed` |
| 29 | `theorem` | [disjoint_isReal_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/disjoint-isreal-iscomplex.md) | 197 | `result-track:8232bfaf62a8b9f0bb0b4e886c29c1bb448fd9ad4265f251ce56d0eb748e8035` |
| 30 | `def` | [embedding_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/embedding-of-isreal.md) | 202 | `declaration-track:be8eb59aafbcf424fd41576595a70c58e7a52fe749f0cce806df5877726073d2` |
| 31 | `theorem` | [embedding_of_isReal_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/embedding-of-isreal-apply.md) | 206 | `result-track:c9fc2d016a45e252563703d67edcf3702efe89255d279665c6120e9ed746a947` |
| 32 | `theorem` | [norm_embedding_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/norm-embedding-of-isreal.md) | 210 | `result-track:3b29513abb9ed6714cca6c587424041adaeaa571e82b999b844d6d803546d993` |
| 33 | `theorem` | [isReal_of_mk_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/isreal-of-mk-isreal.md) | 215 | `result-track:78d96a9a8b433dbd3f1e89915e4f006ad538cec821a1e3a8ddd7aec82628947b` |
| 34 | `lemma` | [isReal_mk_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/isreal-mk-iff.md) | 221 | `result-track:50989c59b6668aaac8531ed9e9c483ba71b2ae2d6efb9d1303794d8c84858448` |
| 35 | `lemma` | [isComplex_mk_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/iscomplex-mk-iff.md) | 225 | `result-track:7a7deba10c328703d851f4db2bcae25e030a7d62d7e14243b5478400fb2d5e55` |
| 36 | `theorem` | [not_isReal_of_mk_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/not-isreal-of-mk-iscomplex.md) | 230 | `result-track:9d387564d91112df7760365f57d38b098afd6c769684ba6a0721504ccb49c2b5` |
| 37 | `def` | [mult](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mult.md) | 236 | `declaration-track:90f4d32f0c953672722ad11c1cce816fd730de84c5f6d9f9b2a244d34cccc138` |
| 38 | `theorem` | [mult_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mult-isreal.md) | 239 | `result-track:9afa5fd123c0a0308703ea7e8a75f176a11d10b9109dca96948e954405a07f76` |
| 39 | `theorem` | [mult_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mult-iscomplex.md) | 244 | `result-track:7e28f4c0e15f3db5aaec6874a67a3639a469ff8234a48a102d3f4aefc4e92062` |
| 40 | `theorem` | [mult_pos](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mult-pos.md) | 248 | `result-track:de4d847bc498039f32246172b029ab50a20906536283c8ca4e199cfb99fcfeb7` |
| 41 | `theorem` | [mult_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mult-ne-zero.md) | 253 | `result-track:6230e8c6af2a9b01c94e9747b7d8f65678d1f070eddfc004ca66f05ced2828e0` |
| 42 | `theorem` | [mult_coe_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mult-coe-ne-zero.md) | 255 | `result-track:865a0227ee8d0f5c279ed5a633e654851caa3ebe7e8476c981e5d51589090c0d` |
| 43 | `theorem` | [one_le_mult](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/one-le-mult.md) | 258 | `result-track:4f2b102489bc2d18738c39ed0a04c6a29397bdaa76ed81e1e6c399981ec37a7a` |
| 44 | `theorem` | [card_filter_mk_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/card-filter-mk-eq.md) | 263 | `result-track:96bc3f00da2c80a4bbd94121b6b287ac1cea51ade6144c3fa9cffaa0c1a3e295` |
| 45 | `instance` | [NumberField.InfinitePlace.fintype](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/numberfield-infiniteplace-fintype.md) | 277 | `declaration-track:1534fea5aaf65cb3be4b6acc6ae845dafce1306b326763409623c5ea92ab4850` |
| 46 | `theorem` | [prod_eq_prod_mul_prod](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/prod-eq-prod-mul-prod.md) | 282 | `result-track:6ea511848db9b17d05c69018f61e4c22bb107b836387b6335a6a70b15201ce11` |
| 47 | `theorem` | [sum_mult_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/sum-mult-eq.md) | 287 | `result-track:32e79c1075df6f912ed284c6537090c82a397c0303043edc49856302433de031` |
| 48 | `def` | [mkReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mkreal.md) | 296 | `declaration-track:dff1e6c120e871e608737b4401153db4c8f39934a9caad192d313c3cba4c4605` |
| 49 | `def` | [mkComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mkcomplex.md) | 305 | `declaration-track:3c41ba5521119ac54d4f68664bab5d91c1b8f77b7d09e9d66bdf1f807acef7e8` |
| 50 | `theorem` | [mkReal_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mkreal-coe.md) | 310 | `result-track:729ac15398ea1c2935b86ed9757d55a16820105c19059712b4d98c7dd98ab621` |
| 51 | `theorem` | [mkComplex_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/mkcomplex-coe.md) | 314 | `result-track:058a70b6514ab904afad2c0f4e753b94c97c58ebdc600e9bf9a927f334a803cf` |
| 52 | `theorem` | [prod_eq_abs_norm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/prod-eq-abs-norm.md) | 321 | `result-track:ec7952e08db13a91d32cfd712fdada31c4bbd6a0cc232bd5f7d781a750a98d20` |
| 53 | `theorem` | [one_le_of_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/one-le-of-lt-one.md) | 333 | `result-track:6ba91049678113613f25d547a27db5161858264f3c56b93b11e307db2b4b9986` |
| 54 | `theorem` | [Infinite Place Basic Namespaced](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-numberfieldinfiniteplace.md) | 348 | `result-track:14b99956fe8e414acc9d502f6bfcaea340e0972dde86c88251b2adc588a218d2` |
| 55 | `theorem` | [Infinite Place Basic Namespaced](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-numberfieldinfiniteplace-source-edition-2.md) | 376 | `result-track:8cf6f030ab77a907994693e14250fccd88408680d95b81bc6220fd538cb1668a` |
| 56 | `abbrev` | [nrRealPlaces](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/nrrealplaces.md) | 387 | `declaration-track:e7c07ece3fc668bec1b7f899f7c074a56140a5b7f80be6abc5e3dea4affe1213` |
| 57 | `abbrev` | [nrComplexPlaces](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/nrcomplexplaces.md) | 393 | `declaration-track:c3b0fb58a5314c987261030bdc6883d70c20ff64d5534d754184688dbcc5f5dd` |
| 58 | `theorem` | [card_real_embeddings](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/card-real-embeddings.md) | 398 | `result-track:79f645129b3de7e351821ac176193e5f53e48acb9d7b73cf80ab4b0a69daeb0e` |
| 59 | `theorem` | [card_eq_nrRealPlaces_add_nrComplexPlaces](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/card-eq-nrrealplaces-add-nrcomplexplaces.md) | 401 | `result-track:9331d1acfe5b884aed49b91dde72c345224b4c34d086fe570cec29f33a9426f2` |
| 60 | `theorem` | [card_complex_embeddings](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/card-complex-embeddings.md) | 409 | `result-track:d7d3296cfdd4d7dd27334d15c6f967bf9c32b1f4fa75e8aaf202b8735218a741` |
| 61 | `theorem` | [card_add_two_mul_card_eq_rank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/card-add-two-mul-card-eq-rank.md) | 426 | `result-track:6bfdec8405b78cc566b9338bd617d657c3e81c86e76f2bc4961e012a380d89a2` |
| 62 | `theorem` | [nrComplexPlaces_eq_zero_of_finrank_eq_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/nrcomplexplaces-eq-zero-of-finrank-eq-one.md) | 435 | `result-track:a0eb7d6d5ed854f0c0375c1c95d0236f0f140a0b1651cf4383a9700517a022da` |
| 63 | `theorem` | [nrRealPlaces_eq_one_of_finrank_eq_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/nrrealplaces-eq-one-of-finrank-eq-one.md) | 438 | `result-track:2ee076ad20c31e9509c8ea6b2c259832a0bdfda2a82e6c9eca7ee8c786dc0c72` |
| 64 | `theorem` | [nrRealPlaces_pos_of_odd_finrank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/nrrealplaces-pos-of-odd-finrank.md) | 443 | `result-track:10b91480d7a2f5532e3dc6b03160167c6fa293741eb6631774c3921262acbc57` |
| 65 | `theorem` | [nrRealPlaces_eq_zero_of_two_lt](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/nrrealplaces-eq-zero-of-two-lt.md) | 455 | `result-track:6b4527603a44cccc093f8bd518dafe6bffead4bf1a7ffe09f6d74c740a215536` |
| 66 | `def` | [infinitePlace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/infiniteplace.md) | 492 | `declaration-track:713eb90bb6f5d1a42f4759b86eb2ec89fe52b6385def0f8c8b6dc4e457fd9eab` |
| 67 | `lemma` | [infinitePlace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/infiniteplace-apply.md) | 495 | `result-track:4d98f99084e037b6725c0fac30da11767a584e42eff4dbf0aaa9e2cb560dd160` |
| 68 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/instance.md) | 500 | `declaration-track:4e446c7cd9ec299a64e746bd4140fb0c171e42bd17fcfe6c5a32c953187bc423` |
| 69 | `lemma` | [isReal_infinitePlace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceBasicNamespaced.lean/declarations/isreal-infiniteplace.md) | 503 | `result-track:91dde01625003d836d56a01466465e0f0ca9e73d0f5a33f2a3950ead0c364f65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=101f845bd0b6fd630b7549cc50ae0a3864ac461a448d945cc163493c0a25d088 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variant15159730d263aaac66986c70fa66a93589c711ca88f823034d642411a95b8a4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
