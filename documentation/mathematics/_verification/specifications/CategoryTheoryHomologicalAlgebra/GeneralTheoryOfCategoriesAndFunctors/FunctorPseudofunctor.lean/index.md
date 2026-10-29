# Verification target: Functor Pseudofunctor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d244bdc3f4cc6150a5c2320ed6d903f4cd4019",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d244bdc3f4cc6150a5c2320ed6d903f4cd4019`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Oplax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.Lax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pseudofunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/pseudofunctor.md) | 54 | `declaration-track:3781d1d6902da07b1da6655e0cd04106ffd858d3b136ad0fcad9f195d11bd958` |
| 2 | `def` | [toOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/tooplax.md) | 108 | `declaration-track:a12a03a23d6f4e6f7212983023cf3e7083a9eaa209e8fa5cf48fa73934e4cb17` |
| 3 | `instance` | [hasCoeToOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/hascoetooplax.md) | 113 | `declaration-track:3e9733aa9bd36dbfb49a4638ef8f5f8859ec1b4f97bfce6e550ba6e92655f298` |
| 4 | `def` | [toLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/tolax.md) | 118 | `declaration-track:366c883461ef2e3f18c47f91880877a5523d1a288450e493bc0715e1b6508936` |
| 5 | `instance` | [hasCoeToLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/hascoetolax.md) | 129 | `declaration-track:6f3a2b117d87ae1481534ba1520d457f26f5875ad22921522d5a33ed102abc94` |
| 6 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/id.md) | 134 | `declaration-track:58bd509f0b2133fa2b4e42c6ad779903e338e02c510decc2a572ed2302fa070f` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/instance.md) | 139 | `declaration-track:96a54fd9feb18886b6f15354612eab838623e9ce544e14d03acb139f04f7fcc5` |
| 8 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/comp.md) | 144 | `declaration-track:571de2fb0076033fd66993ce27830160de16896a3e63436c454332890a68e401` |
| 9 | `lemma` | [mapComp_assoc_right_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-assoc-right-hom.md) | 160 | `result-track:d465e2c86b1ca1ee3f318669d0a3edab53c5bdc2061abc846d1de86300a21ae3` |
| 10 | `lemma` | [mapComp_assoc_left_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-assoc-left-hom.md) | 167 | `result-track:071b5bee3b4800e77e363417b00cc218e6d80892e3b98a5f65eb23f2da69ce91` |
| 11 | `lemma` | [mapComp_assoc_right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-assoc-right-inv.md) | 174 | `result-track:1288481a16ef0f72e77baa0c368e9e0f90711a98eaac6793f99854ed8458075b` |
| 12 | `lemma` | [mapComp_assoc_left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-assoc-left-inv.md) | 181 | `result-track:bf9cdf694cb3ce8ab1edb265c378633c72e046c6ddd207bc1dc0225b5c7bdf66` |
| 13 | `lemma` | [mapComp_id_left_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-id-left-hom.md) | 188 | `result-track:e4381274dc2856d39526c205fe4037cb3bbe1ec8de35f69ee2646c946ce63ea9` |
| 14 | `lemma` | [mapComp_id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-id-left.md) | 192 | `result-track:d2642ab5a76f54f08e21f30d8c1e665ffc3a3542c179d6ac67e0988de3b871d5` |
| 15 | `lemma` | [mapComp_id_left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-id-left-inv.md) | 197 | `result-track:2b22f1ea686c56eef518826133c89e15797163ce22fd71ee8ed5e67abbd590c5` |
| 16 | `lemma` | [whiskerRightIso_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/whiskerrightiso-mapid.md) | 201 | `result-track:56b6869dcc3db5b620688ece88266e5f43e17512def2b1891a3c03d2f39c1f37` |
| 17 | `lemma` | [whiskerRight_mapId_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/whiskerright-mapid-hom.md) | 206 | `result-track:df2f37100cff5c1a807133ab424ad3dbbecf51ffdf8a1a3a46594f080d1627fb` |
| 18 | `lemma` | [whiskerRight_mapId_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/whiskerright-mapid-inv.md) | 211 | `result-track:76261ba6388bce1f883a0e59f778bbc82a11c7cb3961dd35d4b6dda069debc88` |
| 19 | `lemma` | [mapComp_id_right_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-id-right-hom.md) | 216 | `result-track:52336214f6fb3476b4f93340345f6449cb5e3f11ff6cddda350e5038dffdb3a6` |
| 20 | `lemma` | [mapComp_id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-id-right.md) | 220 | `result-track:b208072a12869561a6ced84bfeb73863a1e59ef627f5abaee4a32983c3e9185f` |
| 21 | `lemma` | [mapComp_id_right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mapcomp-id-right-inv.md) | 225 | `result-track:20a23557c8f0f66b0a88a5cf4e1a87a17b5d5f08a022a6e522f81b9dba26d128` |
| 22 | `lemma` | [whiskerLeftIso_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/whiskerleftiso-mapid.md) | 229 | `result-track:0dd7ee79f5984863e4358279b87d3c717c9d5a31b2c3e8b5b7ecbc103ded4c0c` |
| 23 | `lemma` | [whiskerLeft_mapId_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/whiskerleft-mapid-hom.md) | 234 | `result-track:449c220ed156656944722cac470c5a00d823b20f8752ec0d4f34f4121c495a9c` |
| 24 | `lemma` | [whiskerLeft_mapId_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/whiskerleft-mapid-inv.md) | 239 | `result-track:40d5565e2934ce5a0183c05e63acb8eaa8c2514d0f7f927cb6b8883178bf605e` |
| 25 | `def` | [mkOfOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mkofoplax-source-edition-2.md) | 247 | `declaration-track:717eef6ea44b5e6e0ca39ebc76a4ad500769b3f42fe86003222e726ec7506ff5` |
| 26 | `def` | [mkOfOplax'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mkofoplax.md) | 264 | `declaration-track:607ab996c4e9b29e259b001aab6f92e793fd29a509bc0ff0eaf0c1616555951b` |
| 27 | `def` | [mkOfLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mkoflax.md) | 283 | `declaration-track:50330079e6ac6180986953ed4d98e319f0b8737be1892e761959c734f7cc1381` |
| 28 | `def` | [mkOfLax'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctor.lean/declarations/mkoflax-source-edition-2.md) | 301 | `declaration-track:fb6990d798a1b0295cfeeeee0e1e40b0bc1ae8f8bf934c2f1f898d5465a40e0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=347eedb090ac91f0145b774a4374eff26d3584a1f8259ab68494034527ab941a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
