# Verification target: Localization Triangulated Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4fa7490470e73ae631fc62deb33058c8b258742",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4fa7490470e73ae631fc62deb33058c8b258742`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.CalculusOfFractions.ComposableArrows` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.CalculusOfFractions.Preadditive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithTriangulation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/iscompatiblewithtriangulation.md) | 46 | `declaration-track:6656e5b72d2c476a7a97d555f0befac0888edef9cc3e7fdc5c0960b9af71f9c9` |
| 2 | `def` | [essImageDistTriang](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/essimagedisttriang.md) | 63 | `declaration-track:5bc090bf01621ed053110844c0cfa90a13aa0b126c494116a0513648330736be` |
| 3 | `lemma` | [essImageDistTriang_mem_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/essimagedisttriang-mem-of-iso.md) | 66 | `result-track:ee9b63744e2dac4fab1194e9b20cbd71d8873b15d98f2f78be2a5f628fc612bc` |
| 4 | `lemma` | [contractible_mem_essImageDistTriang](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/contractible-mem-essimagedisttriang.md) | 71 | `result-track:bbd85efe8a540274342e354fe4ba62d5f8c90d9ae933d3c88aa36ae2bdb5dcc9` |
| 5 | `lemma` | [rotate_essImageDistTriang](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/rotate-essimagedisttriang.md) | 78 | `result-track:d08530101addafc368bac621538a57af0b34f46208919862f2005ddcc2db9130` |
| 6 | `lemma` | [complete_distinguished_essImageDistTriang_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/complete-distinguished-essimagedisttriang-morphism.md) | 89 | `result-track:89b3c8475e14bca285e1ea87b6ae686e83a05431f465cd3a8fb20ab364fe6dcf` |
| 7 | `lemma` | [distinguished_cocone_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/distinguished-cocone-triangle.md) | 134 | `result-track:ae4e1a1aedeedf5f816ad39a25e741664baa1a34265c86c27871c6d02ce58e1c` |
| 8 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/complete-distinguished-triangle-morphism.md) | 153 | `result-track:f2f5ce07bb3c345f3bae343370d81fc2c00e3db021d7d4b0c14cde72579369e7` |
| 9 | `def` | [pretriangulated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/pretriangulated.md) | 197 | `declaration-track:5111204dd3e697e76cc9af9d0094982c53ab0434414fcf078d3c312f802c7c5e` |
| 10 | `instance` | [isTriangulated_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/istriangulated-functor.md) | 206 | `declaration-track:8ca84227e445ad1a4d600e52161dd6a63bbf5870a5566eee18456e214ff5660b` |
| 11 | `lemma` | [isTriangulated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/istriangulated.md) | 216 | `result-track:225e64600eb762acd2dcf10a5437ad2d4f5d9591a43384ef5f0a438a8fedde89` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/instance-source-edition-6.md) | 223 | `declaration-track:bef9737fa6cc0eb829064c94d9a5da75198d71b6a905698d3623b1563ce52cd0` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/instance-source-edition-5.md) | 227 | `declaration-track:922e664a52f89907725d5f9a59c2beeb75c74931e306f971aa6fbe486594fa34` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/instance-source-edition-3.md) | 229 | `declaration-track:10b5305576dba6af8907b1562c5b0c10000f82d08a00abf4e4e2bc65bc915475` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/instance-source-edition-4.md) | 235 | `declaration-track:73119c3bb5ec8a7b6b5d7bd74335203067382d081dc465b2103570fcc8006b37` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/instance.md) | 239 | `declaration-track:016a972d0db50c54a2ade1ecda7e73072c022eed77a98ca84b0655d5bbf8671f` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/instance-source-edition-2.md) | 241 | `declaration-track:0d64a810e6ab7e08756e502f4479bb3b199cbb9905bdc0005e37c3d5f071d287` |
| 18 | `lemma` | [distTriang_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationTriangulatedNamespaced.lean/declarations/disttriang-iff.md) | 254 | `result-track:e68fe0b8322f67aceef26ff6444d0257efa75d5dfad6fd7418fb0b752df30aac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0ac43a7c5a2b0defd01d4678c0ffa323515bf481372f747f554668322859455 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
