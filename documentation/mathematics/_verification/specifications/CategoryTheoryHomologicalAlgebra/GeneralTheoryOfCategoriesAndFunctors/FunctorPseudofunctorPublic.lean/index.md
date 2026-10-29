# Verification target: Functor Pseudofunctor Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "286407b5dc4fe748e97b5ffc1c2b12985e1eda9d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `286407b5dc4fe748e97b5ffc1c2b12985e1eda9d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean.json)

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
| 1 | `structure` | [Pseudofunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/pseudofunctor.md) | 58 | `declaration-track:b0dd9be568da1e6f74bd0858093ad96d0be9b3ff91df417638313d6408a1eca0` |
| 2 | `def` | [toOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/tooplax.md) | 119 | `declaration-track:a78dc15eacaec83c01ffa207e72c99c7b7e2fc3284c94d1797deabe6e40b5c81` |
| 3 | `instance` | [hasCoeToOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/hascoetooplax.md) | 124 | `declaration-track:f03a8f137c61ea4bfcd82bde06e2de67cef82ca5b08b4ae7f6760a043e67991f` |
| 4 | `def` | [toLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/tolax.md) | 129 | `declaration-track:666dc57e5180ed96ea0a5bee7706ce57ef50d535ceecaafe381bb739ddff728a` |
| 5 | `instance` | [hasCoeToLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/hascoetolax.md) | 140 | `declaration-track:8a0a2da0c62c30772b71a5ac949de2a45f4fbbc113d037899df3346857211f8d` |
| 6 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/id.md) | 147 | `declaration-track:5f0a65c86260cb09cdb2ddfaec18e35895b1ba36da1b5e671495633ac47f1b6b` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/instance.md) | 152 | `declaration-track:ce1dc7fc494a60f95c4ad9a95069b88d401b7969a30d5c7521cb0a57b09a04d9` |
| 8 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/comp.md) | 159 | `declaration-track:a3a6c70770d6ca14120c3eeafc6795956c5b73ffdf83a943c6cbfde6cdb10cfb` |
| 9 | `lemma` | [mapComp_assoc_right_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-assoc-right-hom.md) | 169 | `result-track:6198f076d29f47e8191017f0c0aca610debf98bf0df3ed3b9207b8f56ea159a1` |
| 10 | `lemma` | [mapComp_assoc_left_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-assoc-left-hom.md) | 176 | `result-track:8bcebcfddd6757c5675e8d950d2ad28894a01586c2719ab121f82d2eaf6f09bf` |
| 11 | `lemma` | [mapComp_assoc_right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-assoc-right-inv.md) | 183 | `result-track:191a728c78188f703395613075e1c81e3895d12be2d5fe20dddb25300cf8ffd4` |
| 12 | `lemma` | [mapComp_assoc_left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-assoc-left-inv.md) | 190 | `result-track:c1dce22e7178af138b0ca26be58dcd2664aab6b3d941628bcf260f9a3cc480f8` |
| 13 | `lemma` | [mapComp_id_left_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-id-left-hom.md) | 200 | `result-track:97a13b2894fd91a748a81d13586bf68f5ec8cd369d923917447a05fc60f2e740` |
| 14 | `lemma` | [mapComp_id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-id-left.md) | 204 | `result-track:161ffc3c7d0b31fb2a89b8065fb20ff5c9ca004cc28ac914dc890bc9a0e3816d` |
| 15 | `lemma` | [mapComp_id_left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-id-left-inv.md) | 212 | `result-track:da6b1b7004ffd6daf3a08ebc81d555524bb2379c0924c183767ef4154eae09ca` |
| 16 | `lemma` | [whiskerRightIso_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/whiskerrightiso-mapid.md) | 216 | `result-track:c85021ac7b1f9e901e597f9c3a195d56cc0f628a43d796b300ecbeb89a78cf9a` |
| 17 | `lemma` | [whiskerRight_mapId_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/whiskerright-mapid-hom.md) | 224 | `result-track:ac1058fc07201d2671697a6c6c51a132391b3e2ac689907830d5a7b3f21b7371` |
| 18 | `lemma` | [whiskerRight_mapId_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/whiskerright-mapid-inv.md) | 232 | `result-track:c0df7c9c72766d367c6d24340b751800d46eb94151145756943a94c257c2f619` |
| 19 | `lemma` | [mapComp_id_right_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-id-right-hom.md) | 240 | `result-track:d9bce737c5d005917c1edcd4c0a2dc14a90f7aacb78c4a95d33ab20f256c0c96` |
| 20 | `lemma` | [mapComp_id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-id-right.md) | 244 | `result-track:32d2d86e25448f2a18d8144a48689f2552daeea74dbfe0aa6164aa9a4af1cc85` |
| 21 | `lemma` | [mapComp_id_right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-id-right-inv.md) | 252 | `result-track:f87ec0c81d87a1d730efb6d95433d5a5e2d16aefa97932c56d99652ebbeb2679` |
| 22 | `lemma` | [whiskerLeftIso_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/whiskerleftiso-mapid.md) | 256 | `result-track:746e4b83b08c10a34e33b9728645c6095cb2e02533b6a0669a2efabb0e210862` |
| 23 | `lemma` | [whiskerLeft_mapId_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/whiskerleft-mapid-hom.md) | 264 | `result-track:a4d4f27cf5986d0a6ea3f18a24548124d1d7d3de563433e5809f443f8b314bbd` |
| 24 | `lemma` | [whiskerLeft_mapId_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/whiskerleft-mapid-inv.md) | 272 | `result-track:cd1b1713c70437ce917535f480aa63518da308854ff4a8ad4f2e15601910324b` |
| 25 | `def` | [mapId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapid.md) | 278 | `declaration-track:e917a261da12373d327a75c64ebe5aeb7ad991e097963e644b51a5a2eb05b0b1` |
| 26 | `lemma` | [mapId'_eq_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapid-eq-mapid.md) | 283 | `result-track:fd1f61e1f0b2a000b5d1552537a1ac7c075fe372cd9b61a15d4c1179d69c4b7c` |
| 27 | `lemma` | [toLax_mapId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/tolax-mapid.md) | 288 | `result-track:355af80a5f28f445ddd8b5fd4db677ab3add9e53640d650964f34883ebc67c17` |
| 28 | `lemma` | [toOplax_mapId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/tooplax-mapid.md) | 293 | `result-track:72139bce347a65d315e3f86ce3285cb63ccac781b987bc25f2e45a3baef15e4c` |
| 29 | `def` | [mapComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp.md) | 299 | `declaration-track:bb75648a87853920696643c0966889a0c61d2a0edf13b440a3eda9d085d99e47` |
| 30 | `lemma` | [mapComp'_eq_mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mapcomp-eq-mapcomp.md) | 305 | `result-track:cfab43fb9778fec1316b5dc0b5938328b2e116ad19b0e1ed94c33d649d02da85` |
| 31 | `lemma` | [toLax_mapComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/tolax-mapcomp.md) | 310 | `result-track:2d38683f2cb0817ccffa6be5fb879cf6dbcfa6412e99519fd737b71a497a5c6d` |
| 32 | `lemma` | [toOplax_mapComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/tooplax-mapcomp.md) | 316 | `result-track:65972055c9d468e62770168c72eaf7b274fcd6cf49919f12a423c31f8d81fb80` |
| 33 | `def` | [mkOfOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mkofoplax-source-edition-2.md) | 325 | `declaration-track:cad1fdbefb7a9258ea8dfd4e7286b1cefdc62f0088231c3d5c122c5ffc2927fb` |
| 34 | `def` | [mkOfOplax'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mkofoplax.md) | 342 | `declaration-track:6daa4cd4422c7e99252997d7463b66bd075b0df385d771ff77fb30759cd930f6` |
| 35 | `def` | [mkOfLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mkoflax-source-edition-2.md) | 361 | `declaration-track:24d168f3f8e930347f9e37eb415091b3eb760aeb418d47f6592b3b3caea39c4c` |
| 36 | `def` | [mkOfLax'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/declarations/mkoflax.md) | 379 | `declaration-track:0d0c0cab591a8f707d688690c47f0dd7180199ef8749765451b187e9d9ae14e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11363afe1d4ffa0bf33e6598e2cd6a9d998417eb5ec9b52cf1d42f2d0675be52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
