# Verification target: Functor Of Cocone Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5473b35394b0bb1f75dd7068b9b36530a55ee15b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5473b35394b0bb1f75dd7068b9b36530a55ee15b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/obj.md) | 43 | `declaration-track:8410407511ab3de54676a714faf8b48974c84740e81ef8cfcdc088596ac119e9` |
| 2 | `def` | [objIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/objiso.md) | 49 | `declaration-track:d08250a099807932ed1e9514b07cd784b2ebe27159f992cb2fc02a41d6e0d4d7` |
| 3 | `def` | [objIsoPt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/objisopt.md) | 54 | `declaration-track:1ff0d2b5a4c4e2c4109c95ed713813dacd01c1e48aeb4f258e39420b973d2916` |
| 4 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/map.md) | 59 | `declaration-track:23b3b2503ab70b842da8875c2c0c75d8a2f31d539513db0db60776774d078591` |
| 5 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/map-id.md) | 71 | `result-track:136c95e81ace541e2d1dc35ba4f843f89ec38c794c92c6992770f995dffb1996` |
| 6 | `lemma` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/map-comp.md) | 78 | `result-track:57d8e7312e58f4c758fcf70195902c8993e7b86c181620710ad8787001254493` |
| 7 | `def` | [ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcocone.md) | 99 | `declaration-track:678f13a1302e47fc871be96e2b90d8baa44c4a421fdaca45afeae2c30140bbf4` |
| 8 | `lemma` | [ofCocone_obj_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcocone-obj-eq.md) | 105 | `result-track:5140401d3e0ee440024edf8d2d0477b87a54243e638dd68fc306ddb17d0f4c8a` |
| 9 | `def` | [ofCoconeObjIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcoconeobjiso.md) | 110 | `declaration-track:06efebdf3bc7c21df5beae136ddf0d1226d261587f801e25f2ac4f08bdd0361c` |
| 10 | `lemma` | [ofCocone_obj_eq_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcocone-obj-eq-pt.md) | 114 | `result-track:591c3a3bff89d57f3da78257b1cb2372e9d5a36e96d3e7004b1fa0002bd91094` |
| 11 | `def` | [ofCoconeObjIsoPt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcoconeobjisopt.md) | 119 | `declaration-track:8206cf25b02931f04574ad2bf34800677d1ce9d2d825232445aec1151f04cd22` |
| 12 | `lemma` | [ofCocone_map_to_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcocone-map-to-top.md) | 123 | `result-track:7b74d154198182df5ee3a2c4f40b457651e192411c34e6964a876d8e047b2390` |
| 13 | `lemma` | [ofCocone_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcocone-map.md) | 130 | `result-track:0478ddb52daa0f17217372e62a3a89ece400e3d371c6b6d8584906cc15924a6d` |
| 14 | `lemma` | [ofCoconeObjIso_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/ofcoconeobjiso-hom-naturality.md) | 138 | `result-track:a9c9432a9c46cdc888a99b032e6f0684abd236acf563d97c026f640951da8f94` |
| 15 | `def` | [restrictionLTOfCoconeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/restrictionltofcoconeiso.md) | 147 | `declaration-track:7d775013be2c578deeea2eaa86e250c75fe77e7db253756667723d1bb15e129b` |
| 16 | `def` | [isColimitCoconeOfLEOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/iscolimitcoconeofleofcocone.md) | 154 | `declaration-track:272f18483ca6600881f5794359243d0731c59d65b6de306b41a7cbe47dc5e119` |
| 17 | `lemma` | [arrowMap_ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/arrowmap-ofcocone.md) | 162 | `result-track:e541fb7a0301d0f2ff809d728ed9a2190da5082ae835e245cd1c7efbe77131d3` |
| 18 | `lemma` | [arrowMap_ofCocone_to_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespaced.lean/declarations/arrowmap-ofcocone-to-top.md) | 167 | `result-track:99a73c9d9a8e25cb2e8ecb240a1335457796a057c6386ce4de7c2d7b946947bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af288f1d6cc58d7f7d1610ce737d0416b242818af75017c753f4bdb0e5e662eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
