# Verification target: Single

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5add88c366ef08fc0e8df4dbd504652030325f7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantcc14854375824e7ae15764590e707f11e4c2cd94a2b345061f617c3def4bec60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5add88c366ef08fc0e8df4dbd504652030325f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantcc14854375824e7ae15764590e707f11e4c2cd94a2b345061f617c3def4bec60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantcc14854375824e7ae15764590e707f11e4c2cd94a2b345061f617c3def4bec60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [single](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/single-source-edition-2.md) | 27 | `declaration-track:9ab40667c8b9db1da9745479e1511aa1632a48425837bd52431396c0c74e8524` |
| 2 | `abbrev` | [single₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/single.md) | 36 | `declaration-track:16f18edbcaf0d880be2c887aae6248cea2ee2ec14df48af4a1a53f09712430d8` |
| 3 | `def` | [singleObjApplyIsoOfEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/singleobjapplyisoofeq.md) | 39 | `declaration-track:d930a3e648b8548433b9573f66c5b2fc3bbb23ee5528b870e7ddd6c6017295f0` |
| 4 | `abbrev` | [singleObjApplyIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/singleobjapplyiso.md) | 43 | `declaration-track:864d438cb7f730947a68acf7fc43e9ae25c4a62d64ae25640c85e4442d71467f` |
| 5 | `def` | [isInitialSingleObjApply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/isinitialsingleobjapply.md) | 47 | `declaration-track:85fb8bbde02c37bccf7276114f8db660bd47a9d009afa63afc6e454950a8f150` |
| 6 | `lemma` | [singleObjApplyIsoOfEq_inv_single_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/singleobjapplyisoofeq-inv-single-map.md) | 53 | `result-track:7c40a8c6b00f3ae1356aa113bedf33fcc5fafe8495741c149736b1325b8a519e` |
| 7 | `lemma` | [single_map_singleObjApplyIsoOfEq_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/single-map-singleobjapplyisoofeq-hom.md) | 59 | `result-track:53d17c06685b4bd7abbaa535bd3ef39f8647c291a3390f1f03eec85c53005799` |
| 8 | `lemma` | [singleObjApplyIso_inv_single_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/singleobjapplyiso-inv-single-map.md) | 66 | `result-track:d6ee44f9278c4b44c6e0817fdc7f3d3807d640cd08882083700681fbbd263093` |
| 9 | `lemma` | [single_map_singleObjApplyIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/single-map-singleobjapplyiso-hom.md) | 71 | `result-track:9812de3cb1626ead88a814b1090a536cd78bc64ed4c2bb8211e48c4a35d6d457` |
| 10 | `def` | [singleCompEval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Single.lean/declarations/singlecompeval.md) | 79 | `declaration-track:b92f2280e797193cfc56de44479755f9851251f2a74c1686a7ab3176a6efdf97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0291856a133816cb1c2b962e91e326f2c295565fd915a7eeb0bf19f5c54be72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantcc14854375824e7ae15764590e707f11e4c2cd94a2b345061f617c3def4bec60.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantcc14854375824e7ae15764590e707f11e4c2cd94a2b345061f617c3def4bec60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
