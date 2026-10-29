# Verification target: Homotopy Category Shift Sequence Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e09c4098267b48eacfa842fdb2dd9c3666ac15fe",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e09c4098267b48eacfa842fdb2dd9c3666ac15fe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean.json)

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
| 1 | `def` | [shiftShortComplexFunctor'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/shiftshortcomplexfunctor.md) | 44 | `declaration-track:cd796e95d460157d5356b1a25aa4ea9825e1497925b52dfae51f98b25bb3d3fa` |
| 2 | `def` | [shiftShortComplexFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/shiftshortcomplexfunctoriso.md) | 56 | `declaration-track:874d089a1986d00d2cd544c7ddd6236f6a5caf4b5b163515ee0082824bbfa782` |
| 3 | `lemma` | [shiftShortComplexFunctorIso_zero_add_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/shiftshortcomplexfunctoriso-zero-add-hom-app.md) | 64 | `result-track:689af9f974db23d71e8725e78fee0fe11eea6c5a38d38e8ae9662f00eacf03d9` |
| 4 | `lemma` | [shiftShortComplexFunctorIso_add'_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/shiftshortcomplexfunctoriso-add-hom-app.md) | 71 | `result-track:44a6786cfca6646e135319dc5a8197d30168e3266847a6e8e3507970c2df51fb` |
| 5 | `def` | [shiftIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/shiftiso.md) | 89 | `declaration-track:59aafb5ca551852a94e38608e978861760b78b5d7410c1cbbe474ecb5b776855` |
| 6 | `lemma` | [shiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/shiftiso-hom-app.md) | 99 | `result-track:eb4bb34bf39a08f487ebba79ecc7e08d4d38752d0b5858ca95213e8f51fa9ca9` |
| 7 | `lemma` | [shiftIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/shiftiso-inv-app.md) | 105 | `result-track:f66889f85886c5b0018d9ef604f2c03a6a2a35d6e13001d5e3401ea61804af33` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/instance-source-edition-2.md) | 114 | `declaration-track:4511f6f635303169a2c95d8bde8b526eca992a24729a2e8f489a174518deeacd` |
| 9 | `lemma` | [quasiIsoAt_shift_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/quasiisoat-shift-iff.md) | 131 | `result-track:418fe265b66d41f6136a703352c70491eba55c6a0c10bbf857848ed620453d59` |
| 10 | `lemma` | [quasiIso_shift_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/quasiiso-shift-iff.md) | 137 | `result-track:21e8d7466323fe0d46d4211d8d1cc33798880054939c752c13c96d6c9b8d762c` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/instance-source-edition-3.md) | 147 | `declaration-track:a1954b2e82c7871b279c7849609ad5d8a0bb415ea61f2bf27c1885d01d53b383` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/instance-source-edition-4.md) | 152 | `declaration-track:a2a419265098562b298467b70b5a3c128a18ecdf7d7db7212966bfc2e0dc27ac` |
| 13 | `lemma` | [homologyFunctor_shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/homologyfunctor-shift.md) | 156 | `result-track:0dc736095ec620ebdb60176f5e08a7a726386098be15d8329be988be47ac53f8` |
| 14 | `lemma` | [liftCycles_shift_homologyπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/liftcycles-shift-homology.md) | 163 | `result-track:50c07a2ca67a0211d5f86768f62f5b0fa2f71396870db0dfbdcfa5924ad13fc5` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/instance.md) | 191 | `declaration-track:42f4f39df879fdf7c584e6d97ccc5eeba868c2efc20b5dccefa45ef4de28d5e7` |
| 16 | `lemma` | [homologyShiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/homologyshiftiso-hom-app.md) | 199 | `result-track:9ce02c6c7b7fb42ec9d13e20bb5dcf766ca6f8106fed0036131c6374d18afc75` |
| 17 | `lemma` | [homologyFunctor_shiftMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequencePublic.lean/declarations/homologyfunctor-shiftmap.md) | 209 | `result-track:8a5dcbffc3a00584e7920ae4a7b92dab0ee51fd23526333297b8440e83d50cc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ef5a5051cf22ca938ccf05c34e98a2ae274bd792f0a58c212f66e106cc6da8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
