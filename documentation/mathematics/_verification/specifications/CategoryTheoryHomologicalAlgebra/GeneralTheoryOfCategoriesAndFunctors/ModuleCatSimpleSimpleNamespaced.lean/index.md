# Verification target: Module Cat Simple Simple Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "039e1fd563b77d24b190a20375d743c16a3cfd76",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Simple/Variant401657b64a42421122c40b31a84d3c1ce9d3fe306006c1bd420f983dcfa11923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSimpleSimpleNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSimpleSimpleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `039e1fd563b77d24b190a20375d743c16a3cfd76`.

Source path: `GRWTSK/Algebra/Simple/Variant401657b64a42421122c40b31a84d3c1ce9d3fe306006c1bd420f983dcfa11923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Simple/Variant401657b64a42421122c40b31a84d3c1ce9d3fe306006c1bd420f983dcfa11923.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Subobject` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Simple` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [simple_iff_isSimpleModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSimpleSimpleNamespaced.lean/declarations/simple-iff-issimplemodule-source-edition-2.md) | 31 | `result-track:df6ce5cf98ae9cccae16219940dbc824b7c8de79d472ba415ffa32a58ac612f2` |
| 2 | `theorem` | [simple_iff_isSimpleModule'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSimpleSimpleNamespaced.lean/declarations/simple-iff-issimplemodule.md) | 34 | `result-track:80eea38c9259dd507f5dfa961beeb40ccb7353549e9e39fff457fe128340185b` |
| 3 | `instance` | [simple_of_isSimpleModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSimpleSimpleNamespaced.lean/declarations/simple-of-issimplemodule.md) | 38 | `declaration-track:14d8dccd077c5cae22cf9890122dfaf9db060c61e31f3688d38610ecfcbef697` |
| 4 | `instance` | [isSimpleModule_of_simple](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSimpleSimpleNamespaced.lean/declarations/issimplemodule-of-simple.md) | 42 | `declaration-track:5ba50de887a408c6f26e2714da6c997c7f06b8ebf6b00dfb59e17015315d64bd` |
| 5 | `theorem` | [simple_of_finrank_eq_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSimpleSimpleNamespaced.lean/declarations/simple-of-finrank-eq-one.md) | 50 | `result-track:9d919b75c222c7e1f327aefeaaeb5f5bd431666d2e001a8fc4ea7b2bdf879194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cdb92a6abe8455b1c19ae0e3d98c3098e5cc230aead5ee2dfbe38b246f28e4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Simple/Variant401657b64a42421122c40b31a84d3c1ce9d3fe306006c1bd420f983dcfa11923.lean","GRWTSK/_verification/specifications/Algebra/Simple/Variant401657b64a42421122c40b31a84d3c1ce9d3fe306006c1bd420f983dcfa11923.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
