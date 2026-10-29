# Verification target: Bicategory Adjunction Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c4d30c13e6e16172dc8d0858ee78542ef9cbad",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c4d30c13e6e16172dc8d0858ee78542ef9cbad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Bicategory.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [leftZigzag](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/leftzigzag.md) | 49 | `declaration-track:806accd32e2e144e170d457b4f829ea4207ed231b7b9ec9f3e6a9777f78c6e58` |
| 2 | `abbrev` | [rightZigzag](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightzigzag.md) | 61 | `declaration-track:d8535b3b2462e4c8f0a021dcc2b3881f541f8c3dadaa807f2a8c45a3b6e633bf` |
| 3 | `theorem` | [rightZigzag_idempotent_of_left_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightzigzag-idempotent-of-left-triangle.md) | 64 | `result-track:1bbfad3a36be62d5b37bcf17ef5f66bb0ff799c657787ce16f9e78595a589283` |
| 4 | `structure` | [Adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/adjunction.md) | 79 | `declaration-track:323d7f3bcdff507fcace2ac4665c0e87e2d9d0457272e27cccfd0c9c0d4895e1` |
| 5 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/id-source-edition-2.md) | 96 | `declaration-track:ff4b327ce7ff4f2b243ba9462f01463f4bc91c2b18f6d19462bad8fe929130b9` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/instance-source-edition-3.md) | 102 | `declaration-track:c595dba3d9e9e55984df417056e03fa8059e6d84103b6589027276b88fde0664` |
| 7 | `def` | [compUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/compunit.md) | 111 | `declaration-track:28545e9d51af43c7c480aa1a61624b3c31c51e0557fc62ba5a1822192bf8a4a3` |
| 8 | `def` | [compCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/compcounit.md) | 116 | `declaration-track:2fb009328da1dfe82492429fac27f392d16f29a85378cd4d51c0cae8b8bf4fef` |
| 9 | `theorem` | [comp_left_triangle_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/comp-left-triangle-aux.md) | 119 | `result-track:31bc3fa1add5bc4e0540ff1bcd18c3ac27cadf3f93d630f67f9ac4e26400a1d0` |
| 10 | `theorem` | [comp_right_triangle_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/comp-right-triangle-aux.md) | 134 | `result-track:74bf0723b3a6aaa22495d753207052edc58827a555305a2c904de155b0558563` |
| 11 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/comp.md) | 151 | `declaration-track:426f3e19584dd715fe44acc923a091fadcea220774fc185ca790f4a7a257ba3e` |
| 12 | `abbrev` | [leftZigzagIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/leftzigzagiso.md) | 166 | `declaration-track:8d893d127cc15f1415f81ddd95c38dcb0addeaa0aa289117948d845c8ab4d269` |
| 13 | `abbrev` | [rightZigzagIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightzigzagiso.md) | 170 | `declaration-track:34cdb64c2584a2d7cfe35d20f4f8a6203e08bac28f8880080f91e688e76d7c44` |
| 14 | `theorem` | [leftZigzagIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/leftzigzagiso-hom.md) | 174 | `result-track:0c5cea1a9800828d2f395d70ef1308f2c2f40263015b2d55edb8a45fcb7cbee1` |
| 15 | `theorem` | [rightZigzagIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightzigzagiso-hom.md) | 178 | `result-track:2aa9b6f61c28399d14309b49220cdf8f1e587cb4713181e6712d7f08e890c615` |
| 16 | `theorem` | [leftZigzagIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/leftzigzagiso-inv.md) | 182 | `result-track:8bdc9fc24d7cf33541c2913fe6467369f2868b2413f80bcccad1629303fa8ce9` |
| 17 | `theorem` | [rightZigzagIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightzigzagiso-inv.md) | 186 | `result-track:cf85d0eca0ce6224b979c67819dd159b1d595cb43b03bcadb8289f010c1b12e3` |
| 18 | `theorem` | [leftZigzagIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/leftzigzagiso-symm.md) | 190 | `result-track:f2760c2eda6ddf319553cb1c5e8a76d78d01b5a5c19d59cc7d463287ba32c1d0` |
| 19 | `theorem` | [rightZigzagIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightzigzagiso-symm.md) | 194 | `result-track:efa3dd54e495290ec0185ae912c803f131f6873f5ade5df7b0c474fb6b92e22d` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/instance-source-edition-4.md) | 197 | `declaration-track:e652d4f0912befb9c9227bed58517a2178b970f499f57d243021f07f92ce9ae5` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/instance.md) | 199 | `declaration-track:2596f4fb456ad13a950c3cf29fa548fd8513e177452c557260e13e24719e5f80` |
| 22 | `theorem` | [right_triangle_of_left_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/right-triangle-of-left-triangle.md) | 201 | `result-track:1a2bb519dd60135865ae315fbd66232c36bf73351897f610569a246240a4cacf` |
| 23 | `def` | [adjointifyCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/adjointifycounit.md) | 210 | `declaration-track:3e2f8a49849e87c38114d3da501e31e6db50a0f5dd76349375862c78e45b58ce` |
| 24 | `theorem` | [adjointifyCounit_left_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/adjointifycounit-left-triangle.md) | 213 | `result-track:7f727ba541b48c37d4810b680e09c653ad42d68e7949854787335e4d5b04bcd3` |
| 25 | `structure` | [Equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/equivalence.md) | 231 | `declaration-track:466f2d21f930b75c73d435beb1c2bf87d1eb0f218906b5c4859fd8b85ea46156` |
| 26 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/id.md) | 248 | `declaration-track:2dcbddd11c87b67eca7ad5538ca4a501cf582bd1fc186954ea89f7a51d35913d` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/instance-source-edition-2.md) | 250 | `declaration-track:c09f55f79c0158da482fb8d5ca2f056d8dfaf28693a5b7d802939082c1d2a23d` |
| 28 | `theorem` | [left_triangle_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/left-triangle-hom.md) | 252 | `result-track:035bea9198d44c30ec96cd86fc15981ee3fb5d7a41deecc1d2a223b13b4b6809` |
| 29 | `theorem` | [right_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/right-triangle.md) | 256 | `result-track:f8113cbce58ffb2dd48880bd8f58b9deb401a27ce1bfe55b84c6b8e2aae82f67` |
| 30 | `theorem` | [right_triangle_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/right-triangle-hom.md) | 260 | `result-track:ce968531f803ed8233c1adf241ef8dea2a388db3187fed7a42efa5c75c285b29` |
| 31 | `def` | [mkOfAdjointifyCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/mkofadjointifycounit.md) | 265 | `declaration-track:d75ea927636df7b2522dc21b978fd6fc12c375dd909630c5c1c928a883ff45d3` |
| 32 | `structure` | [RightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightadjoint-source-edition-2.md) | 280 | `declaration-track:8b8b50bd1e34ac64d5f3e726f6066a97b63bf8dbe78dd5b98e8bb38937b24834` |
| 33 | `class` | [IsLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/isleftadjoint.md) | 287 | `declaration-track:b8f498599cb115063548ab1efa0d08ba225e996a84d9d8f946ffaa7fa5bf1215` |
| 34 | `theorem` | [IsLeftAdjoint.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/isleftadjoint-mk.md) | 290 | `result-track:c3fbe78fd99971a2f545dcaae44a63c6b768f7d1547ebf8de31fc261251e69d8` |
| 35 | `def` | [getRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/getrightadjoint.md) | 294 | `declaration-track:67e953df1964549201ac29f95d9cf7d9893df268014cee9d4137652a0ae4e29d` |
| 36 | `def` | [rightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/rightadjoint.md) | 298 | `declaration-track:1d60a8f9b6d228f1deb09083b9987a485301b0bb529fbeb10bf5ce24f39299f8` |
| 37 | `def` | [Adjunction.ofIsLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/adjunction-ofisleftadjoint.md) | 302 | `declaration-track:07400edc2d262c53af3d9dba152d9d50cdac780fcad3e03229f13ead4cc33034` |
| 38 | `structure` | [LeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/leftadjoint-source-edition-2.md) | 306 | `declaration-track:a1ab295171ccb5134c12c0620aaa158d0a31da8ded49d35ab7253a5ceb45512a` |
| 39 | `class` | [IsRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/isrightadjoint.md) | 313 | `declaration-track:08928af35fe59a2b34f7cfb7dda3f5a0cebeb80d6adc4cc1abf975fea609a8c4` |
| 40 | `theorem` | [IsRightAdjoint.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/isrightadjoint-mk.md) | 316 | `result-track:6b4a70688931a7caa1bd0895f8791d22828a9cdfbc350a42a470c83eb60188e3` |
| 41 | `def` | [getLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/getleftadjoint.md) | 320 | `declaration-track:2f23c028eb241848a44a4b4d5351cb54966942f8d78ba4cd764d5b45dd1cb018` |
| 42 | `def` | [leftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/leftadjoint.md) | 324 | `declaration-track:00345c9ad9366c46b2ec44e375cc73d6f57205975b470dc2034640abc538eaff` |
| 43 | `def` | [Adjunction.ofIsRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/declarations/adjunction-ofisrightadjoint.md) | 328 | `declaration-track:215987da27401e9ac17deeae2e8c9eccdd3d84fd7d97cee3ff04c0d4d81d5001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3840f9695243436c747ed7020090f9538bd3932722dc1dcdefd806818ae252f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
