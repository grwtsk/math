# Verification target: Core Namespaced Fabric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3c42abe38c0b1488ac428b9fc3870da5d58c6d2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantbc0d115946890cf13cbf0cdbed6d5685e7e180220862c5ea5cc18afbe2652948.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3c42abe38c0b1488ac428b9fc3870da5d58c6d2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantbc0d115946890cf13cbf0cdbed6d5685e7e180220862c5ea5cc18afbe2652948.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantbc0d115946890cf13cbf0cdbed6d5685e7e180220862c5ea5cc18afbe2652948.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.PresentationCategory` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Shape` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Fabric](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/fabric.md) | 34 | `declaration-track:6c79454845e387d5893cf61f257ddc48cc6454ef6b26503f22fc95826d136bf2` |
| 2 | `abbrev` | [Cell](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/cell.md) | 63 | `declaration-track:142d770bdc226ca6c87d94cc08e835873e1a664498edb0101a42d69ce68821e9` |
| 3 | `abbrev` | [cellPresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/cellpresentation.md) | 67 | `declaration-track:f90db95520276355f601f651503fb6634c90081cbb145052790ab8a8e3857e56` |
| 4 | `abbrev` | [cellSystem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/cellsystem.md) | 71 | `declaration-track:145b8c47e71c2dc36eb09aa1b200cdc938708e69c93b2e85d1a8e66e4c8160b9` |
| 5 | `def` | [faceContract](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/facecontract.md) | 75 | `declaration-track:18129cfb0f327ebb75c7355bea68175664b08eeed01572841a03acc7f6eb0e5a` |
| 6 | `def` | [degeneracyContract](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/degeneracycontract.md) | 83 | `declaration-track:b3510893a647f25c7e043b4b5318af96ed4b072b43824bbaa74cd8c069602c4c` |
| 7 | `def` | [contractSystemHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/contractsystemhom.md) | 91 | `declaration-track:e656d777e91ecb168805362e35a0d10eff5c185cf67497f90042948409181f59` |
| 8 | `theorem` | [contract_id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/contract-id-apply.md) | 97 | `result-track:f6754908f8206e37d52c8e098330daf88f9be96d6a06cf35fe77f91719d99584` |
| 9 | `theorem` | [contract_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoreNamespacedFabric.lean/declarations/contract-comp-apply.md) | 104 | `result-track:43bb9785403a8fe574a8c288f1538320eceab6950482c0c5bcfb2f97acc240b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b40c49a5d87d0f4ee7e6d9649e64865f039369b9bc34a73d7663b5fdc0ec9d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantbc0d115946890cf13cbf0cdbed6d5685e7e180220862c5ea5cc18afbe2652948.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantbc0d115946890cf13cbf0cdbed6d5685e7e180220862c5ea5cc18afbe2652948.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
