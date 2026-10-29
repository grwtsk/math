# Verification target: Connected Components Namespaced Component

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d87cb79ee27fb74013c9be9d7b6b5c582ddc7630",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant25c65bb377a448d96df82da32c15c679ae12b8e77644d5de080e01daeb60b0a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d87cb79ee27fb74013c9be9d7b6b5c582ddc7630`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant25c65bb377a448d96df82da32c15c679ae12b8e77644d5de080e01daeb60b0a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant25c65bb377a448d96df82da32c15c679ae12b8e77644d5de080e01daeb60b0a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FullSubcategory` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConnectedComponents](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/connectedcomponents.md) | 51 | `declaration-track:e339935b51a15340630386ad527b69a5be94d18d06a92fc233e05bc089c77097` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:459c76a7e89cf529fe1653dd40348729ba02ef825ddff739b5c780cac1576cc3` |
| 3 | `def` | [Component](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/component.md) | 59 | `declaration-track:05c33e7a88e0bd429a0f5ac60691c97b00349bbe978bb23c5058b28d5a27c809` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-3.md) | 63 | `declaration-track:56477be5d832b4f87b1dcff54644acbba906fa24381f1671033c48e9a41ce53d` |
| 5 | `def` | [Component.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/component-source-edition-2.md) | 69 | `declaration-track:b15fa7fa60c1297cf2ec954acfe3c2d50abcf5b1b954782b01c0e88c6869fdaf` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance.md) | 73 | `declaration-track:2decc573c43127d1a4e26015da91ae50b37a8bf9140d5c23f8d04ac29e8306f0` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-6.md) | 76 | `declaration-track:87953bfa5116378f24cf5d07efb3d5cb16e2e2dcf2d5dfdb9a90792b86fbbf8f` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-5.md) | 80 | `declaration-track:7f46823fa4d3896abd713ce8331ae1e2f363f5d6c5d31623338094d666d89a15` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-4.md) | 84 | `declaration-track:61a83eb0df617a8ac4762952dd3ed7162605477102c79cfad7ee4b44dc75e8a6` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-9.md) | 88 | `declaration-track:d5127b59493498cc20afe790ee736bb4cb5acd141a43495ee0d94e30f1a38bcb` |
| 11 | `abbrev` | [Decomposed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/decomposed.md) | 116 | `declaration-track:2451f59af894fced0e68dad1ba91e2dc1681b40550b09bb6f916b43b307b3d3d` |
| 12 | `abbrev` | [inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/inclusion.md) | 125 | `declaration-track:649f7da3038fc685394b93872bd658da9d979500c679190c3f5444245eb7363f` |
| 13 | `def` | [decomposedTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/decomposedto.md) | 132 | `declaration-track:e832e8d32f10e1204ea23ce9aa0ffa89c5060e1e943ed11880884471d456dfea` |
| 14 | `theorem` | [inclusion_comp_decomposedTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/inclusion-comp-decomposedto.md) | 137 | `result-track:f1fd53cd6bd30a430fdffb529cd99dd3920a3245902ea6dc8cb2eb0eb8078bc9` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-8.md) | 142 | `declaration-track:d209b3aa56572232784e80750a54381cdcb141dafccc3609259eb487012ba00f` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-10.md) | 160 | `declaration-track:de22b31f56d5aa84560cb99d01b8e5ada286f9dc4a0fbcdc4aa395835cd09dcd` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-11.md) | 165 | `declaration-track:f1bc0e7b171e9c2a701974d91f5f8bff51fda16b82247207ff2c2bcbbeca3965` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/instance-source-edition-7.md) | 167 | `declaration-track:8ff968daf77d218dadc8517ee6043d65d213aab45043726d2d3aa7ebf745b2a0` |
| 19 | `def` | [decomposedEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConnectedComponentsNamespacedComponent.lean/declarations/decomposedequiv.md) | 173 | `declaration-track:6fc14e0b458683ac96bf6e8c119af016f578257496e74efd105f7ff23475529c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3cfbbcdea2aac42c144ca02f781726077954765f8be3e314aa8e2e281c70a6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant25c65bb377a448d96df82da32c15c679ae12b8e77644d5de080e01daeb60b0a7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant25c65bb377a448d96df82da32c15c679ae12b8e77644d5de080e01daeb60b0a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
