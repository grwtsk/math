# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "087d903acce75526add2f3e154b2abdb41305f1c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `087d903acce75526add2f3e154b2abdb41305f1c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Functor](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/functor--c85f74ecc16ba1b69ef1d133.md) | 38 | `declaration-track:c85f74ecc16ba1b69ef1d133491552030f36414f71da030c84470489f9124f84` |
| 2 | `lemma` | [Functor.map_comp_assoc](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/functor-map-comp-assoc--e7cf159c2d0f9f3d883e1c6c.md) | 64 | `result-track:e7cf159c2d0f9f3d883e1c6c0847081b14e7a4d9d47ad7660b4b82c749bf4569` |
| 3 | `def` | [id](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/id--65b9a146cdecc28476d1cc16.md) | 81 | `declaration-track:65b9a146cdecc28476d1cc16a69a0c18cd0e6289fdc5f8619e388869105f0325` |
| 4 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/instance--e14a349aaa1a2855a1512401.md) | 89 | `declaration-track:e14a349aaa1a2855a1512401548a2def10afef2814984b7ebdb9acc2d568d1fb` |
| 5 | `theorem` | [id_obj](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/id-obj--750324a85be0d626b6a82d88.md) | 95 | `result-track:750324a85be0d626b6a82d88ceb97812174c61d661fac2e6a9629acf368d8827` |
| 6 | `theorem` | [id_map](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/id-map--f9ae55fc4618cd02a7e2e568.md) | 99 | `result-track:f9ae55fc4618cd02a7e2e56861f9f5733b94ca386cbe7c686a86d4f124f10fac` |
| 7 | `def` | [comp](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/comp--d70d3112a0ec696eb07f5ad4.md) | 112 | `declaration-track:d70d3112a0ec696eb07f5ad4c325933f6ffbb03d6c207e6c57b0625013540a8e` |
| 8 | `theorem` | [comp_map](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/comp-map--5d680fcc20183d3bc25c80dc.md) | 123 | `result-track:5d680fcc20183d3bc25c80dcf28ea08a843436a826e26a00353caa61314b1b1d` |
| 9 | `theorem` | [comp_id](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/comp-id--d47c4ab6af01dd6913e50723.md) | 130 | `result-track:d47c4ab6af01dd6913e5072316061492c0aaed791c865d33b58fd472bb392a6f` |
| 10 | `theorem` | [id_comp](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/id-comp--3fdfb02393695b095d6c0160.md) | 133 | `result-track:3fdfb02393695b095d6c016010a807fa044bf6353ce61de181834160a3a00242` |
| 11 | `theorem` | [map_dite](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/map-dite--1eaf77fa4d65b1d6f81662c1.md) | 137 | `result-track:1eaf77fa4d65b1d6f81662c1b04d3edec2ef98cdf8c9efc10458869ef55f8396` |
| 12 | `theorem` | [toPrefunctor_comp](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean/declarations/toprefunctor-comp--356c4c24be07e7582eeda096.md) | 147 | `result-track:356c4c24be07e7582eeda096be8bee8bd4d10edc7c3ffedeb3116b69092cc419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f7b3bf02b6db776cd0179c5b0ae77247e270ec36b5280ae43aed61b82ea89fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb52665e8923d3db341efa4790111b0df94842612a05c77671afa5783cbb1253a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
