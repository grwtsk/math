# Verification target: Hom Orthogonal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "119d7d5183d77d9b42d03e67605d3ccdfee8afd7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant8006ad6fb972c0ed6b7f4193274fa3d77802a9a5fa2248886f6c89d88ae8f173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `119d7d5183d77d9b42d03e67605d3ccdfee8afd7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant8006ad6fb972c0ed6b7f4193274fa3d77802a9a5fa2248886f6c89d88ae8f173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant8006ad6fb972c0ed6b7f4193274fa3d77802a9a5fa2248886f6c89d88ae8f173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.InvariantBasisNumber` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomOrthogonal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/homorthogonal.md) | 51 | `declaration-track:36ba36ed0bdec70e9911be54b8355e77237418a76af12aa4abc1138834ba80ce` |
| 2 | `theorem` | [eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/eq-zero.md) | 58 | `result-track:da82862c4090890b150497351c827ffe3f738904628db99188280b5ed018e456` |
| 3 | `def` | [matrixDecomposition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/matrixdecomposition.md) | 72 | `declaration-track:9845c3e1f80f59af30ea5947a93cfc86e35c43c51f03c077cfc1ee519b2a10c4` |
| 4 | `def` | [matrixDecompositionAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/matrixdecompositionaddequiv.md) | 113 | `declaration-track:3af933b1206fee6649507bbb13b9a814e2021305deed8a69860512b8c38583eb` |
| 5 | `theorem` | [matrixDecomposition_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/matrixdecomposition-id.md) | 125 | `result-track:5366ea32049b386ab4dfb332bef626eeb56f3d13b30088e0dcba9b797453c6ab` |
| 6 | `theorem` | [matrixDecomposition_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/matrixdecomposition-comp.md) | 141 | `result-track:ca1175b18d9e01633433ef9ae2dad95cdc293007139e1ae79466d8dba9622bd3` |
| 7 | `def` | [matrixDecompositionLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/matrixdecompositionlinearequiv.md) | 168 | `declaration-track:a2e34d6ef2175254a4e2c3aa7c15681df131723ad94ad845a6765e9fe5c3b71e` |
| 8 | `theorem` | [equiv_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomOrthogonal.lean/declarations/equiv-of-iso.md) | 192 | `result-track:1b7efcdb2a893baf91347eee12cfb132d8aa6f4597ec0f353ad7657df940637a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e322f266de8c1b7f13b9383df0beace161dcc654a7cf7e4cc5a23b86e133078e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant8006ad6fb972c0ed6b7f4193274fa3d77802a9a5fa2248886f6c89d88ae8f173.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant8006ad6fb972c0ed6b7f4193274fa3d77802a9a5fa2248886f6c89d88ae8f173.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
