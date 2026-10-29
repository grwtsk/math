# Verification target: Equiv Functor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edcd2fc8288d91a43c7f0436a427b458cacc3b44",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantedde4c0ac47674e04ed1666804f7dd2b548dd4a2ac372f6d730e174d251562d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edcd2fc8288d91a43c7f0436a427b458cacc3b44`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantedde4c0ac47674e04ed1666804f7dd2b548dd4a2ac372f6d730e174d251562d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantedde4c0ac47674e04ed1666804f7dd2b548dd4a2ac372f6d730e174d251562d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EquivFunctor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/equivfunctor.md) | 37 | `declaration-track:a54c68f9d37b447fd28458117a4e15ad274ee01ba01f9b0eec0e45705b1c10c9` |
| 2 | `def` | [mapEquiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/mapequiv.md) | 54 | `declaration-track:53565f0c20919d9ace5a8843bed42a1c93a7fae998150935901cb5fa5214dd44` |
| 3 | `theorem` | [mapEquiv_apply](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/mapequiv-apply.md) | 65 | `result-track:9917674acbc66e7adceb696680ab367dbedd5438dc5fa6f9fc2f5bca3bb7f06e` |
| 4 | `theorem` | [mapEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/mapequiv-symm-apply.md) | 68 | `result-track:b4fbd95785373ed22fe479fed52820592b457bd8da97b4acd0f6bbba901d4e9c` |
| 5 | `theorem` | [mapEquiv_refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/mapequiv-refl.md) | 72 | `result-track:1478213d0f82485281d344a081b579f9145ee29e42c8fb66496b1ef839f824fc` |
| 6 | `theorem` | [mapEquiv_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/mapequiv-symm.md) | 76 | `result-track:d74939e8f31d1ccd10f9d8789c6935f6e00573656eddae0f01c50a4e277e9ced` |
| 7 | `theorem` | [mapEquiv_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/mapequiv-trans.md) | 84 | `result-track:8ae0e9e36c26c250bad7a80b25f148be9c538231f901be9437f589271e5d9c8a` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/instance.md) | 90 | `declaration-track:7e363c90b5b5954b3e5054513a01cfbb23617d97f9fefe84cbaeae44809beb0f` |
| 9 | `theorem` | [mapEquiv.injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EquivFunctorNamespaced.lean/declarations/mapequiv-injective.md) | 100 | `result-track:9ef009acb02194a392095382952d9fe504a6f8569bfceb76ed55b389509f153f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=144e7d0079c29a2d43fa0cc90655c0b257db8419f68fe4b0bd7f61e74fe9d374 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantedde4c0ac47674e04ed1666804f7dd2b548dd4a2ac372f6d730e174d251562d7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantedde4c0ac47674e04ed1666804f7dd2b548dd4a2ac372f6d730e174d251562d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
