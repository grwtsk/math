# Verification target: Affine Subspace Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c938fe73d2fb879b088149edf36b2f75c1e848f8",
  "lexical_observation_count": 101,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c938fe73d2fb879b088149edf36b2f75c1e848f8`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [vectorSpan_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-vadd.md) | 34 | `result-track:dd6f89d207f855872a2870b69bc5311b7545c1d5855cc09bcf5397c4d43ce805` |
| 2 | `theorem` | [vsub_right_mem_direction_iff_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vsub-right-mem-direction-iff-mem.md) | 50 | `result-track:6f11d23c940d167925fd9cb8a3955041712500271f0878f3b50b7e31234c71dd` |
| 3 | `theorem` | [vsub_left_mem_direction_iff_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vsub-left-mem-direction-iff-mem.md) | 57 | `result-track:75a3ad3d2c156f4b553e8eca40c3a32941a8b665eba13126df665ebeae1a3337` |
| 4 | `abbrev` | [toAddTorsor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/toaddtorsor.md) | 64 | `declaration-track:8178419b6b2747a5df3c1ac69f31066e8d22177075fb522e9f7731f668040e2c` |
| 5 | `theorem` | [coe_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-vsub.md) | 83 | `result-track:2ff56253a9da94b0ff852a6de2fc1309cb73b002435c83bc50b079a93ccddf0e` |
| 6 | `theorem` | [coe_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-vadd.md) | 87 | `result-track:e2e6f2483fc7d6997b692428c7978bc9ebc02c6bcf4bf378bcba9a4b2e2efe7c` |
| 7 | `def` | [subtype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/subtype.md) | 92 | `declaration-track:57870ef9e4f4977e1f7452b06bd5f1316f9100e4b34607587dea7063a31e4fa6` |
| 8 | `theorem` | [subtype_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/subtype-linear.md) | 98 | `result-track:05a620df158df5e65c80f571cd104edb00334bd693dde38dfc36514d15430e53` |
| 9 | `theorem` | [subtype_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/subtype-apply.md) | 102 | `result-track:08c5f4f8d12ce5d4e434daa4ad2a8918750933ecc7bb54ae9fe5d8b53379c170` |
| 10 | `theorem` | [subtype_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/subtype-injective.md) | 105 | `result-track:6f13cd405f0112c4580621e087dfc3f9658f348021156b686a32f1298e756b71` |
| 11 | `theorem` | [coe_subtype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-subtype.md) | 109 | `result-track:31506b494062525e2c05b9dd2e7000f31419eff686f241613b7de3d8ce6c9108` |
| 12 | `theorem` | [AffineMap.lineMap_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinemap-linemap-mem.md) | 117 | `result-track:652a765990c4d05e0ccd5cc54a81067ab2fa5582d9e8728584cd87524434eafe` |
| 13 | `theorem` | [coe_affineSpan_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-affinespan-singleton.md) | 132 | `result-track:4251d907f0e95d4e0838d8f877663f0795d1a807156490a6e10a96c914c15fad` |
| 14 | `theorem` | [mem_affineSpan_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-affinespan-singleton.md) | 140 | `result-track:69fcf2a58a0bf8477dcbc85c24b49cbaba01a7a2a225a91386faa011653bf004` |
| 15 | `instance` | [unique_affineSpan_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/unique-affinespan-singleton.md) | 143 | `declaration-track:682ccfb315acd25522de186efd1b5ba3eeeaa512711479ffcf221ff8b7ac3e14` |
| 16 | `theorem` | [preimage_coe_affineSpan_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/preimage-coe-affinespan-singleton.md) | 148 | `result-track:2364cb376d17c0cbc1a6efad9d5033f1056a44a780aeb1fdacaf424ac848d622` |
| 17 | `def` | [topEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/topequiv.md) | 159 | `declaration-track:e01dd4a52917c296e252ab9d4ce2f3de7adf53e5bcde7d80a8c83ce0975d04cc` |
| 18 | `theorem` | [subsingleton_of_subsingleton_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/subsingleton-of-subsingleton-span-eq-top.md) | 166 | `result-track:765efbb16ad92fb7f96e8eeb3504b770ecb812c96ac8b0e545d3b70431bdd1cc` |
| 19 | `theorem` | [eq_univ_of_subsingleton_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/eq-univ-of-subsingleton-span-eq-top.md) | 174 | `result-track:dbaa5d9068a90e8debda7c0fd16e3209d3398f28806b3ae3343385a4044e5f69` |
| 20 | `theorem` | [direction_lt_of_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/direction-lt-of-nonempty.md) | 182 | `result-track:eb02137f87731dd01cfab4d5853cc8a69914e2ecee4b3076206dce7ef453c06b` |
| 21 | `theorem` | [vectorSpan_eq_span_vsub_set_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-eq-span-vsub-set-left.md) | 205 | `result-track:5ab521508bb2ce02749898a10f438d8a9d74179bfea124235907130bb00b3994` |
| 22 | `theorem` | [vectorSpan_eq_span_vsub_set_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-eq-span-vsub-set-right.md) | 218 | `result-track:616f9b59d7b5a25a929afa97e6677c9ff2cf7f8a43c82fed64776a85a446baf5` |
| 23 | `theorem` | [vectorSpan_eq_span_vsub_set_left_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-eq-span-vsub-set-left-ne.md) | 232 | `result-track:9f18701ac857702ad2c4b92826bbed55247130118bd2a825ba9d17d49c02bda4` |
| 24 | `theorem` | [vectorSpan_eq_span_vsub_set_right_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-eq-span-vsub-set-right-ne.md) | 241 | `result-track:6a392a009aa84c57d0fccdbf6dba34a3a075af73320d5d9d4df3b573f1a778a5` |
| 25 | `theorem` | [vectorSpan_eq_span_vsub_finset_right_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-eq-span-vsub-finset-right-ne.md) | 250 | `result-track:c065c0ad08658334b50dd74ca511652b5fc21b19b3e4489635064b503bb1a654` |
| 26 | `theorem` | [vectorSpan_image_eq_span_vsub_set_left_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-image-eq-span-vsub-set-left-ne.md) | 257 | `result-track:7437f75b7224db4f1ae907ac2a393fc3c46171e55666eba5c8926e1ac736033d` |
| 27 | `theorem` | [vectorSpan_image_eq_span_vsub_set_right_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-image-eq-span-vsub-set-right-ne.md) | 266 | `result-track:fe5b8f6b3cc5018c3098bd21853987234c2f0b33e87290718da6eaabdf919991` |
| 28 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-range-eq-span-range-vsub-left.md) | 275 | `result-track:d7773dcd8b178b68b3d4309ae5de409233ab68b72e306a343adb761a4542abc1` |
| 29 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-range-eq-span-range-vsub-right.md) | 282 | `result-track:6c673cf09e0359e33038344f62567afa2b8c7e5addf86c21c57821775c4e82c0` |
| 30 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-range-eq-span-range-vsub-left-ne.md) | 289 | `result-track:f231f96a680ca218cce91cf845657b82843ba3e10228421488fc785aafc937fe` |
| 31 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-range-eq-span-range-vsub-right-ne.md) | 303 | `result-track:3c2940526db0e375ae744ef118defe5385f16e8984742f7a485b8805d662e36e` |
| 32 | `theorem` | [affineSpan_coe_preimage_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinespan-coe-preimage-eq-top.md) | 323 | `result-track:e344355a7dfff136fee2fe37a0c029527e25b62ad5bff41896e2b730ce21032c` |
| 33 | `theorem` | [affineSpan_singleton_union_vadd_eq_top_of_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinespan-singleton-union-vadd-eq-top-of-span-eq-top.md) | 335 | `result-track:804501e3a16aa5b47ffa71e8af94f76d459e7705abb1416e0c654eb08ce3f1d6` |
| 34 | `theorem` | [vectorSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-pair.md) | 351 | `result-track:3d1809db72869883d144b3e66611dffa95c309b0f91252e69e344104cfcfcfe6` |
| 35 | `theorem` | [vectorSpan_pair_rev](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-pair-rev.md) | 356 | `result-track:b39239377c6c531187e4931f7512e508b0248b830955f1822783ae2f97e17327` |
| 36 | `theorem` | [mem_vectorSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-vectorspan-pair.md) | 363 | `result-track:61aff9cb4c4e9087604b4a3c207ff0b068b7ef3b423796c83d800e329eecdf80` |
| 37 | `theorem` | [mem_vectorSpan_pair_rev](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-vectorspan-pair-rev.md) | 369 | `result-track:009e4c602b5a17b0f6ed29685ad8a981c0e17daa387b2a8683c7284bcf2e4803` |
| 38 | `theorem` | [AffineMap.lineMap_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinemap-linemap-mem-affinespan-pair.md) | 375 | `result-track:74ede0b21c445cf326e5ca5937c8d3efb2ce854748b4f18dbd7eaabfccfbc2a2` |
| 39 | `theorem` | [AffineMap.lineMap_rev_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinemap-linemap-rev-mem-affinespan-pair.md) | 381 | `result-track:2d549d4a537f55f9aa97599acf55c522e7f08c71ecdb1319c4629675743cec81` |
| 40 | `theorem` | [smul_vsub_vadd_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/smul-vsub-vadd-mem-affinespan-pair.md) | 387 | `result-track:b47255aebc089459507546e09c6bc2c55d60232b2ffcddad1ea99ccaa0c02765` |
| 41 | `theorem` | [smul_vsub_rev_vadd_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/smul-vsub-rev-vadd-mem-affinespan-pair.md) | 393 | `result-track:e24ccac8593d70a1650cfe7c9b087b1a24006886ceba5fd3012b36f05d4d5b82` |
| 42 | `theorem` | [vadd_left_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vadd-left-mem-affinespan-pair.md) | 399 | `result-track:6836528606c53b1fa468c0aafaa3bc7d91ff94d5025f0c6e9d8dd5ac0e99b21a` |
| 43 | `theorem` | [vadd_right_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vadd-right-mem-affinespan-pair.md) | 406 | `result-track:9957225439a104ddd75077ec9a7cb30ea8795d426cf529f74dee6d5ac60df60d` |
| 44 | `theorem` | [direction_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/direction-sup.md) | 420 | `result-track:4c703c42e68632ea1d31c2e1d30d270f1ea38b7eec44bbb029990f7458e21a87` |
| 45 | `lemma` | [direction_sup_eq_sup_direction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/direction-sup-eq-sup-direction.md) | 450 | `result-track:33273569a0209b043f09b1a3b6b2353e78395101ef6261cab968a3899cf36e01` |
| 46 | `theorem` | [direction_affineSpan_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/direction-affinespan-insert.md) | 458 | `result-track:a8efef3e4eff74df857ccb0d40154af668b43b97ba920875445c3b20512afdd0` |
| 47 | `theorem` | [mem_affineSpan_insert_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-affinespan-insert-iff.md) | 468 | `result-track:2e731c36021af5bbb1388d1958305d82ac25869e79317950d8bbdc1a9e811a28` |
| 48 | `lemma` | [vectorSpan_union_of_mem_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/vectorspan-union-of-mem-of-mem.md) | 489 | `result-track:5bdc048ae7e916128eb314c0d630fcf57338e8b0a1871afab9cc53e00e3940cc` |
| 49 | `theorem` | [AffineMap.vectorSpan_image_eq_submodule_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinemap-vectorspan-image-eq-submodule-map.md) | 508 | `result-track:9857617036e6bdf6e7455d749bb4d27670337c539e30b90b8edebac42b826db0` |
| 50 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map.md) | 515 | `declaration-track:bfda02ddd9a4df7947aaea63faf2150d9f593a34ab263cbffee562e54d971b07` |
| 51 | `theorem` | [coe_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-map.md) | 526 | `result-track:8a21dd748a563ed1eca5d841cfbea8b768c5649b6e834cddbf861f5e02c78371` |
| 52 | `theorem` | [mem_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-map.md) | 530 | `result-track:9a06faf26506d648d24dddab77a8ea47f3a038b74f2e2a7e90009cf5f7843ce0` |
| 53 | `theorem` | [mem_map_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-map-of-mem.md) | 534 | `result-track:661aeee35e583de5a4f09e295f62da7fb24da19afba2495142a533c02218aa1b` |
| 54 | `theorem` | [mem_map_iff_mem_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-map-iff-mem-of-injective.md) | 542 | `result-track:0db9e4bf84962706ce3a532d380aecd9fb0ee4fd537c4842a8187cb7dcfab5f8` |
| 55 | `theorem` | [map_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-bot.md) | 547 | `result-track:a37e23ede84003e721006a977da84364aef68c5337863b05321a1566e0e51e55` |
| 56 | `theorem` | [map_eq_bot_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-eq-bot-iff.md) | 551 | `result-track:2424444f3f7ea478e113a7c15471490cb0f17e4d38e13585601111cfd4d68cf4` |
| 57 | `theorem` | [map_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-id.md) | 557 | `result-track:2fbac25c83966b9c47bb1e668b03f54eaa7c4641e55982d72a0f9b4bb039266e` |
| 58 | `theorem` | [map_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-map.md) | 560 | `result-track:92ca14dc32036f5f2bd0d3d5277b5c130a823f294bf9c67aac65468f415325f6` |
| 59 | `theorem` | [map_direction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-direction.md) | 565 | `result-track:18a010bdff5adb7bb4c1153892d7625ebb92b1ebc195715173c4a9e3a65581f0` |
| 60 | `theorem` | [map_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-span.md) | 569 | `result-track:81f4b161e887defff4adbc506712caec82a77d47e1cc4e17bea0c221a755bff7` |
| 61 | `def` | [inclusion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/inclusion.md) | 586 | `declaration-track:8c7bb5e8ef1ae389bbb261f80a99f1064bee0750c38d997802179dbfe85d8419` |
| 62 | `theorem` | [coe_inclusion_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-inclusion-apply.md) | 592 | `result-track:d924b9e3e90ba2156529af4d346985725132caa58e202adc4f495f746fcc6d95` |
| 63 | `theorem` | [inclusion_rfl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/inclusion-rfl.md) | 596 | `result-track:320026594f670d9d468fbf3b3606626fd8aa469ff04035576af71d3fba114917` |
| 64 | `theorem` | [map_top_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-top-of-surjective.md) | 605 | `result-track:71b76cdb6ef197767a925fe7250c5c869c1f5ddbd05fdd50c172e844135beb18` |
| 65 | `theorem` | [span_eq_top_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/span-eq-top-of-surjective.md) | 609 | `result-track:3dc23766cb3e3c854436da2aac0b9f6843eb75e00621e10ed6ba65b23cf51d32` |
| 66 | `def` | [ofEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/ofeq.md) | 626 | `declaration-track:b470514a66ff289d1433761e8a53a21b8b0b62461b30a7bdeeb72f3c51f874bb` |
| 67 | `theorem` | [coe_ofEq_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-ofeq-apply.md) | 632 | `result-track:3869aa7ac547c7703c70dbf01699351eadedc6f4d5aa0e547078bd39ac5b2f03` |
| 68 | `theorem` | [ofEq_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/ofeq-symm.md) | 636 | `result-track:5a950b29f1163a48fb46bbe73b034d7e56e39cfa4a7ff0cf49c33dd85a0a7f61` |
| 69 | `theorem` | [ofEq_rfl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/ofeq-rfl.md) | 641 | `result-track:b32d33b59be76a97a36c53ac9cbad78a68e5d2b439b230a4392542dcad35d101` |
| 70 | `theorem` | [span_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/span-eq-top-iff.md) | 645 | `result-track:b0014a6456e8f6318c0343b9f8271bf8aa7616c72bfd031905adbaf8ada0e8b9` |
| 71 | `def` | [comap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap.md) | 660 | `declaration-track:7f1437da03de80df4c3159b9a4da5e7adba841a4466c5056dac23d192fd94bbc` |
| 72 | `theorem` | [coe_comap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/coe-comap.md) | 668 | `result-track:0aa69c532f7f8dc9dbd5d73aa85c7d3b565cdcce3cb079240c174f5d44314511` |
| 73 | `theorem` | [mem_comap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/mem-comap.md) | 672 | `result-track:5072bc758cdfbcff943ed73e4b192e7f97466fa361b0aa574211f4cf6e8754e3` |
| 74 | `theorem` | [comap_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-mono.md) | 675 | `result-track:bc3199b8c13c1fb6a19732ff29a888145a0550ecfe87e2a1c5b53bd110bc5663` |
| 75 | `theorem` | [comap_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-top.md) | 679 | `result-track:fda8c2adcf2e5c33919c80ba16ff77c2ad9781a90ec54941d56e319a954327e3` |
| 76 | `theorem` | [comap_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-bot.md) | 683 | `result-track:1fefad03fa163bc1c4e1ff21962690022dc97d312d79f1e5cea0dc58bacd5369` |
| 77 | `theorem` | [comap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-id.md) | 686 | `result-track:017197b864de6dcd42fc71c23cb923f7fd2e10e9fc9523c0696010c22e1ebe2d` |
| 78 | `theorem` | [comap_comap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-comap.md) | 689 | `result-track:daa60c27efacd82b44695477094733f40795d443bdf8ab481549a463ed5c4f4f` |
| 79 | `theorem` | [map_le_iff_le_comap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-le-iff-le-comap.md) | 694 | `result-track:480eb4a3f932c64052d42d9440183858d942cbbe299730a5eb9633f3dd7711d6` |
| 80 | `theorem` | [gc_map_comap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/gc-map-comap.md) | 698 | `result-track:526b1640a054eab4d585fe306ab4d5341238f6630fe4fccf4e4e8889bd9e52bb` |
| 81 | `theorem` | [map_comap_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-comap-le.md) | 701 | `result-track:b2ef75f7d0777bb5f6055caba2293f6524f9354cbe2267d633c4e0b24bc4b1c7` |
| 82 | `theorem` | [le_comap_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/le-comap-map.md) | 704 | `result-track:5cf273d325c71151fe07f7f7a382e384bab059e00fcb912f8b46f24ed0491779` |
| 83 | `theorem` | [map_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-sup.md) | 707 | `result-track:0b37e789b9a2e47a562f036e7754aa99673e36186a90047131296ad704515f40` |
| 84 | `theorem` | [map_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-isup.md) | 710 | `result-track:149183bf4b201808f622e3477fc788c9c3b1bea72409d04119d58fa708ae940e` |
| 85 | `theorem` | [comap_inf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-inf.md) | 714 | `result-track:6f6a14ebfe0f0199197f95e7f8b2d7ecfefa3db6256cfb682766ed5bcb71daea` |
| 86 | `theorem` | [comap_supr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-supr.md) | 718 | `result-track:b3dbfd28903ac571559b34553b14e9b490a986946b297eb47213b02510b224d9` |
| 87 | `theorem` | [comap_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-symm.md) | 723 | `result-track:32312264b7f168c69e09649e932c9e7211447f27268792afe5ff8c37784fe965` |
| 88 | `theorem` | [map_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/map-symm.md) | 728 | `result-track:0f4eebe7a360c1e4325eaf3e7fbed42da540680e8f2d8daebf312bbdfce06f20` |
| 89 | `theorem` | [comap_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/comap-span.md) | 732 | `result-track:746921f50d082b2802630e5105f879a4effe48901787248e2d240822956fc9a8` |
| 90 | `def` | [Parallel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel.md) | 749 | `declaration-track:e105a8bf48d73dfbb59fc7628baa1b7658071ff07790b752e463bb1698b24a12` |
| 91 | `theorem` | [Parallel.symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-symm.md) | 756 | `result-track:ac6a3546bdd4e2f1d66a0deed344118170a1de259c02325b83b01652bef51243` |
| 92 | `theorem` | [parallel_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-comm.md) | 762 | `result-track:ad4aa234a28d918357e886870d5e83d22ab97fec5ebc720e0854a11585b0e4d6` |
| 93 | `theorem` | [Parallel.refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-refl.md) | 766 | `result-track:7b1b2cc5221e4a92b40c8372ed2a52c742030fb5c3dffd4db6a59b4f2fefe28c` |
| 94 | `theorem` | [Parallel.trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-trans.md) | 770 | `result-track:9087a9d8d91702aac64a03cd32a323453008a4449f3f5130499494c040890ce8` |
| 95 | `theorem` | [Parallel.direction_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-direction-eq.md) | 777 | `result-track:c50e2dbd2edce99348836ecc9789b829ac941796ffb126b3d88f5912c350841b` |
| 96 | `theorem` | [parallel_bot_iff_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-bot-iff-eq-bot.md) | 783 | `result-track:cd115cbfe757a1499aeaaa31bd839f17f30175e20e7d353f907148cc781bd073` |
| 97 | `theorem` | [bot_parallel_iff_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/bot-parallel-iff-eq-bot.md) | 789 | `result-track:56b51e76755e0fe60356fb1bb0c7a567cfb60a8536c53dcc25daac8010b0b281` |
| 98 | `theorem` | [parallel_iff_direction_eq_and_eq_bot_iff_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-iff-direction-eq-and-eq-bot-iff-eq-bot.md) | 792 | `result-track:ca46741577f96683b0b3d67315eb7f98177dbfcfa55cd2b24786c3ee20052fa8` |
| 99 | `theorem` | [Parallel.vectorSpan_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/parallel-vectorspan-eq.md) | 812 | `result-track:86d2130e4a5d84a1eddae16804d74770fb995c080302abd9f897e41b2787ab00` |
| 100 | `theorem` | [affineSpan_parallel_iff_vectorSpan_eq_and_eq_empty_iff_eq_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinespan-parallel-iff-vectorspan-eq-and-eq-empty-iff-eq-empty.md) | 817 | `result-track:f1c22c86db369a6f227028e9a8e201c5db32166a2f7a2491774196c036f7feed` |
| 101 | `theorem` | [affineSpan_pair_parallel_iff_vectorSpan_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasic.lean/declarations/affinespan-pair-parallel-iff-vectorspan-eq.md) | 822 | `result-track:b7220ca957c41b5c2f923f16abe82ff91a8b96e6821c658a084317312b73d3e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87cd379c84f7a0e0a10eaeca8882d24e48b119288ab12890e477668cb6687cdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
