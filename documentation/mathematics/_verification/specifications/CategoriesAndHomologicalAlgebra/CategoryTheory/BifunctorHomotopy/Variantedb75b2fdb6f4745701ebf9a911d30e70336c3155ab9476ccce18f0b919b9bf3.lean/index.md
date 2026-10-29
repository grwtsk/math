# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BifunctorHomotopy.Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c000b592f3c112da96ef3ca52ff45a3067e8131",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c000b592f3c112da96ef3ca52ff45a3067e8131`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Bifunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hom₁](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/declarations/hom--93b6343d7c9593c69a5aee6d.md) | 40 | `declaration-track:93b6343d7c9593c69a5aee6d724f008a4323d6de5f431004e9cc039a60f9b661` |
| 2 | `lemma` | [ιMapBifunctor_hom₁](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/declarations/mapbifunctor-hom--d463206a2914d4c4256da740.md) | 48 | `result-track:d463206a2914d4c4256da740aa670f77bc39775aba70b3dd3daa729bd436045b` |
| 3 | `lemma` | [zero₁](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/declarations/zero--5fae744f20574c99655773e3.md) | 56 | `result-track:5fae744f20574c99655773e38ae1d57bbb17960c466eb14acd539619084e3893` |
| 4 | `lemma` | [comm₁_aux](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/declarations/comm-aux--361939af36cf7b01d55180b9.md) | 70 | `result-track:361939af36cf7b01d55180b9a7dfbc99ea9e4f0452830175493e0ef91487a1e3` |
| 5 | `lemma` | [comm₁](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/declarations/comm--184963f40e7bac6a19215b6a.md) | 90 | `result-track:184963f40e7bac6a19215b6ae1bde58df2245da266884a36a21bc833c69b24f3` |
| 6 | `def` | [mapBifunctorMapHomotopy₁](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean/declarations/mapbifunctormaphomotopy--c28fb943fff0061b83385995.md) | 151 | `declaration-track:c28fb943fff0061b83385995fc4959c5b94a8345614849b5166e9e9fbffdedcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ccbfdd2fc0f19ffd910ef65337c603bbef9e4aaadcebf34cb39a0afcd0d4ce0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantedb75b2fdb6f4745701ebf9a911d30e70336c3155ab9476ccce18f0b919b9bf3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
