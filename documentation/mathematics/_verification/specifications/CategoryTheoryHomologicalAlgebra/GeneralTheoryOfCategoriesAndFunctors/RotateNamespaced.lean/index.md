# Verification target: Rotate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c210d1a6e0c3a1c798f08823460610986a7fcb88",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c210d1a6e0c3a1c798f08823460610986a7fcb88`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Triangle.rotate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/triangle-rotate.md) | 57 | `declaration-track:daf896b03a6c5fc4ab2c5c7e1615d08056f5761ebf9b10a6030fcfed69ed2c11` |
| 2 | `def` | [Triangle.invRotate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/triangle-invrotate.md) | 76 | `declaration-track:f7211965091307dc47d54472cee1bbfd66560e9faaada61a6e00d04fa35f1e01` |
| 3 | `def` | [rotate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/rotate.md) | 91 | `declaration-track:8e4a19391204edee129bf4aff0193451e8f7c829d2b54975992f69bb8714683e` |
| 4 | `def` | [invRotate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/invrotate.md) | 104 | `declaration-track:12dafca8fafc6d77a8cac4c0ec18031329a190ef9da20138c5dec610a3a686b5` |
| 5 | `def` | [rotCompInvRot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/rotcompinvrot.md) | 122 | `declaration-track:b7438fa65f43b3998d3c1be0a35f78c37d0e3138b7aedd50f8b279a3da1a2a5e` |
| 6 | `def` | [invRotCompRot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/invrotcomprot.md) | 129 | `declaration-track:609eaed63f6764fa0e6f1a91257f0d7bad215d39b584422da396af82fbf72318` |
| 7 | `def` | [triangleRotation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/trianglerotation.md) | 137 | `declaration-track:53c0b7ac0f571ec0fa6253309d6dda03095d3df89f8ef9aae71e33fc05f39838` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/instance.md) | 143 | `declaration-track:90deccf8c44d0ebaaeb3a1a477ea8afa2f69b1b068cce45bc2953fc54655c4a6` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RotateNamespaced.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:e09641216eb067d6b5891398dd84b6f03b31f7555d9959f6b6ad16df358a30d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c6981a2f9144811daa376d43c24d030948fa5ad8c761952c9a49b72c65b2022 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
