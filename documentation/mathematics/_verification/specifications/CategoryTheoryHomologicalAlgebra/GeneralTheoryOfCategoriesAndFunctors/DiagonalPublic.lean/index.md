# Verification target: Diagonal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean.json)

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
| 1 | `abbrev` | [diagonalObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobj.md) | 38 | `declaration-track:b5e8b62bcf23819de70f582f61adbd3910548ed758e547411b5b623264a7cef7` |
| 2 | `def` | [diagonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonal.md) | 42 | `declaration-track:0b219e49127a96e409a69bcf10716e20607896e985193eea206e7469653cf959` |
| 3 | `theorem` | [diagonal_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonal-fst.md) | 46 | `result-track:0fb7176c3750b85e307734f79a3c80bdfd08f45601a6f630ef86411620639e61` |
| 4 | `theorem` | [diagonal_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonal-snd.md) | 50 | `result-track:2abb5190b1c2d420f81fc55144f58acfc87d8886e0b9a8b2fea6c5dc18f34cab` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:27c31e9093d50ec683ae16fa5adbed843a31052169dc9853d70c32fccbb8cb28` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance-source-edition-5.md) | 56 | `declaration-track:9d1406cf602849a90c0c9b98de2df6d393c15c694164d7b130451a4567968d08` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:8c4976e0c896f0f6f6a90cd2140b7716d37dc20358e63a68b0e5324cbffce594` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance.md) | 62 | `declaration-track:1a8760c4b57255e43c50eb60b033a2fe69bb330c9067c134ad0f903381296348` |
| 9 | `lemma` | [isIso_diagonal_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/isiso-diagonal-iff.md) | 66 | `result-track:959b0241cf3d32884a135cf2d3ebd8c62318afd2adf4a37e27c03b8ae5c5dd78` |
| 10 | `theorem` | [diagonal_isKernelPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonal-iskernelpair.md) | 71 | `result-track:af39126e05e6bd74c41d7cdf6790f8941fa8e2c822c7d86e16287148dc9491b8` |
| 11 | `theorem` | [pullback_diagonal_map_snd_fst_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-diagonal-map-snd-fst-fst.md) | 90 | `result-track:d6f1d2baba82daab767ac9bce52e4d806b8db4aca28c00a1c04a810fd86084bc` |
| 12 | `theorem` | [pullback_diagonal_map_snd_snd_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-diagonal-map-snd-snd-fst.md) | 100 | `result-track:f511845d004fb39c7193b15f85f7a58e50641bebe4bd3a3316285f9946c934a1` |
| 13 | `abbrev` | [pullbackDiagonalMapIso.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso-hom.md) | 112 | `declaration-track:a80a80b7a7a6c1b7fddedd2d40e36492212d06e6510e1b8e573a55885c556298` |
| 14 | `abbrev` | [pullbackDiagonalMapIso.inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso-inv.md) | 126 | `declaration-track:d7f6ee78aaaac75309192eb5db3357ebbf7af15602b2c48a78b15e763560419b` |
| 15 | `def` | [pullbackDiagonalMapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso.md) | 155 | `declaration-track:7181e392fb4475975471070d63bd5470e63449eeb19ab2b655f24703d3963500` |
| 16 | `theorem` | [pullbackDiagonalMapIso.hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso-hom-fst.md) | 166 | `result-track:c9bc1d506de78cb392c047e333a1f74b9e9766e7537e1f32aff1b6642b21d141` |
| 17 | `theorem` | [pullbackDiagonalMapIso.hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso-hom-snd.md) | 174 | `result-track:7519d1ebc456f61fa3491e6e4386e713720790b11456a8db1ea611ac55272fab` |
| 18 | `theorem` | [pullbackDiagonalMapIso.inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso-inv-fst.md) | 182 | `result-track:73dced2a6e7bd364ecebf0fa9d1cb51f8e599842c8df866b3893f73526d0e675` |
| 19 | `theorem` | [pullbackDiagonalMapIso.inv_snd_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso-inv-snd-fst.md) | 190 | `result-track:d50752aec5d568d61a07078feac68c0fb0776a03f67e6182bfb5bc3796650117` |
| 20 | `theorem` | [pullbackDiagonalMapIso.inv_snd_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapiso-inv-snd-snd.md) | 198 | `result-track:0bd510718dd76d3f56331cbf02be123d90ef6fb1caba103a46acafaa57460dc4` |
| 21 | `theorem` | [pullback_fst_map_snd_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-fst-map-snd-ispullback.md) | 205 | `result-track:6e85c8b2f93d909a27e61be52bf546c7e6a6bf8f002a977eae1dc47de7de497b` |
| 22 | `def` | [pullbackDiagonalMapIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapidiso.md) | 241 | `declaration-track:3e7c3dda64f1c3564d7d5f9833fd5868949b2244d5e302d35202ad25d27696dc` |
| 23 | `theorem` | [pullbackDiagonalMapIdIso_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapidiso-hom-fst.md) | 261 | `result-track:3a810fc2ff1a0654e88fdfc0c2f5e893ccf68800da877eb8ee26f7293de89d0c` |
| 24 | `theorem` | [pullbackDiagonalMapIdIso_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapidiso-hom-snd.md) | 269 | `result-track:85f4f38a9bbc53e7aaa7fa0cbb7dcd4d85336d8687d7907287f80ef1fcf1e62a` |
| 25 | `theorem` | [pullbackDiagonalMapIdIso_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapidiso-inv-fst.md) | 277 | `result-track:95f2f78cca70b5f93a69481eb220bbba9839fca5881eaf41c7572aeda0016758` |
| 26 | `theorem` | [pullbackDiagonalMapIdIso_inv_snd_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapidiso-inv-snd-fst.md) | 284 | `result-track:cf92f896371adf8c6798a4adff9fd6f8f67b3351e0fa0afff2a9a4a3071bafce` |
| 27 | `theorem` | [pullbackDiagonalMapIdIso_inv_snd_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackdiagonalmapidiso-inv-snd-snd.md) | 291 | `result-track:294203ad5e9aed0a799e8cfe644ce6f9d7fa98bba355fa959d1ad2ad10388d60` |
| 28 | `theorem` | [pullback.diagonal_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-diagonal-comp.md) | 297 | `result-track:082730a00acbee2c6e25dd0150cbb61b3766b85bdafaa368d8d4104872ad8b74` |
| 29 | `lemma` | [pullback.comp_diagonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-comp-diagonal.md) | 303 | `result-track:af57d4ae712e6305ae3df9c1f8f3fa0ac4c9ac339afd8a06b05739357f66c841` |
| 30 | `theorem` | [pullback_map_diagonal_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-map-diagonal-ispullback.md) | 309 | `result-track:fdcc3c8408a716ce155f44c0870ac6064a9aa1747c9c08a70832c01057276d41` |
| 31 | `def` | [diagonalObjPullbackFstIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso.md) | 321 | `declaration-track:4f73c9ae74896ee6c15b24cea46d8099112c3b70d8dde6e5c74a363de7877604` |
| 32 | `theorem` | [diagonalObjPullbackFstIso_hom_fst_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso-hom-fst-fst.md) | 330 | `result-track:876520139139aaff7bc07e4c8bac623b460794ae5861e309835333d2d8cf34f7` |
| 33 | `theorem` | [diagonalObjPullbackFstIso_hom_fst_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso-hom-fst-snd.md) | 338 | `result-track:a7b2978dfefd7f1192888e24350214458cf5240fb6289a683b8d8ab92ca07a18` |
| 34 | `theorem` | [diagonalObjPullbackFstIso_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso-hom-snd.md) | 346 | `result-track:e4575ceb0f34e23804130529584072fd34181fa77a01976caa0fc3c97cdaf41a` |
| 35 | `theorem` | [diagonalObjPullbackFstIso_inv_fst_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso-inv-fst-fst.md) | 354 | `result-track:291b17649812e628c4d0c854fba973f2e44364519a08dd1b74f3e6521dfb5d7b` |
| 36 | `theorem` | [diagonalObjPullbackFstIso_inv_fst_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso-inv-fst-snd.md) | 362 | `result-track:962069ca72bf7ad21e974e0ad5153fc010b3dc847c67e06bc5cae44bbd92588b` |
| 37 | `theorem` | [diagonalObjPullbackFstIso_inv_snd_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso-inv-snd-fst.md) | 370 | `result-track:0c7d880458f242cd9fed51733f0a5b8a9c5aaca961c1057d2540c9ca5925d9e0` |
| 38 | `theorem` | [diagonalObjPullbackFstIso_inv_snd_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonalobjpullbackfstiso-inv-snd-snd.md) | 378 | `result-track:9777985a443211b62e753fec75233ca55d8bf8b6415b74b42c1abd14daede9c7` |
| 39 | `theorem` | [diagonal_pullback_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/diagonal-pullback-fst.md) | 385 | `result-track:4e5a1d9cf8c962b5ad4c32db3886e12977cc6b1bf924489b3119e8e74ffaeeae` |
| 40 | `lemma` | [pullback_lift_diagonal_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-lift-diagonal-ispullback.md) | 396 | `result-track:8f5ef1e98d9075df2da42201facb6633d5be5d88278c555a6a87a42f643b4f95` |
| 41 | `def` | [pullbackFstFstIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullbackfstfstiso.md) | 437 | `declaration-track:8d037f799b57b4b1cfa2a706a1e0455df84ed9c09a90c1d949d8b206eaf27339` |
| 42 | `theorem` | [pullback_map_eq_pullbackFstFstIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-map-eq-pullbackfstfstiso-inv.md) | 476 | `result-track:ec2b6f431650b8e0160ff95c310d09c0ea49f1d81ceac1532c2af5a3d770b0ee` |
| 43 | `theorem` | [pullback_lift_map_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/pullback-lift-map-ispullback.md) | 484 | `result-track:b129d763b3a778658af95a3aadefb119c0bca23eddbbf02758131520eb638bab` |
| 44 | `lemma` | [isPullback_map_snd_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/ispullback-map-snd-snd.md) | 494 | `result-track:04efd3a2b8cc1339579bcc265b325db4f64d1118f21076f59806dcff8d77cfbb` |
| 45 | `abbrev` | [codiagonalObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/codiagonalobj.md) | 522 | `declaration-track:7bb500727c778286e197cfc6a0d21f675bc87cb8082549e98c0f9ed56d35880a` |
| 46 | `def` | [codiagonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/codiagonal.md) | 526 | `declaration-track:88dae40dc3d59f126c1636be719319e49c003659b5e8087c5bac5044ffad0737` |
| 47 | `theorem` | [inl_codiagonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/inl-codiagonal.md) | 530 | `result-track:013a28359facce2e0bf16bcab53158f8ab2f06cdaac80f9ceba4047906237ba1` |
| 48 | `theorem` | [inr_codiagonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/inr-codiagonal.md) | 534 | `result-track:9d98582160e7f73aa4c38358183395c34d700df9394efba54cf3088d0cad8c4e` |
| 49 | `lemma` | [op_codiagonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/op-codiagonal.md) | 537 | `result-track:5e714e37bd219cf44da6e07681c7bbf051a25d6bb1bdde9705a22539932c1d55` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance-source-edition-6.md) | 542 | `declaration-track:be8f7653e3e588527e43077ccb23f9585e5590be018e106480ab068866d64de5` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance-source-edition-3.md) | 545 | `declaration-track:3cfe7178f46f1fa4a9f27a7e8de5b46e11eae4ba0264a7048bb31f241b2d821d` |
| 52 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance-source-edition-8.md) | 548 | `declaration-track:d98d80a0948618ae83fe88c70f0eba1e5b905fa3385c91cbd7f2fd77ff226620` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/instance-source-edition-7.md) | 551 | `declaration-track:c3d0d2b963ba8548f07d130b160c4ef87c5f830177a275d2c705a2ed36a3ffaf` |
| 54 | `lemma` | [isIso_codiagonal_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/isiso-codiagonal-iff.md) | 555 | `result-track:a9a5813ce9390023c0e6883d08a7c9b6672e6d6995598895a3ac16b0edf64637` |
| 55 | `theorem` | [isPushout_map_codiagonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DiagonalPublic.lean/declarations/ispushout-map-codiagonal.md) | 574 | `result-track:cb458e89b89814a77fd475799016c55d4bc067249649b6717e0253e0a851c92d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d7ab5c48fe39d4aa4dfa60722b44a80b10a526df3cf1e7a6cfcff04815bed41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
