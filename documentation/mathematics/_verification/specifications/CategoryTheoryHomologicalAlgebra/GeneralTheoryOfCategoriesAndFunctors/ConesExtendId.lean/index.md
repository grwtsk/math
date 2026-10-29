# Verification target: Cones Extend Id

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8997cfb2981400718cc18c12a426172e6160949",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8997cfb2981400718cc18c12a426172e6160949`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Const` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cones-source-edition-2.md) | 67 | `declaration-track:3aff623acaeafc0be455a13919c2c61e36ebc3c35f4bbce016ed8e6b4f5feb52` |
| 2 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocones-source-edition-2.md) | 75 | `declaration-track:e13ae533501c1b6c0f655a4000e721bb6db332a8889a9bf840e923e9f9d780b5` |
| 3 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cones.md) | 88 | `declaration-track:28c4ae3ec81fd60f9cb1655f7e1344cc239d79b2b41bbbf21e35ffaa9f1e2d9c` |
| 4 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocones.md) | 96 | `declaration-track:ce29a9e016c128917c52b48b977286a2917ac66cee7bb94bbc66307fdb97757d` |
| 5 | `structure` | [Cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cone.md) | 116 | `declaration-track:d65f840d511afb4323de91f549d95714de020efd37ea378f487117b53737bc9c` |
| 6 | `instance` | [inhabitedCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/inhabitedcone.md) | 122 | `declaration-track:95d7512d1e463dbf26c3e47b849cbb2a93687bcffd34600abe6308e4ddb8ddcb` |
| 7 | `theorem` | [Cone.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cone-w.md) | 134 | `result-track:eef783d54e0916d0288959466e297fafa8571c77875e7ce979fcde257c35911b` |
| 8 | `structure` | [Cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocone.md) | 149 | `declaration-track:f5a58a8265ff379561f06790776d98aabb68f683deac66cfb8fa527e00ad23c6` |
| 9 | `instance` | [inhabitedCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/inhabitedcocone.md) | 155 | `declaration-track:fe4f5c918ab30b7297b76c8130d50d7fd504f5b2cdfab51aaf813a6ce64e3546` |
| 10 | `theorem` | [Cocone.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocone-w.md) | 167 | `result-track:2550017ce44c3020e75b27df2efd2af8389b1b90f820533a8c8cf0bfe47ad00c` |
| 11 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/equiv.md) | 180 | `declaration-track:3fd6f96e7edbcb567a2ac6b5a9fc92531f6fd3ecc6e0e788d5fbcc329619c949` |
| 12 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extensions-source-edition-2.md) | 196 | `declaration-track:8eb927df0d9a56ce19c7494b0a453705405efe8b9d9c3ee2f9cd5b4856533c7b` |
| 13 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extend-source-edition-4.md) | 201 | `declaration-track:f80eb478df3ebf1878b00626a3c3880436d1f1f9f3ff22bc381a2e562879c29a` |
| 14 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/whisker.md) | 207 | `declaration-track:361e2f1ecec3aaabd2e73e6762116cd61991281d67860baf2f7d395c6ceaabf9` |
| 15 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/equiv-source-edition-2.md) | 216 | `declaration-track:58ab7af6bae4c178884dfdf703172841b73f56cbffb6e6d97bc0c066f3517e1c` |
| 16 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extensions.md) | 232 | `declaration-track:2f08e60af0268c355015aeed55b5ed71081a4f5ca98b6c9d4d16378d17179bbb` |
| 17 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extend.md) | 237 | `declaration-track:66cf0d03d8cf5cf63f0bf7bd2ce1c7da2b318e38f555a65fb139fc277a344a34` |
| 18 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/whisker-source-edition-2.md) | 245 | `declaration-track:cd027d69688c1eaf08ffacf5e80bee4f3959402a7b37238dca0320855c04c743` |
| 19 | `structure` | [ConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/conemorphism.md) | 253 | `declaration-track:d6912cb2de752f573c4d5710c39ca827a9dc36bd719472548038e0849e5c8253` |
| 20 | `instance` | [inhabitedConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/inhabitedconemorphism.md) | 261 | `declaration-track:7ab79a8ba62f73dae1ce2e955768bb4597e520b7ff10bea46192bbde57a4cb87` |
| 21 | `instance` | [Cone.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cone-category.md) | 266 | `declaration-track:b5f8e51677cdcecde4694944a65affe42e5c32bd5b8a5e1d794ced85be1954df` |
| 22 | `theorem` | [ConeMorphism.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/conemorphism-ext.md) | 275 | `result-track:cc068282165b0d38cb979ace8ca0633e6a68d12996dcf79cb9263002b4365efc` |
| 23 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/ext-source-edition-2.md) | 286 | `declaration-track:98d0a27dfcc98daf94337e3635fa0acdc9f9dce49609ab1647959b61ba937479` |
| 24 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/eta-source-edition-2.md) | 295 | `declaration-track:581bdd979f1df5da26a7a4c0940c8eec640224cb6702659dcd0e09d1b3eba232` |
| 25 | `theorem` | [cone_iso_of_hom_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cone-iso-of-hom-iso.md) | 301 | `result-track:fd02c57611e13bc21cb0b14e458f8c9706cbe3c550fa07bdbe98bb4a9bc63fec` |
| 26 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extend-source-edition-2.md) | 307 | `declaration-track:7ed45521b827deec9b1048d718db0cd628534ca454684f02efa46d3370afc2d2` |
| 27 | `def` | [extendId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extendid-source-edition-2.md) | 312 | `declaration-track:d3e856e01a9398e6555e3a8b24a9929127d722fe83cbe77225f7612ea29bce1d` |
| 28 | `def` | [extendComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extendcomp-source-edition-2.md) | 317 | `declaration-track:b009a7ee58fad8a7bcb16388b6d9fb5eef69bd89d7242fbf33d8445abb014680` |
| 29 | `def` | [extendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extendiso.md) | 323 | `declaration-track:5cf1893e4bd3ef7fca987faa0930bdb42d32a55a7e5d50e7b336268edb211799` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/instance.md) | 327 | `declaration-track:bdecf0f4952219d6db332f9ae75a0bd981295b766d54d704eabb8d8fb93f4909` |
| 31 | `def` | [postcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/postcompose.md) | 334 | `declaration-track:b59b4d9b869c02e803d775f3853a3a752710b7ae9904d71e35934f3687877e17` |
| 32 | `def` | [postcomposeComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/postcomposecomp.md) | 343 | `declaration-track:7bc743e1cfd590f1a43a3e94af962b96d0a55edbb81fb494559f89c98cd9d9e2` |
| 33 | `def` | [postcomposeId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/postcomposeid.md) | 349 | `declaration-track:d1a946f11487ed90da748d869b5126be8522976375e21f017225a51a5fbbc2e4` |
| 34 | `def` | [postcomposeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/postcomposeequivalence.md) | 356 | `declaration-track:144d6d1ff60bad089359a1d2626bdbce8226cbe886ec748ef0f52388ad179722` |
| 35 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/whiskering-source-edition-2.md) | 365 | `declaration-track:d72c75534f52f0d9547be950e196a96beac80e728499eaa7f2a3e8ee3c8ffbab` |
| 36 | `def` | [whiskeringEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/whiskeringequivalence-source-edition-2.md) | 372 | `declaration-track:7ce0b80d41b0373f5a80aa33b3e5132a808c52f348dc3ee8a8312adce2b607b3` |
| 37 | `def` | [equivalenceOfReindexing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/equivalenceofreindexing-source-edition-2.md) | 388 | `declaration-track:f52aed3aaf55c532c0a8ebcc401542da2545ef224d8c37db43c24b83c53d3da2` |
| 38 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/forget.md) | 397 | `declaration-track:70332f760f5c18997886bff5806afc01fee5579df996e1d759f58b99b66f0879` |
| 39 | `def` | [functoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functoriality-source-edition-2.md) | 405 | `declaration-track:e158f0856c8a2a337d21c972fdbda9793be7e7896674299402655ddd7c5d061f` |
| 40 | `def` | [functorialityCompFunctoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functorialitycompfunctoriality-source-edition-2.md) | 416 | `declaration-track:d35320f3d148fefb1a07efdbe538b6da02f50c811adbd9560dd92a7202bcf540` |
| 41 | `instance` | [functoriality_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functoriality-full.md) | 420 | `declaration-track:153d21bf5e765a8e75ea04c695cc85bc2fea2ef7b3e0ee21228485e5b63737c3` |
| 42 | `instance` | [functoriality_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functoriality-faithful.md) | 425 | `declaration-track:b2475c7d3eccb3c013ba3a6746e6ccfe03bdb3996076218f41538bbd40151018` |
| 43 | `def` | [functorialityEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functorialityequivalence.md) | 433 | `declaration-track:104194ec047d669d7fae53d389c9f96e373022a81dda7df2ad2c83e3765ea383` |
| 44 | `instance` | [reflects_cone_isomorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/reflects-cone-isomorphism.md) | 444 | `declaration-track:f74c36c448ae9a5a13c5896d9e20f282d5e90dda6a972d1619d573c8bbe02de0` |
| 45 | `structure` | [CoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconemorphism.md) | 459 | `declaration-track:62dcc3aeb24eee374d2fa5d82f85ba59928824cd2abdeadb7fc3645bb2707662` |
| 46 | `instance` | [inhabitedCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/inhabitedcoconemorphism.md) | 465 | `declaration-track:1bd1a19adecb7bf401ddd768f16d552fbca20a56d6cebc17610c96c2144d73b0` |
| 47 | `instance` | [Cocone.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocone-category.md) | 471 | `declaration-track:4798864e8ac405ddefe4f3dcecec71db65590471c59d9853b5dadddf91dd3865` |
| 48 | `theorem` | [CoconeMorphism.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconemorphism-ext.md) | 480 | `result-track:09e0b82df8467fe5365c0bda04dac3dc7c068b522dbacd84ac36d39fcadd1388` |
| 49 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/ext.md) | 491 | `declaration-track:13d4d71c03bc39b8eb388403571deb271b0d7c9978d56094dc6cd4ab56cec0a4` |
| 50 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/eta.md) | 500 | `declaration-track:015108cee939bc70a46428660f432eae15c0f92ff6aacd90ad889f52f05a18f4` |
| 51 | `theorem` | [cocone_iso_of_hom_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocone-iso-of-hom-iso.md) | 506 | `result-track:fa2a62929d65bd0086a446440b56fdeedf226367904742c36786084c0b982c4e` |
| 52 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extend-source-edition-3.md) | 513 | `declaration-track:c284360d44f876d4bbae49d7cfabc27cab19b66ca3abf9b9dc0df0bbe40be509` |
| 53 | `def` | [extendId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extendid.md) | 518 | `declaration-track:b3d3e8a5fec13bf44cb92a3dc86c35a07ae53ce6197327957dcbbdd46bba168b` |
| 54 | `def` | [extendComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extendcomp.md) | 523 | `declaration-track:21084ee43ac29495d087eb0ab1e898b82efc87d2d30627ebd9b9bb5ff8211d7b` |
| 55 | `def` | [extendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/extendiso-source-edition-2.md) | 529 | `declaration-track:ce5536fb4c4e27af3199ccc6528dd946500cd50947d621fa9c8f054d8287d99a` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/instance-source-edition-2.md) | 533 | `declaration-track:da4d981abb0a902364b812a82b054a8171e8be96aa4109166d515a2bc928030a` |
| 57 | `def` | [precompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/precompose.md) | 539 | `declaration-track:93b1a41553b6918d704ae6b8cf9345b2a33e12b536917cb994ac986a196648ef` |
| 58 | `def` | [precomposeComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/precomposecomp.md) | 547 | `declaration-track:d0d1d3295184e16e91c482e628a8510b20fd724719bc72d4bfa19e435e16ed25` |
| 59 | `def` | [precomposeId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/precomposeid.md) | 552 | `declaration-track:9099853dba0a683a4b3ac6ffcef0a0de255534e3aa077174eec5c784c5ab99d4` |
| 60 | `def` | [precomposeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/precomposeequivalence.md) | 559 | `declaration-track:a69c397c03c2af239143e17338b9c9f981ec5e1ac4538b981d4642f0c563e373` |
| 61 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/whiskering.md) | 568 | `declaration-track:9dba325f966868a865c51ae53ddc56d991176e434f9eba70c3b7ded17b64a0a7` |
| 62 | `def` | [whiskeringEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/whiskeringequivalence.md) | 575 | `declaration-track:38e9cc5188388ad4f5e3db71bb7708f0ffbfe4473b5c4785fff8e60dc5477b32` |
| 63 | `def` | [equivalenceOfReindexing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/equivalenceofreindexing.md) | 591 | `declaration-track:5feb44f05bcb829804af096eae7fa50bfe4899a68f148d4cf6820333df85a1b0` |
| 64 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/forget-source-edition-2.md) | 600 | `declaration-track:c78529f96015118b381282b32c3df3c7baed9e3f4fe6b4769d49e7d8ddab656a` |
| 65 | `def` | [functoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functoriality.md) | 608 | `declaration-track:0e1ac90543b6393482de103d55388b555577706ba9d0f8727e319a79f32c4801` |
| 66 | `def` | [functorialityCompFunctoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functorialitycompfunctoriality.md) | 619 | `declaration-track:611c4524818cca633c7509a53d86f20789ca816552c977b62f963e48aa1dfc40` |
| 67 | `instance` | [functoriality_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functoriality-full-source-edition-2.md) | 623 | `declaration-track:6421eb9cf7fcf170dacb380cfd41ba5af16d0dcc14ba92a5555d36902b1d8094` |
| 68 | `instance` | [functoriality_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functoriality-faithful-source-edition-2.md) | 628 | `declaration-track:e82acc8ed7b24f592496357c98afca95a0d8e60e6b1832aea843d75c47d1be51` |
| 69 | `def` | [functorialityEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functorialityequivalence-source-edition-2.md) | 636 | `declaration-track:793f3eb794871bfa955fe1b16d5933d8207d1086a3fa64bdcb692eab1aca8da6` |
| 70 | `instance` | [reflects_cocone_isomorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/reflects-cocone-isomorphism.md) | 647 | `declaration-track:5c8cf5799bd3571e534f51f6f3d308041edb2e26d76b4257f0d9ce22239071e0` |
| 71 | `def` | [mapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcone.md) | 670 | `declaration-track:2e148f6bf5a40ff34bd8cfe1b2374cf27bf243af8bccb23ed3a09682bb2e22a9` |
| 72 | `def` | [mapConeMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconemapcone.md) | 675 | `declaration-track:51de29b1c75e1a596041730b4d3200cdcda5d835c7a42f80cfbab0b1e480df87` |
| 73 | `def` | [mapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcocone.md) | 680 | `declaration-track:afd690db603338e5ce930ae6f7446b1294c3d6d3559b8e31b074397e127ab308` |
| 74 | `def` | [mapCoconeMapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconemapcocone.md) | 685 | `declaration-track:fdc2fbeeba8515639490b626b379ffb8cc7089283b6052ba5f011dc52d9258ed` |
| 75 | `def` | [mapConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconemorphism.md) | 689 | `declaration-track:28f4af08de0c1895d0ff8803616af6e99a4a8a1a7b68eb8d22a1038fb47db474` |
| 76 | `def` | [mapCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconemorphism.md) | 694 | `declaration-track:28dea251f68ddc8858719e654bb1dc6a2fcd34cf3f3797de657511cb1f5546cc` |
| 77 | `def` | [mapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconeinv.md) | 699 | `declaration-track:ba2599411609936f592c3064d091e32e7b8cd8bda5d4539e33d4d492741a5927` |
| 78 | `def` | [mapConeMapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconemapconeinv.md) | 703 | `declaration-track:cf740aa67d731868595fdf490ae28d8b78a0d49447b813fa9f362057a5171af0` |
| 79 | `def` | [mapConeInvMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconeinvmapcone.md) | 709 | `declaration-track:e1a3903074a5b278af8244914d4a89faf7a5b0b602873b385016c8eb0d17548f` |
| 80 | `def` | [mapCoconeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconeinv.md) | 715 | `declaration-track:d5ddeebc66cb8db44fda880f72690956ca395f6c857a8cfa9778c728a2cd8ce3` |
| 81 | `def` | [mapCoconeMapCoconeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconemapcoconeinv.md) | 719 | `declaration-track:227bb2aed57ea1f05aa600f58370fea29b149f7ce3d635a550a5b74c128fe535` |
| 82 | `def` | [mapCoconeInvMapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconeinvmapcocone.md) | 725 | `declaration-track:d424ad32f1bcb6905b24e3a5a904b4b6ac41c5a92b5e722c47c2972cb9fb77d4` |
| 83 | `def` | [functorialityCompPostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functorialitycomppostcompose.md) | 731 | `declaration-track:c77cc2f813dd4deab1bb9824dde7f4157344da9b8e2ec5f4cef99b4fb1aa14d7` |
| 84 | `def` | [postcomposeWhiskerLeftMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/postcomposewhiskerleftmapcone.md) | 740 | `declaration-track:7581875f997ec1edabe6f3e98608e8c352d36fd59c8b3541153c15d4e04ef6d3` |
| 85 | `def` | [mapConePostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconepostcompose.md) | 750 | `declaration-track:6db88ba09fd4c6ab30b16ca04fe396ca9f541611d50e90b16a5a202695173f63` |
| 86 | `def` | [mapConePostcomposeEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconepostcomposeequivalencefunctor.md) | 758 | `declaration-track:8db23c2d54f30a4881467642374a66279e78f287d08bb35e3cbe5c9136a28d75` |
| 87 | `def` | [functorialityCompPrecompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/functorialitycompprecompose.md) | 765 | `declaration-track:d4485cd51651bb4c5e5ee8dc8c764a7dc2aca88742fca95e3e19cf0f10238557` |
| 88 | `def` | [precomposeWhiskerLeftMapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/precomposewhiskerleftmapcocone.md) | 776 | `declaration-track:7f29f3644ce5c309a95767a68825d295bc9b7d7c5b6d55b63457161105e56af1` |
| 89 | `def` | [mapCoconePrecompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconeprecompose.md) | 785 | `declaration-track:7218279a10a2d3200f0b7fea0977072dca68da6c43e553776893444426952bc1` |
| 90 | `def` | [mapCoconePrecomposeEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconeprecomposeequivalencefunctor.md) | 793 | `declaration-track:ee6dca43666b8c2a1e42ef9ffaebe2591e282176e374a03c7b9407865d68f9c0` |
| 91 | `def` | [mapConeWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconewhisker.md) | 801 | `declaration-track:dd4b680b65d48ebd3c8adf14b978027a86bddb92a23d35cdc3202bd7c2d8e0b7` |
| 92 | `def` | [mapCoconeWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconewhisker.md) | 807 | `declaration-track:8f2733f3717df51fbcfdca5a3013059ccde00c22f1e75eb317d43c536c3f5e76` |
| 93 | `def` | [Cocone.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocone-op.md) | 823 | `declaration-track:51cd665f9a7dda27b137306bd8909c51fb50afab4543876c090fc588e4380ded` |
| 94 | `def` | [Cone.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cone-op.md) | 829 | `declaration-track:43f9bc739422e8b3dcbc451b4362fca9d453eeafa1fa067bbb8df7131a436adc` |
| 95 | `def` | [Cocone.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cocone-unop.md) | 835 | `declaration-track:d15999eb16698e015199ff234eb2b0420caab61f1f8f6190b9d275ae29db3cf5` |
| 96 | `def` | [Cone.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/cone-unop.md) | 841 | `declaration-track:0bf1f2258300e9eb095c02911f00f4dfbf40760708eb39cde6e83effa9aca9c9` |
| 97 | `def` | [coconeEquivalenceOpConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconeequivalenceopconeop.md) | 851 | `declaration-track:328079013b7695a4b00a33b5224bd13799312a51dfa346a37599caf8c018f7af` |
| 98 | `def` | [coneOfCoconeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coneofcoconeleftop.md) | 891 | `declaration-track:3cb4bc124ff3a8e4827e6c4046ac519cd9e701cb16cfd07d742845936d642ff0` |
| 99 | `def` | [coconeLeftOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconeleftopofcone.md) | 897 | `declaration-track:9276cd167ec06e8f352c38a32cfd2dd28ba646e6227a9b2f29c0d45146096d8f` |
| 100 | `def` | [coconeOfConeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconeofconeleftop.md) | 906 | `declaration-track:76506393e01e001d266e99465732fa09d48cd9c279768910b29c342f7e9c28dd` |
| 101 | `theorem` | [coconeOfConeLeftOp_ι_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconeofconeleftop-app.md) | 911 | `result-track:6c997a6f48d1e7348c55b8535e169ab7784d884eb68386e2de54e4b7fb09a0c4` |
| 102 | `def` | [coneLeftOpOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coneleftopofcocone.md) | 918 | `declaration-track:37f3d58f0548c65c93535be8b239d8e9d446375a5ff91f3a331fa73eb8cf1291` |
| 103 | `def` | [coneOfCoconeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coneofcoconerightop.md) | 930 | `declaration-track:a5bc7b8539990b7e00667a8ca8d64f087e86c4d5c7aeb01e643270963a636b4e` |
| 104 | `def` | [coconeRightOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconerightopofcone.md) | 936 | `declaration-track:20f3f392e75fc4370db92dfd01d2682de11bd91b41b77db4826dcb30caae5a86` |
| 105 | `def` | [coconeOfConeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconeofconerightop.md) | 942 | `declaration-track:c9a8e2b8a8583ea9a65602bee59e772d778137cfa1ab0e7bb828adccb7941c52` |
| 106 | `def` | [coneRightOpOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/conerightopofcocone.md) | 948 | `declaration-track:a35ca1ca2a9a58809c6118570743127de196518f2ae000f671f107a806df51f8` |
| 107 | `def` | [coneOfCoconeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coneofcoconeunop.md) | 960 | `declaration-track:907a1501760064f5adb1eddb3d0c17e82d4191ff08e64810814b39c626ef3de0` |
| 108 | `def` | [coconeUnopOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconeunopofcone.md) | 966 | `declaration-track:fb17038a1cf98c8772680b1ad13b04ce137043afbe0fb0e32d8defec7bb6a4e3` |
| 109 | `def` | [coconeOfConeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coconeofconeunop.md) | 972 | `declaration-track:2ed298fd6250f8580b3ad5f86d0db095c09db86d02a63ba81ed280c87f79f53e` |
| 110 | `def` | [coneUnopOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/coneunopofcocone.md) | 978 | `declaration-track:43bfbb515051c242ae315e25c7a29968dfe0b24ba4f584ff6b03e8a57b6d7f52` |
| 111 | `def` | [mapConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapconeop.md) | 998 | `declaration-track:e740a0f112329b75e785c3c2504faa4fb4ac57e56b33d2a0d6f60d386bc905bd` |
| 112 | `def` | [mapCoconeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesExtendId.lean/declarations/mapcoconeop.md) | 1003 | `declaration-track:f9d716e03d25d607cc1fd80e07204ef601aff50456b95c036d0b9b4f41c32cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c0844ed58aaab6aab3553295800a133b06e7bc49198bf412e91666a81849751 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
