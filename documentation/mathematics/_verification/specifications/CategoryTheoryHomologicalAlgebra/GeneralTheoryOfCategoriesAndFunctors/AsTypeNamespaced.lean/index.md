# Verification target: As Type Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad3e5a6dcf10fc390c2742c468d72bd6f69612f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Varianta9db7d10a3c65db677ab44f7bc19dbe4db78e5665a9ad289725276ea4e37a3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad3e5a6dcf10fc390c2742c468d72bd6f69612f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Varianta9db7d10a3c65db677ab44f7bc19dbe4db78e5665a9ad289725276ea4e37a3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Varianta9db7d10a3c65db677ab44f7bc19dbe4db78e5665a9ad289725276ea4e37a3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ObjAsType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/objastype.md) | 34 | `declaration-track:ad525b918a6979339a0d11659898246f0c81d547020c7c44cb2406e43ffe87b3` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/instance.md) | 37 | `declaration-track:e0e1b5ee9fc6673170360cb9c8450c1d583761561e3e39702aa1ff11599d5cbe` |
| 3 | `def` | [objAsTypeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/objastypeequiv.md) | 41 | `declaration-track:8c57530e05c84cce9e29ea57505e22798c6f85ca74db77cecb0502df461c1add` |
| 4 | `abbrev` | [AsType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/astype.md) | 46 | `declaration-track:d4b676e851e07ed36be62004bbb143157f4cdfc202e60ea21e47122e2b71cd78` |
| 5 | `instance` | [categoryAsType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/categoryastype.md) | 50 | `declaration-track:2e6c87e0e3e7f66da5718bdd74169c4583c28a5977e967271ae27a87da7d137e` |
| 6 | `def` | [asTypeToObjAsType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/astypetoobjastype.md) | 59 | `declaration-track:e81255c086596926ed27dd8e0f18851fffc6347a7e50ae55ce5a1ffcdf2972d2` |
| 7 | `def` | [objAsTypeToAsType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/objastypetoastype.md) | 65 | `declaration-track:4d89eed66ac20660101baa517602496de59b038f8534cd1bfd42df7355c2466b` |
| 8 | `def` | [asTypeEquivObjAsType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/astypeequivobjastype.md) | 70 | `declaration-track:55dac1dc984a3c88d5c20a621b5032fbf69ba8bc518d873bab464543a46a93bc` |
| 9 | `instance` | [asTypeFinCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/astypefincategory.md) | 76 | `declaration-track:4f85318fec5e338bff356a51a84170b09b671bf255a998641c3c014cefe71dcb` |
| 10 | `def` | [equivAsType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AsTypeNamespaced.lean/declarations/equivastype.md) | 80 | `declaration-track:10ff7fa2c0b35c09d501d81a1d2d90906d9bb0993411389e35e4586011a91a34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d89147b30dd534e43f4ba5498db59eede3925a5aaa956c1939f156c39cb6a881 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Varianta9db7d10a3c65db677ab44f7bc19dbe4db78e5665a9ad289725276ea4e37a3da.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Varianta9db7d10a3c65db677ab44f7bc19dbe4db78e5665a9ad289725276ea4e37a3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
