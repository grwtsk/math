# Verification target: Subgroupoid Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2a2357610d3e41214dbfdfa64df2819c4d287c1",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2a2357610d3e41214dbfdfa64df2819c4d287c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid.VertexGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subgroupoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/subgroupoid.md) | 73 | `declaration-track:096712bb71a6bda1c2518afb7548d3c716de2b11026370cee24e9c85afcaeb84` |
| 2 | `theorem` | [inv_mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/inv-mem-iff.md) | 83 | `result-track:01410a5e5ce787f2a63f2578733d5b10acdf2deb019e8a33da9ecc9309ba063c` |
| 3 | `theorem` | [mul_mem_cancel_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mul-mem-cancel-left.md) | 91 | `result-track:636675e7b53b9b954c5507275ac171de279ae2faf33b3ed73652de690d390efd` |
| 4 | `theorem` | [mul_mem_cancel_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mul-mem-cancel-right.md) | 101 | `result-track:22b43a119087a54f0c526b0b8ba0ab61b6bee9806ab879f33f797d7115b18205` |
| 5 | `def` | [objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/objs.md) | 112 | `declaration-track:11c0d0c85d0ec69f3eb8f8133889a711d18468acf1481671946f68ccf0ff06db` |
| 6 | `theorem` | [mem_objs_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-objs-of-src.md) | 116 | `result-track:15e9cf4467dcadd4c6ad6127f698b3729d76efa3fb01c0bf4fb22e8a995728d8` |
| 7 | `theorem` | [mem_objs_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-objs-of-tgt.md) | 120 | `result-track:2f1167c4eed7c559c1f96dda55a1e4008c8e23e35a0e721bab869b139f255af6` |
| 8 | `theorem` | [id_mem_of_nonempty_isotropy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/id-mem-of-nonempty-isotropy.md) | 124 | `result-track:3b7f2aebb05ce4ebe34fbc34365805940ddf39c911b1e21c5f3c2710486dc08a` |
| 9 | `theorem` | [id_mem_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/id-mem-of-src.md) | 130 | `result-track:d3b94992a7be5d1e9533c25464d52237274a36fbb4e384789cd620f118202f26` |
| 10 | `theorem` | [id_mem_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/id-mem-of-tgt.md) | 134 | `result-track:8bd6b9085891ad8bdb8741727b0e95cfaff142b5799fbc985b20e5a0abd37a37` |
| 11 | `def` | [asWideQuiver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/aswidequiver.md) | 139 | `declaration-track:0cac156bd17d2497a8a315acd78b68c66095d6cf336ecbd915bb010b2d64f953` |
| 12 | `instance` | [coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/coe.md) | 145 | `declaration-track:fdbb2e62d373f873a262f3a1bc945dc00e1f123373fadb50e013ea24cb8f745b` |
| 13 | `theorem` | [coe_inv_coe'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/coe-inv-coe.md) | 153 | `result-track:ab774cd0b17638ff7bd22445c3cdb9fcb1188319d65906573d891634599656ed` |
| 14 | `def` | [hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/hom.md) | 159 | `declaration-track:1bea2ede37182946cf7063ee34a0024bf2e62c5022a0747f84c48ddacb6f6e00` |
| 15 | `theorem` | [hom.inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/hom-inj-on-objects.md) | 166 | `result-track:c879f51558f1be27594e2a8156deef603d28a7f8901ec4758c4fe01b3ca68003` |
| 16 | `theorem` | [hom.faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/hom-faithful.md) | 171 | `result-track:e9b9b1f3852c77f75b76f1ac012761f50596c1dd160c0dfbdb34afe3f447ac3d` |
| 17 | `def` | [vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/vertexsubgroup.md) | 176 | `declaration-track:5a2993b031d0d7f259da06fad3b84eddd87bbbe3230fb2c9d53a949219066a07` |
| 18 | `def` | [toSet](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/toset.md) | 184 | `declaration-track:f9c2bc40cf53f4d69a07d85afbcd5f3f5e58d3530badcbfb9a948c9b0f8a42fc` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/instance-source-edition-7.md) | 187 | `declaration-track:fd3a278ed42a7073b7fb7cc689ab9d2194fd2d824c857e7a4e32f3f50bc4a227` |
| 20 | `theorem` | [mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-iff.md) | 191 | `result-track:2a99c4b8e5592bc8f7471af383212c3c4acfd6dec3eafde412273626588af4ec` |
| 21 | `theorem` | [le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/le-iff.md) | 195 | `result-track:2a49dcb721fd52ecebff62ce281bb85fa66fe6f7868c2043dc4a4fef7d6fcf68` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/instance.md) | 199 | `declaration-track:21b55e1099e2d0fb13390b12b35e0ac9b6f47d4043ed85d2341aa643e2b623cf` |
| 23 | `theorem` | [mem_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-top.md) | 204 | `result-track:aec35b8d1dd256b930e81480a6c5139b3729b33803850203201256d7602d894f` |
| 24 | `theorem` | [mem_top_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-top-objs.md) | 208 | `result-track:a328c563c7fb70d8d4355bd429316945d4536d6fd06c1610a5664904bab04ac4` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/instance-source-edition-5.md) | 213 | `declaration-track:c5b2023130447f3f2e3b8759210730addb92a0929a853f3f7a0df407f29c4696` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/instance-source-edition-4.md) | 218 | `declaration-track:96b75796e8bd858fc048ee3158b1f1a8b5e29ecd741e08f2df033abde58ac447` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/instance-source-edition-2.md) | 221 | `declaration-track:6aeea99e1034fed917899611fe27b7313f97695de570919f9ccaf5d6c440a9e8` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/instance-source-edition-3.md) | 227 | `declaration-track:807ba9e0555d6819065612b17c8039b075d814edb980ea0498d010d565f2e2b4` |
| 29 | `theorem` | [mem_sInf_arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-sinf-arrows.md) | 236 | `result-track:24f5073d2b5b31b1c1c4727bbcaf7ee2c296cf6a375e049c246b611d6777f414` |
| 30 | `theorem` | [mem_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-sinf.md) | 240 | `result-track:ba681fab25990ba8b994d0705289c981fabf51be23f1492013cddac37c75d843` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/instance-source-edition-6.md) | 244 | `declaration-track:f6c6afbfd6c0430ef4fe071a7d83841882c93215bc12ea81ce84932a2cd49d49` |
| 32 | `theorem` | [le_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/le-objs.md) | 257 | `result-track:e71c578beed7fc63912b0df2588b8d8a7d8cd39b46c8ecddd891e55bf520f37f` |
| 33 | `def` | [inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/inclusion.md) | 262 | `declaration-track:89d34d23fce635ec2204ee4f77f4a0d4ac9f3f771fcfaa958831d785960643ab` |
| 34 | `theorem` | [inclusion_inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/inclusion-inj-on-objects.md) | 269 | `result-track:529aa66d0c67c7a45cbb8733be89098c2217f1230c6728ec71a31f860f034c47` |
| 35 | `theorem` | [inclusion_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/inclusion-faithful.md) | 274 | `result-track:295b7da1fb59217ccf10c8c8713eed625c6ff1b2e26b720de4ebb093bb1e40f5` |
| 36 | `theorem` | [inclusion_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/inclusion-refl.md) | 280 | `result-track:4533d8ab97278c42a1424ef3542596ff5e92b93e00c759ae2812ba2b42c165e2` |
| 37 | `theorem` | [inclusion_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/inclusion-trans.md) | 284 | `result-track:41007b4fecc972700dc34616eea522f077b87e82c2da233fc26858984a1ebdac` |
| 38 | `theorem` | [inclusion_comp_embedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/inclusion-comp-embedding.md) | 289 | `result-track:b85212345707e9db611b48f659ebea93c75ee10302d69451b62fdd702e5bd869` |
| 39 | `inductive` | [Discrete.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/discrete-arrows.md) | 294 | `declaration-track:ec1a778e483800d7c43176041961458cdf320f5bcc21bcbea5df6ce4d58700af` |
| 40 | `def` | [discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/discrete.md) | 299 | `declaration-track:200e18d28d4b6460d74091ca45eb0517b8ea210290dc8289b4d723776eabab84` |
| 41 | `theorem` | [mem_discrete_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-discrete-iff.md) | 305 | `result-track:5b6270ee122ccbc0df69d0c5dfb077ddb66cad0aa20535c856ca52c577b47143` |
| 42 | `structure` | [IsWide](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/iswide.md) | 311 | `declaration-track:3a754c84fb4794d289c17f766a6e27333c5e5a4baa5ec2581452ba9c6fdc8ffe` |
| 43 | `theorem` | [isWide_iff_objs_eq_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/iswide-iff-objs-eq-univ.md) | 315 | `result-track:2c31db10c0c938d0c33465a764ceec59d90cccb12813553f32bc5cd09bb1ab12` |
| 44 | `theorem` | [IsWide.id_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/iswide-id-mem.md) | 326 | `result-track:d2ddac37de09e00ff67cb206b68aed540516570853da1159b839e48718951890` |
| 45 | `theorem` | [IsWide.eqToHom_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/iswide-eqtohom-mem.md) | 330 | `result-track:77a107861b862a228fe38fa304844e4a212dfcee26d1c1c51c87023d45e01b23` |
| 46 | `structure` | [IsNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isnormal.md) | 335 | `declaration-track:10b389058773ca50af5b46c3d6748bd04debfd8388297566d9110fc55397a647` |
| 47 | `theorem` | [IsNormal.conj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isnormal-conj.md) | 339 | `result-track:6857c2ca2a6bd04f1a95eb2581a15ed94ce035170e4ecec1e3108ed989cafbb2` |
| 48 | `theorem` | [IsNormal.conjugation_bij](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isnormal-conjugation-bij.md) | 344 | `result-track:18b6564ae964579582ac9dd21473f6b5e99959d25b6b162d01825f9562045524` |
| 49 | `theorem` | [top_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/top-isnormal.md) | 354 | `result-track:c9898165dc392c331a0b9b75e7575441520dab36a966dec831208ab52672e901` |
| 50 | `theorem` | [sInf_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/sinf-isnormal.md) | 359 | `result-track:5af9ed0d4ce71d343620f7f458aa13a22e06a8cb71f75717e3215ed2f69afbc7` |
| 51 | `theorem` | [discrete_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/discrete-isnormal.md) | 364 | `result-track:06f444e5b63899ce6d262c0132343b2c0d83d0560b14fc17bee857e6cc1e665b` |
| 52 | `theorem` | [IsNormal.vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isnormal-vertexsubgroup.md) | 371 | `result-track:711edf014d24d4061e5354022795aa1ac149d80666c91c02e25b142e246c7aaf` |
| 53 | `def` | [generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/generated.md) | 382 | `declaration-track:4a4f21ff0fe665b3295b1150854517a3a7912db0b2c1b5188df1cf2dd81b5573` |
| 54 | `theorem` | [subset_generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/subset-generated.md) | 386 | `result-track:cd63834296e7ee9ef8b3aef7f3d7d9c19e8bda3d95c66b472f142483ff74e676` |
| 55 | `def` | [generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/generatednormal.md) | 393 | `declaration-track:946e7fdb30d0868450d644a5a7c306dbfe537fa12de67ef420e09e969be12c7e` |
| 56 | `theorem` | [generated_le_generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/generated-le-generatednormal.md) | 397 | `result-track:f773dea1b94cd515e70dd020defb6c0f288abc1f446b44019693e94d68180ddb` |
| 57 | `theorem` | [generatedNormal_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/generatednormal-isnormal.md) | 402 | `result-track:998a543ce0e23d285b1d1cd9b34e09b7d58aa0b3bc668dfe1cbfe0b20b5b43b6` |
| 58 | `theorem` | [IsNormal.generatedNormal_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isnormal-generatednormal-le.md) | 406 | `result-track:527c476668d9c700f372cf1882bf49963c77d09fa83b85e9b495b45bbf590565` |
| 59 | `def` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/comap.md) | 427 | `declaration-track:288834dad344be021ba849c7f04fb3081f9e79c60478300ae126ed0935013a7b` |
| 60 | `theorem` | [comap_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/comap-mono.md) | 436 | `result-track:d5080bb057f172c87252345f3217914e0a5aa2d58d1a3b11dd393ab752705012` |
| 61 | `theorem` | [isNormal_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isnormal-comap.md) | 440 | `result-track:248627859cc1c9212305fca35760befa264ccf0c972c03d3f78ac39f15a44c7c` |
| 62 | `theorem` | [comap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/comap-comp.md) | 448 | `result-track:db072097f087c44c13db2ff0c3c7d2961af1a7d0654c5c702e6e29ded7890c60` |
| 63 | `def` | [ker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/ker.md) | 453 | `declaration-track:b0f67e23b66c204c0c8a0f125bd5663a8e00eb8b465dc098605bd171b6132462` |
| 64 | `theorem` | [mem_ker_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-ker-iff.md) | 457 | `result-track:6fb2ef03e73a3c4695cd34b971280dc6830868183fdc688165236446c5921a41` |
| 65 | `theorem` | [ker_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/ker-isnormal.md) | 462 | `result-track:6fe7d20e19201a895c2849868e0e212062d3bb4350c7998d6b6114a6b2d1cd62` |
| 66 | `theorem` | [ker_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/ker-comp.md) | 467 | `result-track:dd45e97f4b2ee4400fd674917078c9ef3cc5cddb35c038808a34555aa037ab2e` |
| 67 | `inductive` | [Map.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/map-arrows.md) | 472 | `declaration-track:7d09d330282aa1b0a683818b87f18e2f9276362041e15fef9c5e2a1464df9f50` |
| 68 | `theorem` | [Map.arrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/map-arrows-iff.md) | 476 | `result-track:f59a1aa2c23ae88925f88a287b7a8d34f71a7ecfe9c8db766dc1ba06b42c8ef9` |
| 69 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/map.md) | 486 | `declaration-track:b65c6d516b4eaad38fbe7e587b17a4bb920d87f4a310c305e7d4c4fa7e29e720` |
| 70 | `theorem` | [mem_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-map-iff.md) | 499 | `result-track:747d3a9c74d373a7a42adbfce389eb9919498b319928e0a4de4e76c2154759a8` |
| 71 | `theorem` | [galoisConnection_map_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/galoisconnection-map-comap.md) | 506 | `result-track:ca6928cd26021e66e73f96fcd6ca1e75720a5ee1d0ab2bb18c159b81dfc302ff` |
| 72 | `theorem` | [map_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/map-mono.md) | 514 | `result-track:26d4c41eb5649ae8137bef5706d392f90f253b43498dfc233c41cef2e7b96400` |
| 73 | `theorem` | [le_comap_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/le-comap-map.md) | 518 | `result-track:b29a6cc592ffcbf6f2a4dcaa0baeabe1e1c715c4d82a28a50d504485f60cfdf4` |
| 74 | `theorem` | [map_comap_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/map-comap-le.md) | 523 | `result-track:4bb25e94f38ffdf95f2bb85b838ad41351a2d6b0cf680672db0792acd1c09d11` |
| 75 | `theorem` | [map_le_iff_le_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/map-le-iff-le-comap.md) | 528 | `result-track:e78917f69d57b689d6c349bee64c445d6f68c98cb0e147187f199e516ec4cc9f` |
| 76 | `theorem` | [mem_map_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-map-objs-iff.md) | 533 | `result-track:1d6665662af01cc36351d19938094cbc11215f6e51f7b34935519ad2f37e11fc` |
| 77 | `theorem` | [map_objs_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/map-objs-eq.md) | 546 | `result-track:2d75e07532b05504771a276a5a0b87abb100a2a94feaf6da3ec79c2a1231fcfa` |
| 78 | `def` | [im](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/im.md) | 551 | `declaration-track:2e2baa02817882b601ac4c09b781852bdd633755d67bc5c04f48c95d92086835` |
| 79 | `theorem` | [mem_im_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-im-iff.md) | 555 | `result-track:1d898cf7f19ffa281ebda817675dfcf3060cc91d55a7121d077801e30b35f0c9` |
| 80 | `theorem` | [mem_im_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-im-objs-iff.md) | 562 | `result-track:db052095bd052151828457e2352d92fa881d767082a3b596bce77cc9b2e649a0` |
| 81 | `theorem` | [obj_surjective_of_im_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/obj-surjective-of-im-eq-top.md) | 567 | `result-track:7a7de1b1a141179628feab18ed4018c6605ae99a31c58d425543845e874c1efe` |
| 82 | `theorem` | [isNormal_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isnormal-map.md) | 574 | `result-track:3586b0a3df3d2694ce88ab224c6d0cb65a407441b23f7af283c206e617819c45` |
| 83 | `abbrev` | [IsThin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isthin.md) | 602 | `declaration-track:a3ef4d005d3cc2afbac00b3eedcbd7e4c737be3fe01120045ad93dae013764e6` |
| 84 | `theorem` | [isThin_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/isthin-iff.md) | 606 | `result-track:734967eec491aed38d9029be70d6ea330cfb33fe4c8a08e3b01c6b58048c28cc` |
| 85 | `abbrev` | [IsTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/istotallydisconnected.md) | 614 | `declaration-track:9280dc6d134ce35cba155449412238aabfd448591f3124bf9e609f8fe1af6cff` |
| 86 | `theorem` | [isTotallyDisconnected_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/istotallydisconnected-iff.md) | 618 | `result-track:bb43c94a9ee93b67bf713ffbb4613d75e2d2a6f81763cf723abe61d43a78626d` |
| 87 | `def` | [disconnect](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/disconnect.md) | 630 | `declaration-track:e65464587a56d4382ad665bf735a09513f39ccc5173bbebe42e90eb55d4bedd8` |
| 88 | `theorem` | [disconnect_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/disconnect-le.md) | 636 | `result-track:c66463ca3cb8cc8ce894fa689a145e6f84c15e8e8d6df041d57631bcc0a5408f` |
| 89 | `theorem` | [disconnect_normal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/disconnect-normal.md) | 639 | `result-track:fc18157dded5c194269e055348858abb9782db75cfbdcc08ea778780553154c4` |
| 90 | `theorem` | [mem_disconnect_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-disconnect-objs-iff.md) | 645 | `result-track:7444b8754dfb9da174c4d17df402d48dd1c714723a2b416b40a5cb5c09d162f2` |
| 91 | `theorem` | [disconnect_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/disconnect-objs.md) | 649 | `result-track:6943918f044df3698f547d7bb3b2e930d1a97cc895bd20d143f135e5e29d86ab` |
| 92 | `theorem` | [disconnect_isTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/disconnect-istotallydisconnected.md) | 652 | `result-track:bf87e8e744db53b2b42d9a75fd7ac8ab23d24a69e59cb335a2d44df24c6bba88` |
| 93 | `def` | [full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/full.md) | 663 | `declaration-track:c562bec61a88862fc095dff088d0e2b9d3e1aca42cb591c9cc5718ebadfc3785` |
| 94 | `theorem` | [full_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/full-objs.md) | 669 | `result-track:74a77eabb5d453efb0677bd147e8af099babd90c88aaaf67dbd53be4fa838186` |
| 95 | `theorem` | [mem_full_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-full-iff.md) | 674 | `result-track:576562d1f49dcb3418c60a78c76c68829310313aedd5a25b03f1a327054ea1fe` |
| 96 | `theorem` | [mem_full_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/mem-full-objs-iff.md) | 679 | `result-track:83f9a1a142e4d2f65e1e661ca3766a97df452b4d232289f4a7449d8ca46a70ee` |
| 97 | `theorem` | [full_empty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/full-empty.md) | 683 | `result-track:9b21b924105222251678706e7ff171cc1b0fecbe608f97925b93d986ae45e67e` |
| 98 | `theorem` | [full_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/full-univ.md) | 689 | `result-track:06c7434dfe45bb3ef6eea0558dcf40641bd8271b9cf297460d52ff0cf9ee7b9c` |
| 99 | `theorem` | [full_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/full-mono.md) | 694 | `result-track:afe11be6ac3357d7e068e4e5e2f3eda1075aeb3dc286f7b21e2bb7499ea70be3` |
| 100 | `theorem` | [full_arrow_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidAligned.lean/declarations/full-arrow-eq-iff.md) | 702 | `result-track:eb40ce295b616872a21dc49d7d8858f118bc2b67a2b3f9e82c4e40e485479db0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36443be72900f6dc7d60eea4372f7f85b504f05ad09efe3e14a2964194c81c31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
