# Verification target: Single Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c87c2260b57e55f09ecb18ed945661dfa96a2ea",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantd7a875086ae85fee9fed1ecb3d07d7ee9f791c34041ef52a89470aee50bdb9e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c87c2260b57e55f09ecb18ed945661dfa96a2ea`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantd7a875086ae85fee9fed1ecb3d07d7ee9f791c34041ef52a89470aee50bdb9e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantd7a875086ae85fee9fed1ecb3d07d7ee9f791c34041ef52a89470aee50bdb9e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [single](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/single.md) | 35 | `declaration-track:348118e9bba40efc128d3711736cb3bf4b6196b2dbf4a509691d0ed641f15828` |
| 2 | `abbrev` | [single₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/single-source-edition-2.md) | 44 | `declaration-track:39d49f3e3a62b722556c19a73dcd06e3c9dc6e00635a722e8dabb3e964d64802` |
| 3 | `def` | [singleObjApplyIsoOfEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/singleobjapplyisoofeq.md) | 47 | `declaration-track:5d73f9768ca7cec53747fd198c650e6ecc3a8915248ef150a6719b72e6e02d7c` |
| 4 | `abbrev` | [singleObjApplyIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/singleobjapplyiso.md) | 51 | `declaration-track:5f879c9223fcee185293b1ee154fd972dfa6bd96aac7e3bbf6e35f68c17e2761` |
| 5 | `def` | [isInitialSingleObjApply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/isinitialsingleobjapply.md) | 55 | `declaration-track:4a8da69fec3de75337be5639a44960b4a21802562aab90fd97d27e5f3b03acbe` |
| 6 | `lemma` | [singleObjApplyIsoOfEq_inv_single_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/singleobjapplyisoofeq-inv-single-map.md) | 61 | `result-track:d998cddcb2e85e7da95952e1b0dc3cc21725ce39a8424c262227e33973791977` |
| 7 | `lemma` | [single_map_singleObjApplyIsoOfEq_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/single-map-singleobjapplyisoofeq-hom.md) | 67 | `result-track:84cca4bb10d6f8cab9776fe03af6a39d5d27478b9de36172d64341394a8ab987` |
| 8 | `lemma` | [singleObjApplyIso_inv_single_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/singleobjapplyiso-inv-single-map.md) | 74 | `result-track:e2cea44d9736ff564c1268cd721b349c80977e1913270a6e5aaf6e985d33df1a` |
| 9 | `lemma` | [single_map_singleObjApplyIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/single-map-singleobjapplyiso-hom.md) | 79 | `result-track:8b8636cc5d0fce6e95021d7fd63a0f0a1dfeb03fa6cd3d3f66801ee20aab06ba` |
| 10 | `def` | [singleCompEval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleNamespaced.lean/declarations/singlecompeval.md) | 87 | `declaration-track:1e674e4485c77cef2f7b455fcee64b230e17568f6cdd953ecb741f6f2bb4a9da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bd2e369308b5199970f1de01a23aa86c4562ed248b6c49e47ca92a68e6d4e9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantd7a875086ae85fee9fed1ecb3d07d7ee9f791c34041ef52a89470aee50bdb9e7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Single/Variantd7a875086ae85fee9fed1ecb3d07d7ee9f791c34041ef52a89470aee50bdb9e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
