# Verification target: Plus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fafeb60fe7732457faa5fee9b1c62f986cc3b6c6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fafeb60fe7732457faa5fee9b1c62f986cc3b6c6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/diagram.md) | 48 | `declaration-track:45ae66e5f769d483043df46e94e20ec02847ea3cfa97031f3bef3a4ab9116395` |
| 2 | `def` | [diagramPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/diagrampullback.md) | 56 | `declaration-track:5e46d6f306707bbb880f1411c75186c38301ac8cf1500a9a12a24e88c22810fa` |
| 3 | `def` | [diagramNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/diagramnattrans.md) | 65 | `declaration-track:a237c3b82f2b36411c0c5316a680a5492067c57700e7bd404e3dc0fe7d526358` |
| 4 | `theorem` | [diagramNatTrans_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/diagramnattrans-id.md) | 74 | `result-track:96c8198a98ee63b34008b2b90e49fbd2cd8f35a8efcb988b4520cf157440b23c` |
| 5 | `theorem` | [diagramNatTrans_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/diagramnattrans-zero.md) | 81 | `result-track:01b23ff7ece4921bd8cb98d93bacf1cf91ec23039a5da4ea39534ecd8bdd69ce` |
| 6 | `theorem` | [diagramNatTrans_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/diagramnattrans-comp.md) | 88 | `result-track:40f45018015a77d8376c59452082ae2001f01eaa4ce80394c7aa8a7e95fc0ee5` |
| 7 | `def` | [diagramFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/diagramfunctor.md) | 97 | `declaration-track:2fe739935f4aa67c6f95256bbd01a331fa754a40aafb4e20f288afb1daad4fc7` |
| 8 | `def` | [plusObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusobj.md) | 105 | `declaration-track:8a3ebc6bc5b2f287330dd5872dfb3648f486b660c57f9c1f516715b522cf135d` |
| 9 | `def` | [plusMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusmap.md) | 143 | `declaration-track:4491029b67eb29302665e4a5e29c866de8d801541ac5def196ca8ba2ac1c844f` |
| 10 | `theorem` | [plusMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusmap-id.md) | 156 | `result-track:3cde021968064d572dedc16ce17cf12ccbea82e9f05297a01026abf18b82d10f` |
| 11 | `theorem` | [plusMap_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusmap-zero.md) | 165 | `result-track:26680c55be2e197c01ce1ed95de76857fa6f2ff18efb009dc805a906ebbf1c2b` |
| 12 | `theorem` | [plusMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusmap-comp.md) | 171 | `result-track:e1c1629914f73b9d1e1462917a66b93efc650ef6617af22845734d689e24082f` |
| 13 | `def` | [plusFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusfunctor.md) | 180 | `declaration-track:010fcec77b23187182277c5ab39c3e3b70fac978881fc90dfdc0ce1e9e6937c0` |
| 14 | `def` | [toPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/toplus.md) | 186 | `declaration-track:984f28befe41a838bac5b74cb15dc7631c8dcd3df9d19b497e160b855bb69f99` |
| 15 | `theorem` | [toPlus_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/toplus-naturality.md) | 203 | `result-track:612220f5335c3692dab3fd76317634c0115896532c3f60a9cefab5ef05ffb733` |
| 16 | `def` | [toPlusNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/toplusnattrans.md) | 216 | `declaration-track:300efa79b14109b5572c8020b43d748b4036ae8a075eba91ab28d6cb17d12a6c` |
| 17 | `theorem` | [plusMap_toPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusmap-toplus.md) | 221 | `result-track:9f867d4944f0f5a7d09b6ff3f29c4f030a8e444272ecb5a45230f6e5b447d793` |
| 18 | `theorem` | [isIso_toPlus_of_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/isiso-toplus-of-issheaf.md) | 241 | `result-track:8b02f1ddda5b2b63deb68bbd4dd8a9e393b4da25483d3f66e730982599578adb` |
| 19 | `def` | [isoToPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/isotoplus.md) | 258 | `declaration-track:422b1696602b08e87e9072ba98b17c54d19e464853ec19eb0c1cb3e1dc3d0f80` |
| 20 | `theorem` | [isoToPlus_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/isotoplus-hom.md) | 263 | `result-track:958b9ef758baf1b500a2bc211384498cb9adbfa9c8c5caac3a05c30753686a0f` |
| 21 | `def` | [plusLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/pluslift.md) | 267 | `declaration-track:52a5f302f4bc916c3866df7955a7de7d0d8fe30252e1ee9dad2cb738894464c3` |
| 22 | `theorem` | [toPlus_plusLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/toplus-pluslift.md) | 271 | `result-track:e107b5186753b9417c4ecbe5417bf558803d5de3a744078ab8b10c55d326d0b5` |
| 23 | `theorem` | [plusLift_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/pluslift-unique.md) | 279 | `result-track:eefd18bc24ef447c6d9e1040f30b59a6b67897147f69922111a5ebf9f8501be5` |
| 24 | `theorem` | [plus_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plus-hom-ext.md) | 285 | `result-track:52b9715f8f9187387c1b9ff189fa78f4f8956c6299b2460b22f9827879069f75` |
| 25 | `theorem` | [isoToPlus_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/isotoplus-inv.md) | 295 | `result-track:d34d4352a1854b6d7c79722882e5fe70b09f92f44dcc4b01fe7fe04be048b3c5` |
| 26 | `theorem` | [plusMap_plusLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusmap-pluslift.md) | 302 | `result-track:8f245de479aa72a862a27fdc07d0cbd0748d63fc7993b8acd947e053533d42c5` |
| 27 | `instance` | [plusFunctor_preservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PlusNamespaced.lean/declarations/plusfunctor-preserveszeromorphisms.md) | 307 | `declaration-track:bb18ba4ed7efd145c0474ccdf971a276997980093636026f548fa3db99fccf33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b347a5c5125a28132d42046353499678f10366ae348ca88ed63578ff843f08ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
