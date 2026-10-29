# Verification target: Pointwise Finset Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0046c403d7dbf72ccf4e849dbda05e2c93053c54",
  "lexical_observation_count": 239,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant583c5bda6b78379720190558a127d9fd4eab42a81920e4db72e9f2f792b01299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0046c403d7dbf72ccf4e849dbda05e2c93053c54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant583c5bda6b78379720190558a127d9fd4eab42a81920e4db72e9f2f792b01299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant583c5bda6b78379720190558a127d9fd4eab42a81920e4db72e9f2f792b01299.lean.json)

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
| 1 | `def` | [one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one.md) | 71 | `declaration-track:5f1fcb7ebebe0162b8bb88bf9cb6f8b39473bd06ed47ad808786d93041bbf27d` |
| 2 | `theorem` | [mem_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mem-one.md) | 77 | `result-track:01d739be2a6b7ec52b017cf97dccafd191af0bab67a5d31e17a80cc38698f853` |
| 3 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-one.md) | 81 | `result-track:73d5e74c829d16dd3ca84538ef522bd6799410460721d9cb9d265e6faa6dd3e9` |
| 4 | `lemma` | [coe_eq_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-eq-one.md) | 85 | `result-track:d4a16e4ec1ced51da1c6ff5c3b3bad7095b309b86bb08e7b2addfa4035f5dcd9` |
| 5 | `theorem` | [one_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-subset.md) | 88 | `result-track:7a85d7444e589109c145356ca1c196204ef23478f9c5e28ad4caa8276b87cd26` |
| 6 | `theorem` | [singleton_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singleton-one.md) | 94 | `result-track:dc1b6ff632b9622d156516249e4a1ee1c8369124779844b501eaff9ce0a20415` |
| 7 | `theorem` | [one_mem_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-mem-one.md) | 98 | `result-track:16805d0df8fa2c297fabcaa5b39ecfcd6993d1d29702d83df47c0e3d1c8c676e` |
| 8 | `theorem` | [one_nonempty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-nonempty.md) | 102 | `result-track:3268b1938d934e477cf1a6faff594cccfa0db9b11b1327dacf308b19e9827b6e` |
| 9 | `theorem` | [map_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/map-one.md) | 106 | `result-track:c92c8442eff3e2e8f851f9c1163e4193b617f81948c45a33d613dcff64f809ac` |
| 10 | `theorem` | [image_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-one.md) | 110 | `result-track:65703176f91a7b827ec7ab68b73518dbb16a0bba9402b325496d00dd5f10c057` |
| 11 | `theorem` | [subset_one_iff_eq](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/subset-one-iff-eq.md) | 114 | `result-track:c889637715828aa70a93202a8fb59ca97230fb4ad5180d7691c6da15c55b323b` |
| 12 | `theorem` | [Nonempty.subset_one_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-subset-one-iff.md) | 118 | `result-track:71e678aceae1ff2968900619cdb917b633c6f39ae2f78f4d3a6423ba2fc15445` |
| 13 | `theorem` | [card_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-one.md) | 122 | `result-track:f6ccaea6f0b1e22e5efeda26024a19f87ecf5a8945fda03bcbc1fb2d4b156a8f` |
| 14 | `def` | [singletonOneHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singletononehom.md) | 127 | `declaration-track:e9f08300a544483e3e9e217ca3960719cfa9533533869cbe6784b7978921d774` |
| 15 | `theorem` | [coe_singletonOneHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-singletononehom.md) | 131 | `result-track:2b7215eaa5effaddcf13e330c8e6a81f626dce63901b2e59c579284f160b3482` |
| 16 | `theorem` | [singletonOneHom_apply](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singletononehom-apply.md) | 135 | `result-track:dc820613a8a5a940b8057bdeea5e399f52bccdef4f198f0d74327212ed883152` |
| 17 | `def` | [imageOneHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/imageonehom.md) | 140 | `declaration-track:2aea5641c4b15dafcb70b45d807cb8010304aa5433f3862259f3d735978d5ffc` |
| 18 | `lemma` | [sup_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-one-source-edition-2.md) | 146 | `result-track:648f278c2a9afd772fa7daafee0c02eca09b9ed1bf9f026773ce6ebf9eef0fdf` |
| 19 | `lemma` | [sup'_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-one.md) | 149 | `result-track:41d3e4e91ae07079fcd17fc6e9683c50a3d06ffa0ab120bc0d7b98e0a5232c8d` |
| 20 | `lemma` | [inf_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-one-source-edition-2.md) | 152 | `result-track:7988ce51b7c0a456ed113171ec0e2fbc3b9eefe7c14c04feb4b4d575397f8754` |
| 21 | `lemma` | [inf'_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-one.md) | 155 | `result-track:11c3c0f86387e2fb7eb0a4cb21b25a71c12ef477e00d538045d5073b21969b79` |
| 22 | `lemma` | [max_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/max-one.md) | 158 | `result-track:2b729f071c4caef6e3e2a9419811b07033b69dbe96f0b5ebcc53167af1d8969f` |
| 23 | `lemma` | [min_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/min-one-source-edition-2.md) | 161 | `result-track:a351ae12c1641028435971357bc77c2f384a9949e5699cbf2575ab2fd1bb8cfd` |
| 24 | `lemma` | [max'_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/max-one-source-edition-2.md) | 164 | `result-track:8b0e2dca04a7fbb085ea2c19b2f119ed0eeee623e1229e7bd7607047ac24d704` |
| 25 | `lemma` | [min'_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/min-one.md) | 167 | `result-track:270342b3dec94b56937637ebec5624a7f0efceeb20410b23b81baabab49d0d25` |
| 26 | `lemma` | [image_op_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-op-one.md) | 170 | `result-track:da2c97f38e15a5ead1cdd475521b21575d70926b8cba5964e6adf7ccc6918a58` |
| 27 | `lemma` | [map_op_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/map-op-one.md) | 173 | `result-track:c949ca2653cc3a97ce386a3a986a76fbc81f10cc35ca847d6230489bdf548b39` |
| 28 | `lemma` | [one_product_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-product-one.md) | 176 | `result-track:4c7240f7ae1112c16918981e88c21bb256f5f888dbdb83f1dbb116e70cdc5193` |
| 29 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv.md) | 189 | `declaration-track:6b3632a395d6999ad1cc68815f1fa112454995499a56fa89a9dbd4ed0a030b40` |
| 30 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-def.md) | 195 | `result-track:70c580d77e81ebc2781bbc7b259ec0b96fcf6af5d32ce661f6f27b4569976496` |
| 31 | `lemma` | [image_inv_eq_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-inv-eq-inv.md) | 198 | `result-track:bb0e1cebcc7a629295eb2480835638cab37ae635ace844c34dfdb5a3eb055f63` |
| 32 | `theorem` | [mem_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mem-inv.md) | 201 | `result-track:244a8b4473beab962b6f4370d960b6d46a0ad150d3e17497be2918533a15f68d` |
| 33 | `theorem` | [inv_mem_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-mem-inv.md) | 205 | `result-track:8bd0dc6677efd8aa2533c76f43ca8f534aa1bfab9f9f0adc4eab6e36b58ab273` |
| 34 | `theorem` | [card_inv_le](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-inv-le.md) | 209 | `result-track:d37427627ec03f95c220c3a730bad877e8855a50edec206d31eba1d988918c99` |
| 35 | `theorem` | [inv_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-empty.md) | 213 | `result-track:db93721e744e5beef06bce2008db45a548eef83da6f4bcf331c1fe83786410c6` |
| 36 | `theorem` | [inv_nonempty_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-nonempty-iff.md) | 217 | `result-track:96feaa410aed2b393278ebafabeea08d5df7d64816f683786a1d690fb488f27e` |
| 37 | `theorem` | [inv_eq_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-eq-empty.md) | 225 | `result-track:417a8c034d2cedd493eca0a6d4180941a63f74a50fe70453cf7d494edcfe1e4a` |
| 38 | `theorem` | [inv_subset_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-subset-inv.md) | 228 | `result-track:7c29d267f35c50d0d153d67e1de6659ad7b3d429af3b513382a2b4b27952866f` |
| 39 | `theorem` | [inv_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-singleton.md) | 232 | `result-track:8f683eb9c8959561835cd059ab4e0d512dbbdd1b41dddc4d4a8cae552202b57f` |
| 40 | `theorem` | [inv_insert](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-insert.md) | 236 | `result-track:b726fadf6304df11152f1367068b20ebf7d163bbc801cfaf4f66f5e26b155dd0` |
| 41 | `lemma` | [sup_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-inv-source-edition-2.md) | 240 | `result-track:92a66c424bf59310bccdad55bb54b1ec5c413483b09351611ad5148177651ef5` |
| 42 | `lemma` | [sup'_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-inv.md) | 245 | `result-track:6ea438120cf6e053a169845db37e8a730dbfaf5a91cd6cb94619550dedd1f797` |
| 43 | `lemma` | [inf_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-inv.md) | 250 | `result-track:0b12bfce74c0919dd91030afdbfaa8cced7b14934b06cfb5417706a57ebcbf41` |
| 44 | `lemma` | [inf'_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-inv-source-edition-2.md) | 255 | `result-track:4b2c612d18c2667948c5d259acc25a3c3c0252e2dd5401a3464bee1b860bd207` |
| 45 | `lemma` | [image_op_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-op-inv.md) | 259 | `result-track:20f929a2f0c08c2b124b26ba30cf8b6656dcb026a18cf471fa257b4b249740e3` |
| 46 | `lemma` | [map_op_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/map-op-inv.md) | 263 | `result-track:fd1a7c78a4edd3d2521b7b57d77e2afb1e0e0de99ab4d87e73e4ff0c9f22df26` |
| 47 | `lemma` | [mem_inv'](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mem-inv-source-edition-2.md) | 274 | `result-track:51f3690033b5be5c4d8f1c171f4038f068e22ba78ef8e6002e93619d5665351a` |
| 48 | `theorem` | [inv_filter](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-filter.md) | 277 | `result-track:ac74464110018bbeac90d82fbe1f606a64e1824eeaa51ed2ae4569646b8194c6` |
| 49 | `theorem` | [inv_filter_univ](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-filter-univ.md) | 282 | `result-track:37a28af10c7fc22fa767658e544e2c4e1c967446edc5304d76c8ac6b04f5d036` |
| 50 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-inv.md) | 287 | `result-track:ac7333eba455d4cfbd4f1c6b0611fe003b5a0cfa56b957dae6875f1b3de8ebee` |
| 51 | `theorem` | [card_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-inv.md) | 290 | `result-track:2aecfeaf5a9b8aa8961bdaf4c61b122f8a5d1c0806f7eecaa9120276bb21e665` |
| 52 | `theorem` | [preimage_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/preimage-inv.md) | 293 | `result-track:bdf6543630a3622e3269b8ed007abeffca780ffd70139c6ba54a94ea42b1bf49` |
| 53 | `lemma` | [inv_univ](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-univ.md) | 297 | `result-track:274e077395a5cdb1dc25cb8f6fe8db77f872b3c6d95e41405ffbcba9d578f4b7` |
| 54 | `lemma` | [inv_inter](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-inter.md) | 300 | `result-track:6ee8a833756c1b13c2612e58df9da9643dc49a7ceaa6c6b17d91196df963e0f8` |
| 55 | `lemma` | [inv_product](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-product.md) | 303 | `result-track:14b2977c8ec15c298fa0da1a069ddfc25699f3b7a9d597e6d6ea3da993d21950` |
| 56 | `def` | [mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul.md) | 323 | `declaration-track:e021c9e3d659d966d347c0fde30aae4ad72bb5437ecac1fc33e24bdfffb7f778` |
| 57 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-def.md) | 329 | `result-track:6a5f4cfa18c8b7e0cc55c898a733da0adc9f03516f4d5c194c05302522496d86` |
| 58 | `theorem` | [image_mul_product](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-mul-product.md) | 333 | `result-track:29403451a0318a4882c0f08ec978a8de3d1a26dec8636c4ac9383bd7dab6acea` |
| 59 | `theorem` | [mem_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mem-mul.md) | 337 | `result-track:d0c9e06e8d2ce2b65533db94efdb870c1732a457e746a1a9f09fe941556d3d8b` |
| 60 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-mul.md) | 340 | `result-track:658b5eb0989e2b748646651d92074d1a209bb5bda2a4dc26041c4a305203c661` |
| 61 | `theorem` | [mul_mem_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-mem-mul.md) | 344 | `result-track:0e840fc7fd516eeb4d4ec55f383ac5ef5401e587f7cb9a6765eac915ebf55729` |
| 62 | `theorem` | [card_mul_le](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-mul-le.md) | 348 | `result-track:71ebfbca1927a56fd8baedcefec7be72c270397eb84796ccc098f2359f1ff0dc` |
| 63 | `theorem` | [card_mul_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-mul-iff.md) | 352 | `result-track:3e9383e92788de1803f9b47fa4cc3831c92eaeccdf513fbcef73700e3dd3fb69` |
| 64 | `theorem` | [empty_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/empty-mul.md) | 357 | `result-track:833bf5b302ceed179af1f43b1a359ad547635e2fca32bd010f1e7717c070f7b7` |
| 65 | `theorem` | [mul_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-empty.md) | 361 | `result-track:4e45ee50821d824d5d3b6811816d39a1af97941825f4327408884cd433faadcb` |
| 66 | `theorem` | [mul_eq_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-eq-empty.md) | 365 | `result-track:ba0fcc5305795ae481690989c20278fda05aa596a4fbf69c7fd657e6ee24cc0d` |
| 67 | `theorem` | [mul_nonempty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-nonempty.md) | 369 | `result-track:b5ca68f6cf749d6f7bdbacbf443b6dbf86c3be5f0d41d1d74fdc3801b997273d` |
| 68 | `theorem` | [Nonempty.mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-mul.md) | 373 | `result-track:e8b3ac7d5a56b719f1835e3f96667645143d0f8d5eb533140c329a5a4075ca11` |
| 69 | `theorem` | [Nonempty.of_mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-of-mul-left.md) | 377 | `result-track:a6e8b6b478a93fe8f455511c27fcd6cad5d595a2281ac37df51bf1e9b009ca69` |
| 70 | `theorem` | [Nonempty.of_mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-of-mul-right.md) | 381 | `result-track:7bad89d1ad5f81b5788c59719299e44cd631fc404e1f834809e2375b1418ad74` |
| 71 | `theorem` | [singleton_mul_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singleton-mul-singleton.md) | 385 | `result-track:afa656e0e04529bf9a807dd51265f9a1b3adabd7788ed21537f43e3ac4eb2ab4` |
| 72 | `theorem` | [mul_subset_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-subset-mul.md) | 389 | `result-track:87d73df761da11bb459f141b4c593aeec87b06f9ee2049745563e6d6a16bca9a` |
| 73 | `theorem` | [mul_subset_mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-subset-mul-left.md) | 393 | `result-track:f86f822384b27a73204bf0039085050357b6188416da424f034911b57637a22b` |
| 74 | `theorem` | [mul_subset_mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-subset-mul-right.md) | 397 | `result-track:24035b6f83e6d1c26d119fd312455d3f9bb56b2da5e136c991a9086e64a5942c` |
| 75 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/instance-source-edition-2.md) | 400 | `declaration-track:de2a4280b6a962ff136ed072c97b9cd9e0cf9ace1ab3e6a575280aa54c2e132c` |
| 76 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/instance.md) | 401 | `declaration-track:42debcf2c7ea50c1aed72c48765185e95f5af712f60ab7f54bb0bcd66592e51b` |
| 77 | `theorem` | [mul_subset_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-subset-iff.md) | 404 | `result-track:33c81644032d8fb7d486a32ce406f0791c24cecc78be66c70c397b82075039bc` |
| 78 | `theorem` | [union_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/union-mul.md) | 408 | `result-track:66186ae8b45c473633c214a189d559d4c70ec77bdc881bef6585417897d1920b` |
| 79 | `theorem` | [mul_union](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-union.md) | 412 | `result-track:96ae0e357c1786cbb5c8983472377f3619ae2c993cbf61995e28e9be63c4f333` |
| 80 | `theorem` | [inter_mul_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inter-mul-subset.md) | 416 | `result-track:1ec17b497efc515cfde12120b9d092c6ca1724cb2970cb2cd6b9d83cab0c4e77` |
| 81 | `theorem` | [mul_inter_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-inter-subset.md) | 420 | `result-track:b092f84149e507b401a48fc5f348a6ca131ff86370193544e3b7ae71c3b88744` |
| 82 | `theorem` | [inter_mul_union_subset_union](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inter-mul-union-subset-union.md) | 424 | `result-track:45fc2029c53f000d19d221b1e9e32d0461f4e6af488036b05038205b34b996c4` |
| 83 | `theorem` | [union_mul_inter_subset_union](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/union-mul-inter-subset-union.md) | 428 | `result-track:286f849f87d58c59d88c2e921055005a65e151d121691891234a8ced862d9ba8` |
| 84 | `theorem` | [subset_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/subset-mul.md) | 436 | `result-track:f8fc5c6405e8c30d9b92c69e14e2bf449d42b427f166f0057e542b19394d84c3` |
| 85 | `theorem` | [image_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-mul.md) | 441 | `result-track:28343cbcc2cba39eb964c577c8d2c3639d55bd6f5e433c496605588fce7f20e1` |
| 86 | `lemma` | [image_op_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-op-mul.md) | 445 | `result-track:c51aec4c93f445f50202c86603fea1e6ff372f689ef94059376491ed15b46832` |
| 87 | `lemma` | [product_mul_product_comm](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/product-mul-product-comm.md) | 449 | `result-track:aa09593fee79c84f95210d49f64c94e5c1d89e3fd16f0fa601450bc37f20c4ee` |
| 88 | `lemma` | [map_op_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/map-op-mul.md) | 454 | `result-track:53697b28b2ecdeed0ebef24a14fec04865f37e516917b7cf0ec9ff178c10141d` |
| 89 | `def` | [singletonMulHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singletonmulhom.md) | 460 | `declaration-track:89f7b18d4c6cb2fc63b9ad2697ec2579c52ef1764eaefc5385357f47d826914b` |
| 90 | `theorem` | [coe_singletonMulHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-singletonmulhom.md) | 464 | `result-track:6b7d4d40af7283501a73271c280921fb953aa99d921e10351b6526ee0e785245` |
| 91 | `theorem` | [singletonMulHom_apply](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singletonmulhom-apply.md) | 468 | `result-track:e56906fad46a17267606d728730e89bde41189d2baddd0f6909389e2e2df44f2` |
| 92 | `def` | [imageMulHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/imagemulhom.md) | 473 | `declaration-track:69201f8017c24ad428a66f7c1752ba48b392434ad8324ab636aaeefafa824803` |
| 93 | `lemma` | [sup_mul_le](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-mul-le.md) | 478 | `result-track:c1f1acc5227b2cd5c2884bfc15e75f26e1e244c0cccfe815ac69c43a693f8d90` |
| 94 | `lemma` | [sup_mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-mul-left.md) | 483 | `result-track:c00f737b5e077a50094630dcd3ae59e5f0fd205b3184fd7e689f105b9977b9ef` |
| 95 | `lemma` | [sup_mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-mul-right.md) | 488 | `result-track:4ccb334c369ddc9a139d9a27637785859b2510cc0d305b38c6c3c9dccab09ab2` |
| 96 | `lemma` | [le_inf_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/le-inf-mul.md) | 493 | `result-track:7425366c0fb208d481036572f0a0e6f7f5bd23cf84979053c17c518d971ffffd` |
| 97 | `lemma` | [inf_mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-mul-left.md) | 498 | `result-track:805e4fe32d3db3c6e7300d53da9d0c05481399d68820e970ef09545230069154` |
| 98 | `lemma` | [inf_mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-mul-right.md) | 503 | `result-track:bbda2f3c8215383cd34c5b778df8cb61bd0c4a7c23a28421113301bd1f90d011` |
| 99 | `lemma` | [card_le_card_mul_left_of_injective](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-mul-left-of-injective.md) | 514 | `result-track:77c1b85a4d2ad7e8fb80f1bc1f6e05a3e1c53c301bfe8f50be076d18bc46b8aa` |
| 100 | `lemma` | [card_le_card_mul_right_of_injective](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-mul-right-of-injective.md) | 525 | `result-track:6f605bb07d4aa4bf2a233d981d5b3a2ab65916523f0a7ffc9b6c1d4b771a391f` |
| 101 | `def` | [div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div.md) | 542 | `declaration-track:6efb98552c2b4c20662fc8668ec67a729ace6ee59d8891b033e54c603085f6f1` |
| 102 | `theorem` | [div_def](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-def.md) | 548 | `result-track:7a425ab6c45200c29f687f153a864ef56959a71622ac9ddaa3d166c23878f4c9` |
| 103 | `theorem` | [image_div_product](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-div-product.md) | 552 | `result-track:dfdb1be428d31a8f2e10de74905758e9c2204c41cee8b02d6e14256d67854377` |
| 104 | `theorem` | [mem_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mem-div.md) | 556 | `result-track:54a6203cff5207b8d9440bfc3f0fba33f01dc557bc599b8089ec3d8df59b20ca` |
| 105 | `theorem` | [coe_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-div.md) | 560 | `result-track:84b27f936ec8d057898d32accb53014355901e68104ea10251064e4497d64943` |
| 106 | `theorem` | [div_mem_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-mem-div.md) | 564 | `result-track:b6f4e61ed1e8e5d08404e88bf79f8cae8cb0b427385f3899e658d28d498608d4` |
| 107 | `theorem` | [card_div_le](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-div-le.md) | 568 | `result-track:12479bcf810bf2ad8d243483ad5628214402417e4ad1fe5b1b2d80dc801c874d` |
| 108 | `theorem` | [empty_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/empty-div.md) | 572 | `result-track:7ad6b42fdd138c72b796ab07834909e20771995f0b11f9934d95ae415728d39f` |
| 109 | `theorem` | [div_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-empty.md) | 576 | `result-track:dd6323ea50d73ba12ff7bd5865b674748cf112b4db9918029c0c44f6090f139b` |
| 110 | `theorem` | [div_eq_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-eq-empty.md) | 580 | `result-track:2456366524d15bbcf89978092f67290840266b4b286ef0a9e7af5ea3fd4cd4a8` |
| 111 | `theorem` | [div_nonempty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-nonempty.md) | 584 | `result-track:338197f501f665418b59b1a44bfdb2fdfc9cfc6e871904f0ead9cd71fdddd0a9` |
| 112 | `theorem` | [Nonempty.div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-div.md) | 588 | `result-track:c2daac2fc60a2a9759363133977d8b12fbf0d038ea604bae182c22d36d6d29ee` |
| 113 | `theorem` | [Nonempty.of_div_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-of-div-left.md) | 592 | `result-track:946274c5ff694b9fb429c404a6aa8a2771e2f71ac4992787be6df1c236bf2c3d` |
| 114 | `theorem` | [Nonempty.of_div_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-of-div-right.md) | 596 | `result-track:15c40d244ecb0a95653fc0118d11d118757d41b070a20ebfd5f6da3b02e60ffa` |
| 115 | `theorem` | [div_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-singleton.md) | 600 | `result-track:0ff6f42807684de466756020a29dcb7f697fd265ab8e42ff770342fbc1364120` |
| 116 | `theorem` | [singleton_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singleton-div.md) | 604 | `result-track:57d4f2d4aee6f8fbe16f85f2200f45d26c3bd41ecd57ea736ec6446fdf49aaf8` |
| 117 | `theorem` | [singleton_div_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singleton-div-singleton.md) | 608 | `result-track:f34e8cb5fe75eea9ed6c97388e269d1bdbd45f44f77a5aed6300bd7a947ee573` |
| 118 | `theorem` | [div_subset_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-subset-div.md) | 612 | `result-track:227c42b785a1e4ea95686c45a97dce3134b9d0d777906f034c63c8d6ea2d7927` |
| 119 | `theorem` | [div_subset_div_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-subset-div-left.md) | 616 | `result-track:ce65d3ca89c2ef04844d87526c317d15170a6e35cb2b60708e7932bcabad6478` |
| 120 | `theorem` | [div_subset_div_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-subset-div-right.md) | 620 | `result-track:190f76008f39ccf030cfdab1e1607a18ce2c2742ce34b666f7720920f78151c1` |
| 121 | `theorem` | [div_subset_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-subset-iff.md) | 624 | `result-track:331af8b6458009e6c8d0f4acc5784c93084ecf1c9c67df2073f5792176539d7c` |
| 122 | `theorem` | [union_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/union-div.md) | 628 | `result-track:d6e13d90a07470989a6c326637930a38efced9c804ae6599c4bbf488b4f49854` |
| 123 | `theorem` | [div_union](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-union.md) | 632 | `result-track:78a238a927a58dde4e391d6b506ee5e8d073d1352d0395bc44c2636cee0187c4` |
| 124 | `theorem` | [inter_div_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inter-div-subset.md) | 636 | `result-track:23a81881523211009a4f8eedae4fd7a4ba469f3baa68f6e96455279ffdfc2e18` |
| 125 | `theorem` | [div_inter_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/div-inter-subset.md) | 640 | `result-track:8d9f44117cb9cb48767d456279643094c93cc8356c2ca50a2299c21371869223` |
| 126 | `theorem` | [inter_div_union_subset_union](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inter-div-union-subset-union.md) | 644 | `result-track:1351dfdcdc036ce3176f214289198d49155ccc224edbb96fc401562f44adc3e5` |
| 127 | `theorem` | [union_div_inter_subset_union](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/union-div-inter-subset-union.md) | 648 | `result-track:439afccccff4cffda958d6a83b6d9ff8a8b3ce94243e77ebae78fcdb1d21dbe0` |
| 128 | `theorem` | [subset_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/subset-div.md) | 656 | `result-track:b68eca55d5636d01ca03bcdfd4a6b08a9021251f345af14781955cc37b8cee33` |
| 129 | `lemma` | [sup_div_le](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-div-le.md) | 661 | `result-track:6becc0499e38779822d941237bd76bdfad9d3307fd82bf0ca7452373b81c9b8e` |
| 130 | `lemma` | [sup_div_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-div-left.md) | 666 | `result-track:2283123943138422b2ba38a315355e4d3a5ee5a0f1976cf7c42056bd0c48813c` |
| 131 | `lemma` | [sup_div_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/sup-div-right.md) | 671 | `result-track:e1ee79a32334f14f5567c798e8c9108579939e3f27f72ad723a085c03661bf02` |
| 132 | `lemma` | [le_inf_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/le-inf-div.md) | 676 | `result-track:35dc3a89c0f6b587f3750d7e8469e0d48928e944a4f226fb587223ab41147249` |
| 133 | `lemma` | [inf_div_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-div-left.md) | 681 | `result-track:417da5e0baf4f3013deed7276774ed26714c5e785e61cc84ab66080c975161f0` |
| 134 | `lemma` | [inf_div_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inf-div-right.md) | 686 | `result-track:c2200368af51ef096a8d8a32e8cbbc77bdd69296e1d091caf12e2652643f37f1` |
| 135 | `def` | [npow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/npow.md) | 703 | `declaration-track:b06893bfc7f9169e42da7e1d028c3770284c5a48d8e14549c40a81d178fa0e26` |
| 136 | `def` | [zpow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/zpow.md) | 711 | `declaration-track:180fad6c1a041e1f42733590f733f068d7d889edec0b10dafef89f7d8dc43f5d` |
| 137 | `def` | [semigroup](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/semigroup.md) | 719 | `declaration-track:11e6d24f6f179a0b4135bf3fa0eaabca105d8223e44c3b9a8745961ae791df1c` |
| 138 | `def` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/commsemigroup.md) | 729 | `declaration-track:6fc84023b7e7eb07be88e2faa7c668ba5d9e2b7b2636625abd4692ea1e32b751` |
| 139 | `theorem` | [inter_mul_union_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inter-mul-union-subset.md) | 733 | `result-track:3218e992f518e66a20fdb877308617dc63a475421bbccdedf417c70b3f774dbe` |
| 140 | `theorem` | [union_mul_inter_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/union-mul-inter-subset.md) | 737 | `result-track:157156ddc30af9b8b50efe495b2033a58b26eb177cf14c2274bfc3641b828059` |
| 141 | `def` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/muloneclass.md) | 749 | `declaration-track:5e03dcc1bab58d1e52bac516c9e79d13963abe8b54d1bb29563de9c3a8fe4818` |
| 142 | `theorem` | [subset_mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/subset-mul-left.md) | 756 | `result-track:4a84ff9728bdb672dd8dc8544269aec7f78050bf49a349554b9b66de33e56292` |
| 143 | `theorem` | [subset_mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/subset-mul-right.md) | 760 | `result-track:e9ed9ae609ec922d1f021197e06700b7c92a4b5e59dd3fabf31d5a8a7de229bf` |
| 144 | `def` | [singletonMonoidHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singletonmonoidhom.md) | 765 | `declaration-track:6853f4def33b95e1ae61a38b24eca81aed11d25f72d2844e22f741fdc3974434` |
| 145 | `theorem` | [coe_singletonMonoidHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-singletonmonoidhom.md) | 769 | `result-track:1d2fce058523fe829492edb737a1db4f9c4de0f186bbd633f561ccc61b6ca580` |
| 146 | `theorem` | [singletonMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singletonmonoidhom-apply.md) | 773 | `result-track:951f25e0f9bc40e0dc9883a421c7360a476a69afa15a586a82500d1a86585a7c` |
| 147 | `def` | [coeMonoidHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coemonoidhom.md) | 778 | `declaration-track:2cb3051a1adcff6b956535fd3c012cec90c8a1700cf0858ea23c28b72fc9a29c` |
| 148 | `theorem` | [coe_coeMonoidHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-coemonoidhom.md) | 784 | `result-track:363b0301c9b49e4de67c6edf5cdaf2fc260c3e7818ba44444b2d40068533da77` |
| 149 | `theorem` | [coeMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coemonoidhom-apply.md) | 788 | `result-track:765bc8818e81609c636e1e08f57c7daa5e5e37cc93c6f078b8659bbc7c123b91` |
| 150 | `def` | [imageMonoidHom](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/imagemonoidhom.md) | 793 | `declaration-track:be9e02cd41e53133bdaad9900a6c0509530a7e6acc8ac36d63abf3cdf649ce26` |
| 151 | `theorem` | [coe_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-pow.md) | 804 | `result-track:36df66052115fe567b44195070bdc764a33d561bf91a86a8f04006d3c4d4b32a` |
| 152 | `def` | [monoid](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/monoid.md) | 813 | `declaration-track:8614a0c1123d3c9a5e8fab70f220727489ef5422575686d3dfc2b17d2dfbdaa3` |
| 153 | `lemma` | [pow_right_monotone](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pow-right-monotone.md) | 822 | `result-track:c448395f3c74e629876f42ba27ece07a88eb09ae29b07602f369f00698756ba6` |
| 154 | `lemma` | [pow_subset_pow_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pow-subset-pow-left.md) | 826 | `result-track:092e3ceb62d7759bf36c4b40cae919b9590e440ba8c22a26a7771ddbff07fd3a` |
| 155 | `lemma` | [pow_subset_pow_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pow-subset-pow-right.md) | 829 | `result-track:f050855325555d8155b32be93f7f362bd35cfb928627155242dc2d6f53dc3eed` |
| 156 | `lemma` | [pow_subset_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pow-subset-pow.md) | 833 | `result-track:12733befb7d0818b4c90194ca1343d8cc983881a3eade6339ea2ef546606ce84` |
| 157 | `lemma` | [subset_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/subset-pow.md) | 837 | `result-track:6fdc7b88831e4830b170ed238030391709f96e83b8e5249fd80f99bce96eff6a` |
| 158 | `lemma` | [pow_subset_pow_mul_of_sq_subset_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pow-subset-pow-mul-of-sq-subset-mul.md) | 841 | `result-track:abd91663ebe31ca106ae64f2efbae0c193bddc9790c94ad0a7e68489ca6f2392` |
| 159 | `lemma` | [empty_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/empty-pow.md) | 845 | `result-track:57e7602f8519811bbcbb2587effb373fe09864770a115069c80076478b4d1a00` |
| 160 | `lemma` | [Nonempty.pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-pow.md) | 848 | `result-track:16238b05e28a5cd44ba8ee2e397f4342a3184b5c76140428580ef7e16fbc6d1c` |
| 161 | `lemma` | [pow_eq_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pow-eq-empty.md) | 852 | `result-track:347b4c95b04fe2f8e45c7e207eba1f241d15898b7814765a3cc46fa3f53f62d8` |
| 162 | `lemma` | [singleton_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singleton-pow.md) | 862 | `result-track:2b503e1d5db0afb619316b4e7b92b348614c944fda323bcd9ad751d8c4c675ed` |
| 163 | `lemma` | [pow_mem_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pow-mem-pow.md) | 866 | `result-track:bccd9c8b6784e655995f34fca1d7c02f51586eed8e2fefbb02a2688eb3f368af` |
| 164 | `lemma` | [one_mem_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-mem-pow.md) | 869 | `result-track:f2b672194366b130e80914d0f08d630b8b91582e9301e17aa63c3bd2430bd589` |
| 165 | `lemma` | [inter_pow_subset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inter-pow-subset.md) | 872 | `result-track:3a429036a2baf09375d93ba84e2ddf1aee82ac44650b0f89d6b0183b13c78604` |
| 166 | `theorem` | [coe_list_prod](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-list-prod.md) | 875 | `result-track:160f916fc073b46742b7256ea05a4eb2af0b1d9c2b0776536e9dcef97ceb3f10` |
| 167 | `theorem` | [mem_prod_list_ofFn](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mem-prod-list-offn.md) | 879 | `result-track:9776999dabadcbb8bfb8a0bb2bfa6aa624f7cf7ea628e4e4a0cb8342eab4a8b7` |
| 168 | `theorem` | [mem_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mem-pow.md) | 885 | `result-track:bcf866f50b3c51a3260644adb11e13bcd89e7d9ff47d6a16d42de9f7c8c6bd18` |
| 169 | `lemma` | [card_pow_le](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-pow-le.md) | 890 | `result-track:e1e9499dd816f025acb47ccb83e92130276cef640e1fecd7541e911d155c11a7` |
| 170 | `theorem` | [mul_univ_of_one_mem](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-univ-of-one-mem.md) | 895 | `result-track:8c351a516231f79eaac0064abcc33a127b5d952b6fd71bbede5bfc2d1669ca49` |
| 171 | `theorem` | [univ_mul_of_one_mem](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/univ-mul-of-one-mem.md) | 899 | `result-track:cd5fcc88ff3bdbb5f7586c0f29bf5d59d21213f30128ea0ecccb2cf0ad16f10a` |
| 172 | `theorem` | [univ_mul_univ](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/univ-mul-univ.md) | 903 | `result-track:705f1017ad72aba66900e5058ba39f5df8dd6d8a884adb0eed7e66fc876cd540` |
| 173 | `theorem` | [univ_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/univ-pow.md) | 907 | `result-track:a889647d2951cdd88e13a17f93cf994986637564a834ee7bed75003173088562` |
| 174 | `theorem` | [_root_.IsUnit.finset](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/root-isunit-finset.md) | 911 | `result-track:298340413af169d19d4c9b4e9b48a20f9b4fe439178c714d72222ad30ad82166` |
| 175 | `lemma` | [image_op_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-op-pow.md) | 915 | `result-track:212a2e13d4b0cabadff90ce017ec0c78bd670b3e7f5e0ad13a1e663cf41d46eb` |
| 176 | `lemma` | [map_op_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/map-op-pow.md) | 920 | `result-track:f4136dfe7de8b38de340de7d82435dfc66519e3cfcfe7a9e7a53a51d0e7a49ac` |
| 177 | `lemma` | [product_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/product-pow.md) | 926 | `result-track:de3e98ab0906fb48fef07731376623ff560db825d58d237a47c613b259449e89` |
| 178 | `def` | [commMonoid](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/commmonoid.md) | 939 | `declaration-track:6e2d22f45caaa01920eb0014a8f011b153d15f1667c877682e0f59c3285f748f` |
| 179 | `theorem` | [coe_zpow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/coe-zpow.md) | 951 | `result-track:bb63dbba74395dcf34a5459ac4590c85721eddd173abde8937d0fffad043617a` |
| 180 | `theorem` | [mul_eq_one_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/mul-eq-one-iff.md) | 958 | `result-track:400f09c34c650fa50ba091f2e9e1802863b6489242394cfd4a34226c6d8a22dd` |
| 181 | `def` | [divisionMonoid](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/divisionmonoid.md) | 964 | `declaration-track:6f82d70da4bd11739da3dfd37ea35009a8eb169a84fb27131e026925c4944bdd` |
| 182 | `theorem` | [isUnit_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/isunit-iff.md) | 970 | `result-track:a5583891a9f94d7ac8a0a9577c64b34e0f861d4c7e9b2897bd14b47b9d85eab6` |
| 183 | `theorem` | [isUnit_coe](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/isunit-coe.md) | 981 | `result-track:4f685f77ea150db5c4e6e73d49ff91fe20b05b22a4164e02d1f1c58b631802db` |
| 184 | `lemma` | [univ_div_univ](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/univ-div-univ.md) | 985 | `result-track:45a92c87fef84416915b129444aa612f9784d6f9f6853e973c629a9ec64f0ebd` |
| 185 | `lemma` | [subset_div_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/subset-div-left.md) | 987 | `result-track:510e30df9944639c8536b1bc6ab7ca06bb7592cf25212d87a15acc611a866952` |
| 186 | `lemma` | [inv_subset_div_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inv-subset-div-right.md) | 990 | `result-track:3b44304a27604a8ac60cebbb9062cffc5b26925acbcbb5e0272ba1c39fe066b7` |
| 187 | `lemma` | [empty_zpow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/empty-zpow.md) | 994 | `result-track:12f862b0514fc7c4ba865ddf463ad1e1bcdf978eaaf1ffce03afc19fa8108678` |
| 188 | `lemma` | [Nonempty.zpow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-zpow.md) | 997 | `result-track:8b37b3ee6127d9db9f6d4ffde9c50a781a4b7facd5198be6e111af2132797dc9` |
| 189 | `lemma` | [zpow_eq_empty](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/zpow-eq-empty.md) | 1001 | `result-track:06d5acd454cc68c9042e2951278eebbdefd74227c0e025e8c63a9dde6ee49b5c` |
| 190 | `lemma` | [singleton_zpow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singleton-zpow.md) | 1011 | `result-track:3f8fd0bfefb9fbdf98e7a5fed6d58c133726733cfc00368183b5abb69a990f0c` |
| 191 | `def` | [divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/divisioncommmonoid.md) | 1018 | `declaration-track:ed0eb6e356b08ab6f510f8a6b1021657414df204c416edbea85750a324399841` |
| 192 | `theorem` | [one_mem_div_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-mem-div-iff.md) | 1032 | `result-track:7c65211aa9321c2ba95b6a821fa97da87e44312b3636ee34c49f843751a89875` |
| 193 | `lemma` | [one_mem_inv_mul_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-mem-inv-mul-iff.md) | 1036 | `result-track:c7f45ba75ce39b07af7f9e628eb12433fe692b34f7e0246af31447f863333c83` |
| 194 | `theorem` | [one_notMem_div_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-notmem-div-iff.md) | 1041 | `result-track:b6b9bfff397c7769b5fad547b981981190125698de1d32dc1b965c37cd643f5c` |
| 195 | `lemma` | [one_notMem_inv_mul_iff](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/one-notmem-inv-mul-iff.md) | 1045 | `result-track:d71ec9753fa00d7358506399fa1260274b4afee602659c8f1764c9d06cc3b3ff` |
| 196 | `theorem` | [Nonempty.one_mem_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-one-mem-div.md) | 1048 | `result-track:85324c77acd4ec2e8eacb9354b898465c56b8e7d92f346d1ee4f46483915cea7` |
| 197 | `theorem` | [isUnit_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/isunit-singleton.md) | 1053 | `result-track:d1ccf7b7c23d728323cc9bd971d353b551788d50056260930e843866f8f7b044` |
| 198 | `theorem` | [isUnit_iff_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/isunit-iff-singleton.md) | 1056 | `result-track:a0a7382e0d46c7c4ccf3b31792307af2b4b26c6d9c8780af61aae204cbbda239` |
| 199 | `theorem` | [isUnit_iff_singleton_aux](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/isunit-iff-singleton-aux.md) | 1060 | `result-track:fc4de53335bf68c77183c8fe5e49360a72259464be5db78df2163bd37090c05a` |
| 200 | `theorem` | [image_mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-mul-left.md) | 1065 | `result-track:5e5c53df4b743a2ebba2d6667cd0564cceb7ec6cd8daeb13ef258323dc72c917` |
| 201 | `theorem` | [image_mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-mul-right-source-edition-2.md) | 1070 | `result-track:6422eb375837e4f491e6a4e40681f94d52e43502ddee5eab76aa2221e4b8323d` |
| 202 | `theorem` | [image_mul_left'](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-mul-left-source-edition-2.md) | 1074 | `result-track:692c96cba13eb327aab5c02e8f5c90bb0b7fc705111c0f1766d9ddc63478a580` |
| 203 | `theorem` | [image_mul_right'](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-mul-right.md) | 1079 | `result-track:0e17672978eee470f7c09ae04682354f666fec0c59405d4b6f9bad24bc463fa6` |
| 204 | `lemma` | [image_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-inv.md) | 1083 | `result-track:07e94d98d0c50a8ea4c413b2146ac52acb5ad9184d10d03876c59526549a351a` |
| 205 | `theorem` | [image_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-div.md) | 1085 | `result-track:a762ca3a238cafd104f915737b60a09b72af96875f8ec6b20f720b174dc8f621` |
| 206 | `theorem` | [preimage_mul_left_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/preimage-mul-left-singleton.md) | 1097 | `result-track:d0d6407cf2d525dcb8712432626289a3bc8f0940746f471ecf98ab96fe8a4bf9` |
| 207 | `theorem` | [preimage_mul_right_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/preimage-mul-right-singleton.md) | 1102 | `result-track:6c437ec5e945d3c3aae32fd8efc5457ca88f35f702da61e0fb0b5152af6841c1` |
| 208 | `theorem` | [preimage_mul_left_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/preimage-mul-left-one.md) | 1107 | `result-track:093b336b4b23b2f5d83139444939708f14ca371132541c5905a51f35fbd2ac29` |
| 209 | `theorem` | [preimage_mul_right_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/preimage-mul-right-one.md) | 1111 | `result-track:9bfabcf3d06dde649044f786af0aa6054644d53ccb326aa56c97684562f2b6b9` |
| 210 | `theorem` | [preimage_mul_left_one'](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/preimage-mul-left-one-source-edition-2.md) | 1115 | `result-track:869695983d824ad570f6619bf5f1956a56c1b8749ddedb84d55ac4ee4463c905` |
| 211 | `theorem` | [preimage_mul_right_one'](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/preimage-mul-right-one-source-edition-2.md) | 1119 | `result-track:c0d4781767b7a3754684a27d1ecb08d52ce1e8ef374f8e89710ab351dfc4e96d` |
| 212 | `lemma` | [image_pow_of_ne_zero](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-pow-of-ne-zero.md) | 1128 | `result-track:3d99f1e71848ca05be46caaeec23df5062d06eea141241b2c84482b3241b2337` |
| 213 | `lemma` | [image_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/image-pow.md) | 1134 | `result-track:78038a93e0c0b01a61a2db2a8e5846c8a788f2b0ddc927200738527a11333789` |
| 214 | `lemma` | [Nontrivial.mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nontrivial-mul-left.md) | 1145 | `result-track:b5d4b78c14ffaa1cedbbdce3017a1ffe9a8167d022dd90d5f51ba76e5b966e21` |
| 215 | `lemma` | [Nontrivial.mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nontrivial-mul.md) | 1150 | `result-track:f0314cbd67d43da2e81b28952c3697a1bd473ffa37bc248faf543d7d8092a55f` |
| 216 | `theorem` | [card_singleton_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-singleton-mul.md) | 1154 | `result-track:5b9f8f8d9d86f68f91ee2bfc09552536125fd50dad1c77159fd3c1580dec55c7` |
| 217 | `theorem` | [singleton_mul_inter](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/singleton-mul-inter.md) | 1158 | `result-track:b2ed2f355c216c11641b9a51e89fcea66af9da0df901d21ea09dc01950117f61` |
| 218 | `theorem` | [card_le_card_mul_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-mul-left.md) | 1162 | `result-track:a4df476a3622baa96d34592fd7e0b6b2b8c2c31e6ad48fa81112ad1d56448686` |
| 219 | `theorem` | [card_le_card_mul_self](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-mul-self-source-edition-2.md) | 1172 | `result-track:a9719627f73fdfa60d1a4a572ed5b320fb2b628dea673f61acab908f1e1ecaf8` |
| 220 | `lemma` | [Nontrivial.mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nontrivial-mul-right.md) | 1182 | `result-track:ce223585683a28ea015d32754ecfa52fcf875f84c73ce90b2f128de9593d5b92` |
| 221 | `theorem` | [card_mul_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-mul-singleton.md) | 1187 | `result-track:8a479093c7731183a442e104c014c5c5336a670710991ccc466ef6d88654dcac` |
| 222 | `theorem` | [inter_mul_singleton](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/inter-mul-singleton.md) | 1191 | `result-track:ac1c6d2757534d6cd7a11a2700b2a369aaa22c2de4e9979cebace6ea9a297b54` |
| 223 | `theorem` | [card_le_card_mul_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-mul-right.md) | 1195 | `result-track:085f664685107ba9bdba81761221510961ba961362e3e335c45d010a031bf81a` |
| 224 | `theorem` | [card_le_card_mul_self'](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-mul-self.md) | 1205 | `result-track:3f441e89b174054d28873cf7606c595a56b8b75a6be6c8ff6a415ec3aa85e32d` |
| 225 | `lemma` | [Nontrivial.pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nontrivial-pow.md) | 1214 | `result-track:2a7603b402a28f9b43fa05922099d825cdcf22851ab4a4c9483b6e66fbfa8888` |
| 226 | `lemma` | [Nonempty.card_pow_mono](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/nonempty-card-pow-mono.md) | 1220 | `result-track:99694853e8dc4e93a40b17bfd12f9794d663809b160526f61409f71615875814` |
| 227 | `lemma` | [card_pow_mono](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-pow-mono.md) | 1226 | `result-track:c3fed6331e55bee572266a89230288e69c9eae729674f8032edddabc5a07830c` |
| 228 | `lemma` | [card_le_card_pow](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-pow.md) | 1232 | `result-track:e2254c0fe83c277e034946aa5746ebcf5057c754fad184146d40aafa6b8d2807` |
| 229 | `lemma` | [card_le_card_div_left](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-div-left.md) | 1240 | `result-track:51edd0126300d7149127bb0130c6f08441265738154cc4cc53c2d56f028dda5f` |
| 230 | `lemma` | [card_le_card_div_right](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-div-right.md) | 1243 | `result-track:91f52d247e156324bc19b3d463c798b1c0efe87281881dfa88dabd9b5977088e` |
| 231 | `lemma` | [card_le_card_div_self](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/card-le-card-div-self.md) | 1246 | `result-track:c1453b85e425c4a772734a2a88ae28326401d66cba92decf0d1bb2b1ac553a65` |
| 232 | `lemma` | [piFinset_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pifinset-mul.md) | 1258 | `result-track:16521c8a5fa95cadc0d717c7bd64943e4df3860766e658b25861a7461a4db3e8` |
| 233 | `lemma` | [piFinset_div](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pifinset-div.md) | 1262 | `result-track:dbef0fb46f1a3f56ccfee4d1b5c4fa244e2ce568741e8ed8bd9a3bdc0989186b` |
| 234 | `lemma` | [piFinset_inv](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/pifinset-inv.md) | 1266 | `result-track:37342c574b3612e20d0e25eb90a0bc6c3a616cdbd10f8167716fb675ea4c46af` |
| 235 | `instance` | [instFintypeOne](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/instfintypeone.md) | 1279 | `declaration-track:096a802ddf1ab8d9f7fcea4dd0628d4c3e216e1f687c1dd8e28a8ee59be3e3ba` |
| 236 | `theorem` | [toFinset_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/tofinset-one.md) | 1284 | `result-track:8f18042dff6bc58355cedd0b916d03a3639a6d818ef689fcb185a5590297974c` |
| 237 | `theorem` | [Finite.toFinset_one](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/finite-tofinset-one.md) | 1289 | `result-track:8245dd4b8619b27bcca8af764538d94423e00608ee9d9b0579d30416d0e8d3cd` |
| 238 | `theorem` | [toFinset_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/tofinset-mul.md) | 1299 | `result-track:2be023d19b7b0d550bf9addd468ded776d5ecbadf49727d0362f3a91e3dfcf8b` |
| 239 | `theorem` | [Finite.toFinset_mul](../../../../GroupTheoryAndGeneralizations/PointwiseFinsetBasicPublic.lean/declarations/finite-tofinset-mul.md) | 1304 | `result-track:86ba060f699922fac8e9c2a339f4681ef195dcc9fd69ea8fe9ce3e545b8670c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbc82318734bff6dd1b8704213a4f0d25adca758a75970fdfc1dff48a1254d0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant583c5bda6b78379720190558a127d9fd4eab42a81920e4db72e9f2f792b01299.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant583c5bda6b78379720190558a127d9fd4eab42a81920e4db72e9f2f792b01299.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
