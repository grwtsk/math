# Verification target: Monad Products Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ed63ef43168a5d63ff85097a4f0337ecb34f871",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb77d55b89025f577a147ed251f6db85302fc8c458f8235d8d527bbd677d1a448.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ed63ef43168a5d63ff85097a4f0337ecb34f871`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb77d55b89025f577a147ed251f6db85302fc8c458f8235d8d527bbd677d1a448.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb77d55b89025f577a147ed251f6db85302fc8c458f8235d8d527bbd677d1a448.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prodComonad](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/prodcomonad.md) | 50 | `declaration-track:704561a4ea0720c011f0c9447ad5fa84be3081befcd45cc615f5b7050be4a312` |
| 2 | `def` | [coalgebraToOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/coalgebratoover.md) | 59 | `declaration-track:8f99adffb055233ace8684bb8255098b581e9cfb6f0f30d307e6fb1aa0076a69` |
| 3 | `def` | [overToCoalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/overtocoalgebra.md) | 72 | `declaration-track:c7dd41544aa46e946e62d018380c9535ca05b4824fc1294640489cc61f45aa09` |
| 4 | `def` | [coalgebraEquivOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/coalgebraequivover.md) | 80 | `declaration-track:e14b14a503badd833b8efaaf2d94c34a548182cdb1510ebd64c78545b7148c19` |
| 5 | `def` | [coprodMonad](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/coprodmonad.md) | 97 | `declaration-track:8fbef04e8a884d11f6c1d198a8ff7ad52f1d5d7db04d91148726b53be3166abc` |
| 6 | `def` | [algebraToUnder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/algebratounder.md) | 106 | `declaration-track:0c578d9a0029643d702520c06e4152ddadf0c86a632fa798b701ac2a92c39b1a` |
| 7 | `def` | [underToAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/undertoalgebra.md) | 119 | `declaration-track:139b1b005c3046b1d8bc37b66230b8fdf01396f85feb12ccf3f5aaaa89979e16` |
| 8 | `def` | [algebraEquivUnder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadProductsNamespaced.lean/declarations/algebraequivunder.md) | 128 | `declaration-track:fbd143c1b37334efa6e855c3698f9d9630af514e5aa57a0b76ab1e9ac2f16d87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f687b9344a7b75319ae2068b15aba03b51c2752fb47d9d55e28a3f5fa8dca54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb77d55b89025f577a147ed251f6db85302fc8c458f8235d8d527bbd677d1a448.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb77d55b89025f577a147ed251f6db85302fc8c458f8235d8d527bbd677d1a448.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
