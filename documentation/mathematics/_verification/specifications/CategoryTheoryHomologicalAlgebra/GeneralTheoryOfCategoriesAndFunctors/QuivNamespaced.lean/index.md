# Verification target: Quiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41fbabdc3a6f0245ecf47fbd658d8df723f5201a",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variantdb97d8285cb944c8d42af4f064395a1a317ee10bb4615f0c9cac8f23d66547b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/index.md) · [Full source](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41fbabdc3a6f0245ecf47fbd658d8df723f5201a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variantdb97d8285cb944c8d42af4f064395a1a317ee10bb4615f0c9cac8f23d66547b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variantdb97d8285cb944c8d42af4f064395a1a317ee10bb4615f0c9cac8f23d66547b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.MorphismProperty` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quiv](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/quiv.md) | 31 | `declaration-track:29b56c046d48eafb2b8590c66bcc2ece5523d584eda5b86702d5aba467458079` |
| 2 | `instance` | [(anonymous)](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/instance.md) | 36 | `declaration-track:476500fa0b111dba465562474d576b41c90a2d7ec550d198ad549298a78d7c5e` |
| 3 | `instance` | [str'](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/str.md) | 38 | `declaration-track:b0e5f5dcfd796cbfd418140877daf983b442e96bb538a645b8b160c72ab5f507` |
| 4 | `def` | [of](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/of.md) | 42 | `declaration-track:2c3a355ccb119c91a40337865fd979746b96c619327c28ef71da4de10bcf6990` |
| 5 | `instance` | [(anonymous)](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/instance-source-edition-2.md) | 45 | `declaration-track:f24ed364df2114f4bf4770b6634ee90c2ab15b9bbe853b23799399c9e502a603` |
| 6 | `instance` | [category](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/category.md) | 49 | `declaration-track:7bc8d9c4a15b7575ef4582adff489c3c56bc48e2ebd406edd6051aac71a442a0` |
| 7 | `def` | [forget](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/forget.md) | 56 | `declaration-track:303ba1f12ea622f1ff570fe1b20a869d86bcdee883bf6d360b8dc05949b0d3fa` |
| 8 | `theorem` | [id_eq_id](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/id-eq-id.md) | 61 | `result-track:c6461832b76abac794ce2d0ae645f6e7fc9bd2ccf38479e06c65a45dc1b26ec1` |
| 9 | `theorem` | [comp_eq_comp](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/comp-eq-comp.md) | 64 | `result-track:30867b11cee11dc7bb6b09d16149978525c643114805b3c92ef185059d974c4a` |
| 10 | `def` | [toQuivHom](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/toquivhom.md) | 71 | `declaration-track:49deaae4ed93481cf5514e318b88c4e01393686c243e5d6d555a3883b7ff9e90` |
| 11 | `def` | [ofQuivHom](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/ofquivhom.md) | 75 | `declaration-track:b0f64003adb7a59bcb9f519c9cccd3289c105b4eb97dab75200eadd947027f8d` |
| 12 | `theorem` | [to_ofQuivHom](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/to-ofquivhom.md) | 77 | `result-track:7cd8f2a6d49f8c367a3039cb88b747c4566e4563ef19b7f82d059ac54e8d0361` |
| 13 | `theorem` | [of_toQuivHom](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/of-toquivhom.md) | 79 | `result-track:579182a22552e57ed2e3d6fb2e2f1503535e322ee8b3349503a5b0397ae96759` |
| 14 | `def` | [freeMap](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/freemap.md) | 87 | `declaration-track:0fd4b138c69756ffe0fc9bae1faa875195b7a8525c79ba7f7b4031611153f72a` |
| 15 | `def` | [freeMapIdIso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/freemapidiso.md) | 95 | `declaration-track:9f36335ad911ffbdb0acc036f99d6069d42de3ad3085c0785383fad90d614c66` |
| 16 | `theorem` | [freeMap_id](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/freemap-id.md) | 98 | `result-track:9998c34dc4c0ba0d34f18371ec0fb7c6013a097de1e13082e1ea8832ac21a2cf` |
| 17 | `def` | [freeMapCompIso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/freemapcompiso.md) | 105 | `declaration-track:449701ef72f901ae15e9347e3c272f986be9760a4d69d67beca25b3c9e63ecf6` |
| 18 | `theorem` | [freeMap_comp](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/freemap-comp.md) | 112 | `result-track:0bb366ee590b051293d515fa9340aa50d7a8cd7888ec78b69269d7fc5103945f` |
| 19 | `def` | [free](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/free.md) | 121 | `declaration-track:404f9e7b65379b9cbaa3ec3a132e5d625ef879f5fcfea25baa8e94e85b167190` |
| 20 | `def` | [equivOfIso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/equivofiso.md) | 136 | `declaration-track:6e6acff280b278ddad8d98204854c14f8331705c3f94bd32cba95d4afd54bae1` |
| 21 | `lemma` | [inv_obj_hom_obj_of_iso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/inv-obj-hom-obj-of-iso.md) | 143 | `result-track:43c8eae703b7b3a331d4ab172a68afa5d2481eb584623e10788a4ae0fd776ba4` |
| 22 | `lemma` | [hom_obj_inv_obj_of_iso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/hom-obj-inv-obj-of-iso.md) | 146 | `result-track:fcb9c36e6041ebf64701679e08d6352920616117c8d5607a781b2ef81e5842ee` |
| 23 | `lemma` | [hom_map_inv_map_of_iso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/hom-map-inv-map-of-iso.md) | 148 | `result-track:cd6f45747d3c5d4da07a981cbeca8c1ede5e37cf0aaa739e052351d3bff0c719` |
| 24 | `lemma` | [inv_map_hom_map_of_iso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/inv-map-hom-map-of-iso.md) | 153 | `result-track:15f6bb2b0b442b373594da0fa259164c623141a09553b93d971a14f3a2b87911` |
| 25 | `def` | [homEquivOfIso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/homequivofiso.md) | 159 | `declaration-track:e193812fadb4840c2f2f7200aa1a93a6593c0eb4bea35f2286e4769fadaff31c` |
| 26 | `lemma` | [homOfEq_map_homOfEq](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/homofeq-map-homofeq.md) | 174 | `result-track:dca52de06940cdbee995ad638a607cce0f9a5633d5de58f3c20a78cd9c4bd81b` |
| 27 | `def` | [isoOfEquiv](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/isoofequiv.md) | 182 | `declaration-track:e008473e78caf6ff7a99f42fdecdae831162fd11b4da4a2aa42dbaf1b4362416` |
| 28 | `def` | [lift](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/lift.md) | 198 | `declaration-track:09e12035ec5cce023cd4d2960de2b9a7b834ad23733506cee5128dda4c0615b8` |
| 29 | `def` | [pathCompositionNaturality](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/pathcompositionnaturality.md) | 204 | `declaration-track:c85e69feeffcf025d664a6b7983df16d35c73d76cf6f12be724da81391b74204` |
| 30 | `theorem` | [pathComposition_naturality](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/pathcomposition-naturality.md) | 211 | `result-track:8f480ff956171b68f11198deee7d8a5dad7732aa242d4f14f4724fa41e9338ce` |
| 31 | `lemma` | [pathsOf_freeMap_toPrefunctor](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/pathsof-freemap-toprefunctor.md) | 218 | `result-track:8bc8aae4b01c1a6b6a472be1ee6b36fbf7ddfecd71d393de0e60014582078cd8` |
| 32 | `def` | [freeMapPathsOfCompPathCompositionIso](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/freemappathsofcomppathcompositioniso.md) | 223 | `declaration-track:e8185ec4128fded4940d7a05d58bfee31e57135e7df9d13972d9e87701b55d71` |
| 33 | `lemma` | [freeMap_pathsOf_pathComposition](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/freemap-pathsof-pathcomposition.md) | 227 | `result-track:18949e51ec5f2060136b4f48b46be42a9e954c3f9c328ba608d91ce97875c097` |
| 34 | `lemma` | [pathsOf_pathComposition_toPrefunctor](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/pathsof-pathcomposition-toprefunctor.md) | 232 | `result-track:a9e86d044cf67c5d1d5750e507b81e698c47af7556335b48269c4eecb5a52df7` |
| 35 | `def` | [adj](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/adj.md) | 242 | `declaration-track:ac382802a294631376258079f0c84353b04a1af20226e4ce8ee086775a140159` |
| 36 | `def` | [pathsEquiv](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/pathsequiv.md) | 258 | `declaration-track:31be5de7ba75132dcf9b515e2a11ecb3a3698659f321c16481c85e6c7d8032d3` |
| 37 | `lemma` | [adj_homEquiv](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/QuivNamespaced.lean/declarations/adj-homequiv.md) | 273 | `result-track:9d41045d015d8e465f1d1f323088d8e2614be3ed4ab9757da8a7b859a042f887` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cad64fa01475b3d0aef6a23d16e4a821dc7864885de1574b775a7b51987d28a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variantdb97d8285cb944c8d42af4f064395a1a317ee10bb4615f0c9cac8f23d66547b3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variantdb97d8285cb944c8d42af4f064395a1a317ee10bb4615f0c9cac8f23d66547b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
