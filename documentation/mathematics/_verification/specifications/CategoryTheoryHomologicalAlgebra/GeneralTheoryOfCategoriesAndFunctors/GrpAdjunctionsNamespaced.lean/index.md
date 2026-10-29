# Verification target: Grp Adjunctions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a720e881e5c9db31be3ea8540696d5ac4e75bc5d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a720e881e5c9db31be3ea8540696d5ac4e75bc5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/free.md) | 53 | `declaration-track:32e522a67319489e489e9987556a45c57269d14ed19cdb560ba379072a771311` |
| 2 | `theorem` | [free_obj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/free-obj-coe.md) | 60 | `result-track:964ad4d3e2b321610d52b0d15e4f96736022d4df4d347320188717298db7504d` |
| 3 | `theorem` | [free_map_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/free-map-coe.md) | 66 | `result-track:a59e12e2b689e8442a7b32592a6e81c81d2921e582bad1a5946e050d77941fa0` |
| 4 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/adj.md) | 72 | `declaration-track:0ec0fe7f00319d9e284d56dd5b0b3de6a30052f906854038dc0561da9ec1081b` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/instance-source-edition-5.md) | 82 | `declaration-track:831746535b9d439d7f8fdeaf675ae7f30d7dd749d395dd6627a6f7ff7105207e` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/instance.md) | 85 | `declaration-track:4d5d25a4a0e067410949cf4b2af842da31c346574d6aa9141d368a83f1f77283` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/instance-source-edition-7.md) | 88 | `declaration-track:94f7a9d98040b3b2f688790a96d9782ca71cff8919dfc812502d451dd46f7c19` |
| 8 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/example.md) | 96 | `declaration-track:c915610986704d14c49ecf3746169f4623dd85bedc953324c10c0910f4b041bc` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:5153399d9254b2e93e30e1e0513030df203117d983f82ed5e9ce867560b618e3` |
| 10 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/free-source-edition-2.md) | 118 | `declaration-track:e481fd8f0a6cb23817ad33d27f74f492325d8417b72fbbf10495def414e92e8b` |
| 11 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/adj-source-edition-2.md) | 124 | `declaration-track:c525cbe969286706e8bda5052c47a546ecef02f18c2c3e26717c196061886cb6` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/instance-source-edition-4.md) | 135 | `declaration-track:7b99afe9a5549aab1452600b11218c789cf16a24be9b141b9d5b5c7d479bd5a3` |
| 13 | `def` | [abelianize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/abelianize.md) | 142 | `declaration-track:27d93fd9d6fd7b0f4436d6804a54792348553d1aba0077fe1054d315f5cec25b` |
| 14 | `def` | [abelianizeAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/abelianizeadj.md) | 157 | `declaration-track:c68905dda8ce72168aa49c59029de6c6f3e000252fcc560da2452698d78f4b5c` |
| 15 | `def` | [MonCat.units](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/moncat-units.md) | 178 | `declaration-track:0e4349bfc6e41e1017ea23caa002e283ac06ea13bd08fbbb73260a6c2915a149` |
| 16 | `def` | [Grp.forget₂MonAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/grp-forget-monadj.md) | 185 | `declaration-track:53bd265570a9d090dc8ffa65cc5f97d7e22b1951be69185e64572ee0c7beed0e` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/instance-source-edition-3.md) | 198 | `declaration-track:5559f10629ba59fff2dccc2d68628600b07c38cfd3631407fe10f2ecb5941876` |
| 18 | `def` | [CommMonCat.units](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/commmoncat-units.md) | 203 | `declaration-track:f238f6ecfc57bbe5d198ece6875bacd773031eac8bbcb99d4dba0b34562b71e0` |
| 19 | `def` | [CommGrp.forget₂CommMonAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/commgrp-forget-commmonadj.md) | 210 | `declaration-track:9e5c8bb56c64f4f27289cfa0256c4e44ebc83f2e20a8987d1deb1ffdc1738923` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpAdjunctionsNamespaced.lean/declarations/instance-source-edition-6.md) | 228 | `declaration-track:94ca25d8e120001719d550945a84b52e449319fd0d7bbb9c2b66591b8b9f500d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2849a24de6cdc575dbe3282c7550e420ed85278c686061e58e59cb5b8e6ed9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
