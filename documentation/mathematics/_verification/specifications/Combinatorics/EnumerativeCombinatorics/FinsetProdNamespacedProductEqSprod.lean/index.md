# Verification target: Finset Prod Namespaced Product Eq Sprod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3058691e27fdce2d7e23197a5cf909b0db74dfe7",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant857e716dc419be52e8dcfcc9aedd8492f60a9d36d52966c79428cea3e53de811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3058691e27fdce2d7e23197a5cf909b0db74dfe7`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant857e716dc419be52e8dcfcc9aedd8492f60a9d36d52966c79428cea3e53de811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant857e716dc419be52e8dcfcc9aedd8492f60a9d36d52966c79428cea3e53de811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product.md) | 48 | `declaration-track:eb882bc524caf68a41a1e2341c8ce7bd23a82e5f9132ab27f000e0ae5b521ab7` |
| 2 | `instance` | [instSProd](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/instsprod.md) | 51 | `declaration-track:a83b9b821524eda114f06e09560cd6202e63b3711d94f67fc31b44bd9840011b` |
| 3 | `theorem` | [product_eq_sprod](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-eq-sprod.md) | 55 | `result-track:7b15a48d65394e0023edeeb20bf1556f7853c40cf88833f2e8c4f34f0a52386c` |
| 4 | `theorem` | [product_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-val.md) | 59 | `result-track:697735f76fc440342b5110a483367a85f47ca8d47f5383d84d2eb325c1f33d65` |
| 5 | `theorem` | [mem_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/mem-product.md) | 63 | `result-track:53306834e45d487ac29c27601bce71ba651ed330550048b81683425294cf3783` |
| 6 | `theorem` | [mk_mem_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/mk-mem-product.md) | 66 | `result-track:572138699a0fd7f2005ba9d2d5c9a33a6a6778b79ac90b525ddb20d6a6591bb6` |
| 7 | `theorem` | [coe_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/coe-product.md) | 70 | `result-track:acb02a7d61cb93c2764fa1897f77bd95c7a1d245f81198d2ba2e6405732376b2` |
| 8 | `theorem` | [subset_product_image_fst](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/subset-product-image-fst.md) | 74 | `result-track:af995fee3319e84827a0c68fc0c1ddc72c31e743d257515cf33cd71619d31558` |
| 9 | `theorem` | [subset_product_image_snd](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/subset-product-image-snd.md) | 77 | `result-track:89377732aad6b15ef42b4d7c0f1ed31203df9b1be8234b7803de4c44f39a04a1` |
| 10 | `theorem` | [product_image_fst](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-image-fst.md) | 80 | `result-track:5cbfccf7115a3cfc40f241a1e4e64f65fd1049e0d0ba153d6c723c7d8c089942` |
| 11 | `theorem` | [product_image_snd](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-image-snd.md) | 84 | `result-track:22889f8f0f9fc14a798ad036641996cfd67ccb561797e98a3bdd63cff2996970` |
| 12 | `theorem` | [subset_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/subset-product.md) | 88 | `result-track:c752c2d9297100a848b6a0d10743a2564d199579332877bda1d2e20c401368a6` |
| 13 | `theorem` | [product_subset_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-subset-product.md) | 93 | `result-track:b9cbcff1c0dc3ddb050acea44f62e959ebf5c84def65fede0d830e46e7e24ebf` |
| 14 | `theorem` | [product_subset_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-subset-product-left.md) | 97 | `result-track:ac666ae09a0eb9db4c961fcf11f6a2e3cc0cb0deeb1016046d4443e74881f73f` |
| 15 | `theorem` | [product_subset_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-subset-product-right.md) | 101 | `result-track:bdaf9626341a5e862408e640648a91c7326068f37cbc1eb243fa55ca59085922` |
| 16 | `theorem` | [prodMap_image_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/prodmap-image-product.md) | 104 | `result-track:e7a2b5fc0e0347824ebb8b4bff16a9b51833b560e98acb4dfc73380aa8961a0a` |
| 17 | `theorem` | [prodMap_map_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/prodmap-map-product.md) | 109 | `result-track:d0b4a44bda1eb410d59de7978b7fd46ed071454d37291087c80f6d02cdb15254` |
| 18 | `theorem` | [map_swap_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/map-swap-product.md) | 113 | `result-track:133930505cfcfc47acbe50c47f38eab7713b46dea098b8be1d3b930e8969a367` |
| 19 | `theorem` | [image_swap_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/image-swap-product.md) | 120 | `result-track:6c8832d79ab397b2f064287a8f1b8963741a7445505ac41651e5f59ecae9b961` |
| 20 | `theorem` | [product_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-eq-biunion.md) | 126 | `result-track:be0cbd8fac983bd6859c7986f1ae86f8ab3dd47353b84a2a4882267d4977f75e` |
| 21 | `theorem` | [product_eq_biUnion_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-eq-biunion-right.md) | 132 | `result-track:560ab007d7d810bb845a5f1784a19fff952e96d44b54d26ce468efe898a8426f` |
| 22 | `theorem` | [product_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-biunion.md) | 140 | `result-track:3e0346f0bf6b47d3b0298b6c50760060eadca50b1373d6885aeb261291ac2096` |
| 23 | `theorem` | [card_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/card-product.md) | 145 | `result-track:1d4000cd7ac60db4dc1c5c6469ebaf0676a6430cc6f753882db2ce011bdc2fd1` |
| 24 | `lemma` | [nontrivial_prod_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/nontrivial-prod-iff.md) | 150 | `result-track:35a658eb0c5f9c0d07bca5fdeca8dd698091c520eaa0eb1371ae0aaca3505ef3` |
| 25 | `theorem` | [filter_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/filter-product.md) | 154 | `result-track:7067beca81e0f436712b0de513a05d77decf807817b58deac7bfc04578b3e3fd` |
| 26 | `theorem` | [filter_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/filter-product-left.md) | 159 | `result-track:8ff86d7fbef6f567210d6f86b3d1479476cc8b2285a48a224f438b7d37e6ec44` |
| 27 | `theorem` | [filter_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/filter-product-right.md) | 163 | `result-track:9a4f06241be408fe74b3bb7d8c06fc55892d6af9bc7a8d70f176c7bbccbfe6a6` |
| 28 | `theorem` | [filter_product_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/filter-product-card.md) | 167 | `result-track:9f481ce56257afc0dc405333f131e563b58660ba1e4b7371fd91cd8f1adfd842` |
| 29 | `theorem` | [empty_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/empty-product.md) | 186 | `result-track:a932738531c37234a4dd08e1b7ddfe9708c7eeadc5951d9c64cee5b6f96d348b` |
| 30 | `theorem` | [product_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-empty.md) | 190 | `result-track:f53b580c4dbf19fa2be1c2fa10697c4129fbfe4f32aecfb0a39406a22de5d93f` |
| 31 | `theorem` | [Nonempty.product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/nonempty-product-source-edition-2.md) | 194 | `result-track:e96981a7c93cff9fcbc0317173af3d1d4e898306812573d8dba10c180ebf1765` |
| 32 | `theorem` | [Nonempty.fst](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/nonempty-fst.md) | 199 | `result-track:fa3da99dde956e1d258dcf8477eeab6a9759ef872a9613333bb9747e5ff1abee` |
| 33 | `theorem` | [Nonempty.snd](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/nonempty-snd.md) | 203 | `result-track:2e5d70a4f0ca8c7237d2a6f8a174eba871cbaf08aa62199903bf221d872f1b7a` |
| 34 | `theorem` | [nonempty_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/nonempty-product.md) | 208 | `result-track:d5f646509935bb3866514f493de3b5355cbce039ad0ce268bf6e42a4530a170c` |
| 35 | `theorem` | [product_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-eq-empty.md) | 212 | `result-track:86917a2b98658b529bede6a914d75e4082bb27f8ce8dac55a16196c91e5a19d7` |
| 36 | `theorem` | [singleton_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/singleton-product.md) | 217 | `result-track:4591885ed145e9f415606735fae2722838305b48ffc176282da987a533bad2f5` |
| 37 | `lemma` | [product_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-singleton.md) | 223 | `result-track:9f2157028f3ef1bbe4eef4538cd4d277edbff5f6f3a9ca74fe8034ed0db0750d` |
| 38 | `theorem` | [singleton_product_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/singleton-product-singleton.md) | 227 | `result-track:b7ac933cf86bc06474b52be79d511a856de4333ce5ead65c9fa66c94780d0a18` |
| 39 | `theorem` | [union_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/union-product.md) | 232 | `result-track:96af4770b3f3aec84da5616a206cd5d5466eadd5bfc558e132d994f7cc09da1f` |
| 40 | `theorem` | [product_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-union.md) | 237 | `result-track:ad63d656cc04228752387d9f7d2702847bfb821e536727b942aa4ce6828b8589` |
| 41 | `theorem` | [inter_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/inter-product.md) | 241 | `result-track:897fbc7c40091debd88054bcd3f93240b8c9c34f8fcaa22cccc958cae5d1bc7a` |
| 42 | `theorem` | [product_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-inter.md) | 245 | `result-track:c3c03453962e4d9c15126a3e0b0b4c2012527b0f5031da7bba62f0375b059a83` |
| 43 | `theorem` | [product_inter_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-inter-product.md) | 249 | `result-track:a5ff4245c6d94a3b3663998f56148097a3f2457d2f290f0259f6660d3680a114` |
| 44 | `theorem` | [disjoint_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/disjoint-product.md) | 254 | `result-track:6bd9a33d8775cf997a7089741aceaf860918190af6a3e4f077d04da1ba93d481` |
| 45 | `theorem` | [disjUnion_product](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/disjunion-product.md) | 258 | `result-track:0481dd8ac9f3216c9148324fadf53c3c5b8e8383a4fc64399892ccf9c653a0e7` |
| 46 | `theorem` | [product_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-disjunion.md) | 263 | `result-track:1d5f5c2bf5b5ea382ce25ce72c324e0867944d8cd055f6333fe0463f3a8562a6` |
| 47 | `def` | [diag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag.md) | 275 | `declaration-track:d6641ea11087bfd4fa90b14007de887b99ce21535455c985e13588c86fcdb5f5` |
| 48 | `def` | [offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag.md) | 280 | `declaration-track:8f8324d897138d31e11db52ddf00cfa4a50fc4f99d00f85a196d23d9fe093e9d` |
| 49 | `theorem` | [mem_diag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/mem-diag.md) | 286 | `result-track:6395695e79c51ab37be84fbd7742c9cd123846afea6911156a0acb8d164706a0` |
| 50 | `theorem` | [mem_offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/mem-offdiag.md) | 290 | `result-track:e78eca4eb41350d06e20c6277217791a93364d3de200cd73855cc283b13b2d07` |
| 51 | `theorem` | [coe_offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/coe-offdiag.md) | 296 | `result-track:4d59fd71b88ba32a1302289dc14612b6ddf14c1ca08dc1c5b915522c26fff702` |
| 52 | `theorem` | [diag_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-card.md) | 300 | `result-track:527cfaaed72602784b9273728ff666d52ca3dbcb96f5206b2ab31dee777d4490` |
| 53 | `theorem` | [offDiag_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-card.md) | 316 | `result-track:1729958c1cec599fd5a5356615671ee5957547f67ee46de53d1bfc86403e884b` |
| 54 | `theorem` | [diag_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-mono.md) | 322 | `result-track:bdf296de0a89afdd63d67af805a7ef0b994fa6b698d0125dfee71aafd2cfcc43` |
| 55 | `theorem` | [offDiag_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-mono.md) | 326 | `result-track:e458a9ebe1a547c42f2b9751220e7eef68671e8b9f93f6a0efe8ce8b5f9a9f21` |
| 56 | `theorem` | [diag_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-empty.md) | 330 | `result-track:c094d411f9c55603bf4bb07e499faa6018c9749d6e68ef738fa52f276ee61778` |
| 57 | `theorem` | [offDiag_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-empty.md) | 334 | `result-track:3035a4845294c434179d0d571a490b5935e33d98f184898893198864951bc4b3` |
| 58 | `theorem` | [diag_union_offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-union-offdiag.md) | 338 | `result-track:d2cc72820c2ccd8cc3bad42313f5d578c6f657a420acaecca46961eef8a08b09` |
| 59 | `theorem` | [disjoint_diag_offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/disjoint-diag-offdiag.md) | 343 | `result-track:5be7b5315992ae7621149e5a051b82049fcd87289215612a2c409791f9ef1150` |
| 60 | `theorem` | [product_sdiff_diag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-sdiff-diag.md) | 346 | `result-track:36825a06fdac69342e2555d1325c254e4c036bea930fd2cebb48cd1002e42eaa` |
| 61 | `theorem` | [product_sdiff_offDiag](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/product-sdiff-offdiag.md) | 350 | `result-track:a5493531a2358f8b82d7442b0615d8c6b435a071b32f2d2e4b91481a4fc50444` |
| 62 | `theorem` | [diag_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-inter.md) | 353 | `result-track:a52be71cedee8bff3766c022978ee2a13694cc3438118c2d3e20321b7d91deff` |
| 63 | `theorem` | [offDiag_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-inter.md) | 356 | `result-track:16ca2d209b5ef7f44b550d08e39649faaa5eadc7700ad7e0fda5281ebdc63383` |
| 64 | `theorem` | [diag_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-union.md) | 361 | `result-track:23815649655cdb9c60468fb15299dadcd97564a06c802d1f6ba9232b6f45b5b1` |
| 65 | `theorem` | [offDiag_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-union.md) | 367 | `result-track:4c44fcd84d3e7f53e578008a5a2d77d9876a64c37f6a9a6729963c115a48b9a8` |
| 66 | `theorem` | [offDiag_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-singleton.md) | 376 | `result-track:c8d04655057bc958a6c6775e47dd20fbf955e0aa02af556feb7402c681ef07f4` |
| 67 | `theorem` | [diag_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-singleton.md) | 378 | `result-track:8cfe9ae60aeb30a73c0e89ee5fbed7d94e5260f984052f17c4fc34c9fe7de3f1` |
| 68 | `theorem` | [diag_insert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/diag-insert.md) | 381 | `result-track:6ca3d2d3ae7ba156b8c399f4dc31184cd31865ef52526aee03afc5d0537a9b62` |
| 69 | `theorem` | [offDiag_insert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-insert.md) | 384 | `result-track:496fa4f51f2076836ebf89e8a8c0d2ef1f820ebe5312f2dbf90e7e0520a0f517` |
| 70 | `theorem` | [offDiag_filter_lt_eq_filter_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetProdNamespacedProductEqSprod.lean/declarations/offdiag-filter-lt-eq-filter-le.md) | 388 | `result-track:e834ef6ab2af84b197e63534883603aa053c9dbe6ce6e6be267c406416737814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5216d7770181bd037a423b380591e84f6e932d3126a645ddfc78ffb7597e6963 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Prod/Variant857e716dc419be52e8dcfcc9aedd8492f60a9d36d52966c79428cea3e53de811.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Prod/Variant857e716dc419be52e8dcfcc9aedd8492f60a9d36d52966c79428cea3e53de811.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
