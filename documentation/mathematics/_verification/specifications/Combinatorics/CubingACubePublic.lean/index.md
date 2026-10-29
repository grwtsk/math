# Verification target: Cubing ACube Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ff59342ec5383a568d0f98668d727728e63faee",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CubingACubePublic.lean/index.md) · [Full source](../../../../Combinatorics/CubingACubePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ff59342ec5383a568d0f98668d727728e63faee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean.json)

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
| 1 | `theorem` | [Ico_lemma](../../../../Combinatorics/CubingACubePublic.lean/declarations/ico-lemma.md) | 40 | `result-track:6601f007ac60f81b5b434313c2d88fce139b0a01f397c7ed4ea148747920a372` |
| 2 | `structure` | [Cube](../../../../Combinatorics/CubingACubePublic.lean/declarations/cube.md) | 52 | `declaration-track:423f93264ab36d487b73ca9dcf58d10e2787b46d681776cb1baef8f6d8d54dd2` |
| 3 | `theorem` | [hw'](../../../../Combinatorics/CubingACubePublic.lean/declarations/hw.md) | 59 | `result-track:3d41baa4e0ad38620388ea72f204f5f6cddc632ce598dca20c89de6e6ccf3d7f` |
| 4 | `def` | [side](../../../../Combinatorics/CubingACubePublic.lean/declarations/side.md) | 63 | `declaration-track:9cd2d54235ed276b0c74b6b2a5567f95a21a1fdc49a9ba2640fa1a6168681c62` |
| 5 | `theorem` | [b_mem_side](../../../../Combinatorics/CubingACubePublic.lean/declarations/b-mem-side.md) | 67 | `result-track:1a5d281cd3031c144d5b1137a0e8e98b7d9ef91fc8ad940a71c92b37ef231399` |
| 6 | `def` | [toSet](../../../../Combinatorics/CubingACubePublic.lean/declarations/toset.md) | 69 | `declaration-track:e11c412292ba053cfccad035f1af6174fa3767903ebd28a49d84e5adc21450f4` |
| 7 | `theorem` | [side_nonempty](../../../../Combinatorics/CubingACubePublic.lean/declarations/side-nonempty.md) | 72 | `result-track:16b1bf2cc23ec24930fce95ffef5437600d2b5a0b0e71e279fd60abe39fd1282` |
| 8 | `theorem` | [univ_pi_side](../../../../Combinatorics/CubingACubePublic.lean/declarations/univ-pi-side.md) | 74 | `result-track:2b9f96193d7111cba72e5ff1eb9df936833aa80779632a8be1bb70ae61af7fb6` |
| 9 | `theorem` | [toSet_subset](../../../../Combinatorics/CubingACubePublic.lean/declarations/toset-subset.md) | 77 | `result-track:315132dbb6a29e1d23cf589bcf452f702ef573c65bcf40f9ade15a4876a0b96c` |
| 10 | `theorem` | [toSet_disjoint](../../../../Combinatorics/CubingACubePublic.lean/declarations/toset-disjoint.md) | 81 | `result-track:2d085846d40058cc1f5bc636fbc96abb6540bf542641a2f1a88af8cbdcb12e86` |
| 11 | `theorem` | [b_mem_toSet](../../../../Combinatorics/CubingACubePublic.lean/declarations/b-mem-toset.md) | 85 | `result-track:8997472c355084b1a6861c2915dcd793093191cf82d5191f2b2969f1b2d6e208` |
| 12 | `def` | [tail](../../../../Combinatorics/CubingACubePublic.lean/declarations/tail.md) | 87 | `declaration-track:4bf1b1a460b9579bca5608f5269edb4df2de32bc0d828ddedd3fbf605111cc25` |
| 13 | `theorem` | [side_tail](../../../../Combinatorics/CubingACubePublic.lean/declarations/side-tail.md) | 90 | `result-track:e364274e2da5729f24a06f9ef60fff85f6cc159c73c90802c42809a100473712` |
| 14 | `def` | [bottom](../../../../Combinatorics/CubingACubePublic.lean/declarations/bottom.md) | 93 | `declaration-track:106614b8d3628fb1aa35e89ff3728372193e3794f5f06a7d6ebac805d450c0c4` |
| 15 | `theorem` | [b_mem_bottom](../../../../Combinatorics/CubingACubePublic.lean/declarations/b-mem-bottom.md) | 96 | `result-track:8a4359702541bff59715468ad326485ad4803a628c58c4b6bfb1a78e4e28ed16` |
| 16 | `def` | [xm](../../../../Combinatorics/CubingACubePublic.lean/declarations/xm.md) | 99 | `declaration-track:ca5e17cb8bcf64303e940e86cfd546944d818dd8bdae07d96229d5d214cde791` |
| 17 | `theorem` | [b_lt_xm](../../../../Combinatorics/CubingACubePublic.lean/declarations/b-lt-xm.md) | 102 | `result-track:82c0e8bba9391d5f25b40cbf13aa90d6b1fdb84ee1e4c00dc43792e44f50ddf5` |
| 18 | `theorem` | [b_ne_xm](../../../../Combinatorics/CubingACubePublic.lean/declarations/b-ne-xm.md) | 104 | `result-track:04a8154c922a70a60697b8ef8d2e8d881768c0557ffa1553c2996ca1d137bda6` |
| 19 | `def` | [shiftUp](../../../../Combinatorics/CubingACubePublic.lean/declarations/shiftup.md) | 107 | `declaration-track:73504326ddc6d3ccb415b504ae5808ccc807a3b929e6e673b7e4b6cbb02eb05e` |
| 20 | `theorem` | [tail_shiftUp](../../../../Combinatorics/CubingACubePublic.lean/declarations/tail-shiftup.md) | 111 | `result-track:474cad47357f22cca6e4908db4edba34e685866411fdf09af32b27782b84e210` |
| 21 | `theorem` | [head_shiftUp](../../../../Combinatorics/CubingACubePublic.lean/declarations/head-shiftup.md) | 114 | `result-track:0b30445b7004db6a300d80323bf5c3e6988453327481860aedaf54eea6b307b3` |
| 22 | `def` | [unitCube](../../../../Combinatorics/CubingACubePublic.lean/declarations/unitcube.md) | 117 | `declaration-track:7d6b688235fe79d9ad916ca7f012f3aae420c1c02ce45d79932e21cdf555ea93` |
| 23 | `theorem` | [side_unitCube](../../../../Combinatorics/CubingACubePublic.lean/declarations/side-unitcube.md) | 121 | `result-track:c215a7d605852c467cecf5409b836182840f5491359cb4b924aef6ce31fd04dc` |
| 24 | `structure` | [Correct](../../../../Combinatorics/CubingACubePublic.lean/declarations/correct.md) | 131 | `declaration-track:92c5ec6c6899eb8e7f50080452fc97f3fa08d66c82c57e047f5d9e109975434e` |
| 25 | `theorem` | [toSet_subset_unitCube](../../../../Combinatorics/CubingACubePublic.lean/declarations/toset-subset-unitcube.md) | 142 | `result-track:7e508889599ead634d4340b73e8b96d99178042acd4503ceff9d8c4ada8d3577` |
| 26 | `theorem` | [side_subset](../../../../Combinatorics/CubingACubePublic.lean/declarations/side-subset.md) | 145 | `result-track:840472fdc37215456331bfdd3ab3a4a4ae954538a04582c9e8a2d88d4cd60657` |
| 27 | `theorem` | [zero_le_of_mem_side](../../../../Combinatorics/CubingACubePublic.lean/declarations/zero-le-of-mem-side.md) | 148 | `result-track:5a7853e332c4fbb09256f931cf0d25455817bc7739c6b16c7284d9c40f001956` |
| 28 | `theorem` | [zero_le_of_mem](../../../../Combinatorics/CubingACubePublic.lean/declarations/zero-le-of-mem.md) | 151 | `result-track:77c024b793880606ffca2ff72c51dd9cf690e2354bf69c4de34c610c2f748893` |
| 29 | `theorem` | [zero_le_b](../../../../Combinatorics/CubingACubePublic.lean/declarations/zero-le-b.md) | 154 | `result-track:f04be004641e82388b90196e5c8ac1abbb261a0f3eedd93fc69727419231f2ec` |
| 30 | `theorem` | [b_add_w_le_one](../../../../Combinatorics/CubingACubePublic.lean/declarations/b-add-w-le-one.md) | 157 | `result-track:8ad1163c589d60f6aed19d4c7966b2e3a98b8b6eb54a1951d81b1fe05da0ad77` |
| 31 | `theorem` | [nontrivial_fin](../../../../Combinatorics/CubingACubePublic.lean/declarations/nontrivial-fin.md) | 163 | `result-track:390a75bb8363bb1e4b4a373560f33efac67ee95314e61359fa7f451ba734818d` |
| 32 | `theorem` | [w_ne_one](../../../../Combinatorics/CubingACubePublic.lean/declarations/w-ne-one.md) | 167 | `result-track:a69c31c34660102effd9834129a9d063a13bdbfbeb02cc3e6f0bbbd2b4669e2c` |
| 33 | `theorem` | [shiftUp_bottom_subset_bottoms](../../../../Combinatorics/CubingACubePublic.lean/declarations/shiftup-bottom-subset-bottoms.md) | 185 | `result-track:72872431b7b7cdcb406026deb8d99e2b6bea3d3262c38a738e5636d36c2591f2` |
| 34 | `def` | [Valley](../../../../Combinatorics/CubingACubePublic.lean/declarations/valley.md) | 217 | `declaration-track:16b3b665a9f0ac4aeeece0cba22c44804029cef34782ff37c35d909e26dda488` |
| 35 | `theorem` | [valley_unitCube](../../../../Combinatorics/CubingACubePublic.lean/declarations/valley-unitcube.md) | 226 | `result-track:19a71fd911a23da532d76672b1ef3c7be5c47ddc72c6afb2741fa700d7ad1a4d` |
| 36 | `def` | [bcubes](../../../../Combinatorics/CubingACubePublic.lean/declarations/bcubes.md) | 247 | `declaration-track:2fb71af63d8af2667949211eb8829095486a8db9bc277db7010eb905c64c0de3` |
| 37 | `def` | [OnBoundary](../../../../Combinatorics/CubingACubePublic.lean/declarations/onboundary.md) | 251 | `declaration-track:a163f18d36b25df5d2025d5b3c05f177e437f841a190f38b0f0a0f6f660f5454` |
| 38 | `theorem` | [tail_sub](../../../../Combinatorics/CubingACubePublic.lean/declarations/tail-sub.md) | 254 | `result-track:c0cf4982157249b896fd4550de535fcf1ecc78e1e4c2788a1d00257fbcb0ffd1` |
| 39 | `theorem` | [bottom_mem_side](../../../../Combinatorics/CubingACubePublic.lean/declarations/bottom-mem-side.md) | 257 | `result-track:7a344e9b12c79719fbb5ae850bc9a2eb8b3b801ed212384983b60cbe418bda70` |
| 40 | `theorem` | [b_le_b](../../../../Combinatorics/CubingACubePublic.lean/declarations/b-le-b.md) | 260 | `result-track:db0e25d7e3888e660bc9b264172b9009e9baf79c9d97cb6136fd2797b29a16e9` |
| 41 | `theorem` | [t_le_t](../../../../Combinatorics/CubingACubePublic.lean/declarations/t-le-t.md) | 263 | `result-track:7fd2e3bcb28c90932a20660c9d20888253c9adef77c2bf07f73c898d3da077a4` |
| 42 | `theorem` | [w_lt_w](../../../../Combinatorics/CubingACubePublic.lean/declarations/w-lt-w.md) | 273 | `result-track:a317410fe6acc0e2b3817e236c1934036e5e2570c150270136e768d24c17148d` |
| 43 | `theorem` | [nontrivial_bcubes](../../../../Combinatorics/CubingACubePublic.lean/declarations/nontrivial-bcubes.md) | 280 | `result-track:1d21de52f8af4473e7b444cdf7895e64ebf3f151f6f7bb6014cb643ea5993abd` |
| 44 | `theorem` | [nonempty_bcubes](../../../../Combinatorics/CubingACubePublic.lean/declarations/nonempty-bcubes.md) | 306 | `result-track:12885f8e6eb510d505cc9fe3dbb736f1e7cab5f7058b28c24571febdca6f7c4c` |
| 45 | `theorem` | [exists_mi](../../../../Combinatorics/CubingACubePublic.lean/declarations/exists-mi.md) | 312 | `result-track:0ac85bebab46c4dfbf3bf5781d69325260a63b6a0c657973e85e84ce07f42330` |
| 46 | `def` | [mi](../../../../Combinatorics/CubingACubePublic.lean/declarations/mi.md) | 316 | `declaration-track:02f4ca3ce5ab8a77a1ad5c2bdb2d9982e34fd146a76cfce0e2b3cb42272fa368` |
| 47 | `theorem` | [mi_mem_bcubes](../../../../Combinatorics/CubingACubePublic.lean/declarations/mi-mem-bcubes.md) | 321 | `result-track:ce11504a7cedc7ccbe76edafc49f603141110f1091beda9f95e3743691c70472` |
| 48 | `theorem` | [mi_minimal](../../../../Combinatorics/CubingACubePublic.lean/declarations/mi-minimal.md) | 324 | `result-track:3038a902b98be007c78431e68caef081c53127f77012a225b158edc893ebb7f1` |
| 49 | `theorem` | [mi_strict_minimal](../../../../Combinatorics/CubingACubePublic.lean/declarations/mi-strict-minimal.md) | 327 | `result-track:333da0ed58657ed2bc60f4a37a08606a401a0c32f8a5f57724febdefd38b7116` |
| 50 | `theorem` | [mi_xm_ne_one](../../../../Combinatorics/CubingACubePublic.lean/declarations/mi-xm-ne-one.md) | 332 | `result-track:196abb08ed8032f5cc4e7206c21170c18fae8593bc13fcde8b1afa7ae7ee991d` |
| 51 | `theorem` | [smallest_onBoundary](../../../../Combinatorics/CubingACubePublic.lean/declarations/smallest-onboundary.md) | 345 | `result-track:cf38e7a8bbe064823f6883fcd8c32184b29e4e8858e888eb6b29062b54747b67` |
| 52 | `theorem` | [mi_not_onBoundary](../../../../Combinatorics/CubingACubePublic.lean/declarations/mi-not-onboundary.md) | 382 | `result-track:061b768289fdb1e3b248d3b390778480102f40392491fcaee29eddb9523a0fdb` |
| 53 | `theorem` | [mi_not_onBoundary'](../../../../Combinatorics/CubingACubePublic.lean/declarations/mi-not-onboundary-source-edition-2.md) | 439 | `result-track:a18db13c9679275b4b019b7c398bcf81beae36feecf85140085dff50143695f3` |
| 54 | `theorem` | [valley_mi](../../../../Combinatorics/CubingACubePublic.lean/declarations/valley-mi.md) | 452 | `result-track:4692c6ab311ca5378b5a03f62aba8568f811ee5449174ed1b86da3f5256a0206` |
| 55 | `def` | [sequenceOfCubes](../../../../Combinatorics/CubingACubePublic.lean/declarations/sequenceofcubes.md) | 508 | `declaration-track:6887475f64f172b1279bf4b56b59da15dcedb32fed0d7035f01324c8a625968d` |
| 56 | `def` | [decreasingSequence](../../../../Combinatorics/CubingACubePublic.lean/declarations/decreasingsequence.md) | 516 | `declaration-track:6c8e8c9cf8c7926fc17202f303acd1e814ceff9888b1dcfcef4232b3182fe3af` |
| 57 | `theorem` | [strictAnti_sequenceOfCubes](../../../../Combinatorics/CubingACubePublic.lean/declarations/strictanti-sequenceofcubes.md) | 524 | `result-track:e31a11fe9a58cccae1336dfe8d250afdeed5a3944a5d3bffd03af6df59bec0ef` |
| 58 | `theorem` | [injective_sequenceOfCubes](../../../../Combinatorics/CubingACubePublic.lean/declarations/injective-sequenceofcubes.md) | 529 | `result-track:87582528f01d81ac2b80252745dd0c6b20c9fa53f2860ad8a6cbc0c56176c971` |
| 59 | `theorem` | [not_correct](../../../../Combinatorics/CubingACubePublic.lean/declarations/not-correct.md) | 534 | `result-track:12e40f2a04abbc5d4675f9d1528e3e2afd53ef73b78914ac5c6a3039c66d24c1` |
| 60 | `theorem` | [cannot_cube_a_cube](../../../../Combinatorics/CubingACubePublic.lean/declarations/cannot-cube-a-cube.md) | 538 | `result-track:5eea7e20a59def2b4cfa72c2382a233e04ffdb9fed5422c9edc789ad87ef5571` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8eff02fed52d412680146aecaf1fe0bc8c73b7d281a8c669d81aea9328ea3d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
