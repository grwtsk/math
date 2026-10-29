# Verification target: Whole Free Observation Category

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7d285fb50c83e159cec52f42b5304304dc1e4af",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/CatalanAndCategoryInterfaces/Variant6c098095b600707a/WholeFreeObservationCategory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7d285fb50c83e159cec52f42b5304304dc1e4af`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/CatalanAndCategoryInterfaces/Variant6c098095b600707a/WholeFreeObservationCategory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/CatalanAndCategoryInterfaces/Variant6c098095b600707a/WholeFreeObservationCategory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Obs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/obs.md) | 45 | `declaration-track:b8eaccb0a3eb14fd344315befabf34b3d33d087e903cad01d525f60c42136133` |
| 2 | `inductive` | [Generator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/generator.md) | 58 | `declaration-track:d152dfa20aa7f9ae17162f5e0e5dfcaeec62fb22e458c388290a913938f92d83` |
| 3 | `inductive` | [Path](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/path.md) | 67 | `declaration-track:961f18e18393ec7692c86ef85e1ff69428811b7e27bc1d81474d992389fb9a4e` |
| 4 | `def` | [append](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/append.md) | 73 | `declaration-track:921c9e09f7f48a3139a539107ae2e3d4dfffbe1b915ad8aaacc2d37a0f14cff0` |
| 5 | `theorem` | [nil_append](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/nil-append.md) | 78 | `result-track:fed8c422653d3f78022e9c9884abfead6fa6221e4f3914d486bf0ecdd86a2010` |
| 6 | `theorem` | [append_nil](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/append-nil.md) | 83 | `result-track:0bbd717cdda5d724e0a969bee82b40ee4186f42f3c7dfaaeced07d8e842ffaae` |
| 7 | `theorem` | [append_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/append-assoc.md) | 91 | `result-track:886a44d9f7f2e0c30d4ce2db2950ce6eacf3ccd8bda5090494449e33fd30c5f1` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WholeFreeObservationCategory.lean/declarations/instance.md) | 101 | `declaration-track:dc5cb65a77da01ac61e810dbf55949a37f8f2ec9a794eab522b94c7fdc8c56db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86702e7b0bc6cdb2592625fcebd304fe5e34744022fa4d556526ef54ba8d7a78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/CatalanAndCategoryInterfaces/Variant6c098095b600707a/WholeFreeObservationCategory.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/CatalanAndCategoryInterfaces/Variant6c098095b600707a/WholeFreeObservationCategory.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
