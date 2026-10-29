# Verification target: Cover Preserving Pullback Is Sheaf Of Cover Preserving

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "880f34b924894959034e554a916d7f12191d802d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Varianta26d079c07443952b0dc38aa7fe445cc36416d0e90da4f45c35e540be9503b98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `880f34b924894959034e554a916d7f12191d802d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Varianta26d079c07443952b0dc38aa7fe445cc36416d0e90da4f45c35e540be9503b98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Varianta26d079c07443952b0dc38aa7fe445cc36416d0e90da4f45c35e540be9503b98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Flat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/coverpreserving.md) | 64 | `declaration-track:4b098e622212f266c65aae833718e88f3ab264de92478c4a81ed822c7011f105` |
| 2 | `theorem` | [idCoverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/idcoverpreserving.md) | 69 | `result-track:5936b47e0b083cdf4c9cf0339fb1a2c90569b773e43e156c778ea09defd082ea` |
| 3 | `theorem` | [CoverPreserving.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/coverpreserving-comp.md) | 74 | `result-track:d675dda34fcfa764befb9807867bd8748f0cfd35b1ea887498469f744d2b2512` |
| 4 | `structure` | [CompatiblePreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/compatiblepreserving.md) | 88 | `declaration-track:7e6de7ddd0d254fb522aab10b23d3a730857f97f3666621f62f560e08aa74650` |
| 5 | `theorem` | [Presieve.FamilyOfElements.Compatible.functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/presieve-familyofelements-compatible-functorpushforward.md) | 101 | `result-track:a6cf4dd98b21368f587d9ac30235baf6108ff53d888eea22961fe19f43be034b` |
| 6 | `theorem` | [CompatiblePreserving.apply_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/compatiblepreserving-apply-map.md) | 114 | `result-track:08d8733efeba73dbd691f69b966716dd6ace27b2942dea76232856737ef13985` |
| 7 | `theorem` | [compatiblePreservingOfFlat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/compatiblepreservingofflat.md) | 124 | `result-track:103483636c7eb55e68528db7baaae77fec02e6de4d9eb2d5058356b3f572789f` |
| 8 | `theorem` | [compatiblePreservingOfDownwardsClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/compatiblepreservingofdownwardsclosed.md) | 159 | `result-track:5279c315135b2c43d2a76528afa1497d03950711f1f1b660fdc29e601c651d33` |
| 9 | `theorem` | [pullback_isSheaf_of_coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/pullback-issheaf-of-coverpreserving.md) | 176 | `result-track:9ad0b90256e30148c3d4dc3e9ae9f39080c54f4bec8dfd11a27563766bf51794` |
| 10 | `def` | [pullbackSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/pullbacksheaf.md) | 201 | `declaration-track:55933a4643de4ba1c2dddd1af9a6eaa739846426705a3c598b567080426cebfa` |
| 11 | `def` | [Sites.pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingPullbackIsSheafOfCoverPreserving.lean/declarations/sites-pullback.md) | 212 | `declaration-track:1c281bca78ef9443cef13d839aa59a3bee727ba24ef2a5b87350ffae9ad98485` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cbe93c57c4d473af4b163589509ff2d55176034dafe82946ccad3862c7f3819 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Varianta26d079c07443952b0dc38aa7fe445cc36416d0e90da4f45c35e540be9503b98.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Varianta26d079c07443952b0dc38aa7fe445cc36416d0e90da4f45c35e540be9503b98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
