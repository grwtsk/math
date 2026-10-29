# Verification target: Triangulated Yoneda Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5990fb38a21ae0f12db4acc3091319bc3344d34c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant79993ff6a9a1f16c6b72e98669ae9058e5f769439d7e769726c5142465240839.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5990fb38a21ae0f12db4acc3091319bc3344d34c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant79993ff6a9a1f16c6b72e98669ae9058e5f769439d7e769726c5142465240839.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant79993ff6a9a1f16c6b72e98669ae9058e5f769439d7e769726c5142465240839.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Ab` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftedHomOpposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.HomologicalFunctor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Opposite.Pretriangulated` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/instance-source-edition-3.md) | 46 | `declaration-track:7603930f8d0f13c9c15385cff400a7b16cc41f6d9e5b82ee9c178d9eed16ce28` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/instance.md) | 53 | `declaration-track:53cff93ae88c594bde097ede395b11166b5480672be5605ca17760cf8cecad5a` |
| 3 | `lemma` | [preadditiveYoneda_map_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/preadditiveyoneda-map-distinguished.md) | 60 | `result-track:7801978a36badda6d13011a83b2b2d7a45a61c257ea397d696ebbec36828eb17` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:563aea1735edc5ea36d05f363f410f35a4af1acf0d1cbec1678e48f0e2899f62` |
| 5 | `lemma` | [preadditiveCoyoneda_homologySequenceδ_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/preadditivecoyoneda-homologysequence-apply.md) | 70 | `result-track:da21e507c9d7a55bcea7ff6ad34a654930d4927328da6a046ff922e265348bd4` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/instance-source-edition-4.md) | 80 | `declaration-track:e336e67386b288fd3bc49aabc56eed96b65e7d66713726bee37fa64e3ca60172` |
| 7 | `lemma` | [preadditiveYoneda_shiftMap_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/preadditiveyoneda-shiftmap-apply.md) | 92 | `result-track:939c97082ddd3b595f1ea65cdbc4824dc5fcfd87f59bdde5ddff7fd6cccb73a6` |
| 8 | `lemma` | [preadditiveYoneda_homologySequenceδ_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedYonedaNamespaced.lean/declarations/preadditiveyoneda-homologysequence-apply.md) | 99 | `result-track:11a0324f1a1a663fda0c839aae473e19f3dba82114131d3cfac3f1430100b859` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce6b583b1a1efa6eb4a935afe9f0abb42acca46b8d9820a3a00611c2c05f5f05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant79993ff6a9a1f16c6b72e98669ae9058e5f769439d7e769726c5142465240839.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant79993ff6a9a1f16c6b72e98669ae9058e5f769439d7e769726c5142465240839.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
