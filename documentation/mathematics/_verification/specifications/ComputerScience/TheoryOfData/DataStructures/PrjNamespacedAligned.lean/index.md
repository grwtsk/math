# Verification target: Prj Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bb0f39ee1ea0464d87ab4763a3d2cba70d6e714",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Varianteaf8f6255d471ecf5021530c5b7ec1ab7f852d1661ba9ae237c47a8a75c21ba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bb0f39ee1ea0464d87ab4763a3d2cba70d6e714`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Varianteaf8f6255d471ecf5021530c5b7ec1ab7f852d1661ba9ae237c47a8a75c21ba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Varianteaf8f6255d471ecf5021530c5b7ec1ab7f852d1661ba9ae237c47a8a75c21ba4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj.md) | 34 | `declaration-track:7a95339c3c3de85763288429cc7e6fc37b7f8d42a60c361521e85046902526d1` |
| 2 | `instance` | [Prj.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj-inhabited.md) | 37 | `declaration-track:c742b75868855438811a4de470f3de3fb11dc1228ca4a9c4dfb22811e80eb4df` |
| 3 | `def` | [Prj.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj-map.md) | 42 | `declaration-track:10b2101032b7f67bf6ec767d39c2c89145b2d4edc204a7f7ad963465e723faf3` |
| 4 | `instance` | [Prj.mvfunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj-mvfunctor.md) | 45 | `declaration-track:9f04dea2d6953153abd2d064f1720a3c2d465b2d4c4d52a42eb28eda4ceadb8a` |
| 5 | `def` | [Prj.P](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj-p.md) | 49 | `declaration-track:fca0cde0191444a5e89d8ec5520c05f958ce2ac4c0b3c4e8beaf0ff77991093a` |
| 6 | `def` | [Prj.abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj-abs.md) | 56 | `declaration-track:24fd4769d49d84726dbce61dad30862370622d2bda86b691eddcfb922ed84e16` |
| 7 | `def` | [Prj.repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj-repr.md) | 61 | `declaration-track:ce0cb4f0546fe5adcff0d831184a019c5c24863ac815acadc4763db4675acaef` |
| 8 | `instance` | [Prj.mvqpf](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrjNamespacedAligned.lean/declarations/prj-mvqpf.md) | 65 | `declaration-track:3e32a109d38767d4c2721fcd4e69de52fd50b3966166483615542360882396af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89d62378c8d87400ca6dcce1b511f5efc50592106fad241bad0ff89d2e7dca80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Varianteaf8f6255d471ecf5021530c5b7ec1ab7f852d1661ba9ae237c47a8a75c21ba4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Varianteaf8f6255d471ecf5021530c5b7ec1ab7f852d1661ba9ae237c47a8a75c21ba4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
