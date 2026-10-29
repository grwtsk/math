# Verification target: Functor Categories Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "828fd93412072b52c9fb595da819e9c21530f244",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `828fd93412072b52c9fb595da819e9c21530f244`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [app_idem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/app-idem.md) | 46 | `result-track:eb72fa25e40ea4267a78d6882e4468b40aa9e6c427fe3935d4508f92c4481b25` |
| 2 | `theorem` | [app_p_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/app-p-comp.md) | 53 | `result-track:59ee4711db32fa1837206d434c749d47af1685bbea827f513e71e77e183a2621` |
| 3 | `theorem` | [app_comp_p](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/app-comp-p.md) | 58 | `result-track:0912a8d847daeb2d633fcc62c65b9fcb2f135053014c5d9501d473841cab96c9` |
| 4 | `theorem` | [app_p_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/app-p-comm.md) | 63 | `result-track:467e5f48731f6371834b3f39a80848ad15e4f75cfa00d6a0f1e24dcfe4b6ba2b` |
| 5 | `instance` | [functor_category_isIdempotentComplete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/functor-category-isidempotentcomplete.md) | 69 | `declaration-track:0b42d9de43bd27b5b75e44f39cd9cc96a287da1e99af42f06edd068aa9419850` |
| 6 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/obj.md) | 104 | `declaration-track:8107b89e689d8ad97f360a94f26a239d8e605e154d60ba880a5dc52ca09d4fbe` |
| 7 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/map.md) | 117 | `declaration-track:4c90b21210bd9fe89a67d550a8d5c7703a707e9b163c5a20343277442fa801a2` |
| 8 | `def` | [karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/karoubifunctorcategoryembedding.md) | 125 | `declaration-track:a413c33035ad20e412082bd9ade13ad6b6c31dd4a469b7dbf99aa2e84458d9e5` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:574b0d886ad6c86ac75af4cf23373c0b71305a0d41fcd32aa4d0d5027b53553c` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/instance.md) | 145 | `declaration-track:1a0597cd978a29dd6290b9f430f2c9bd6373dbe861fec6ccf655ba2d38379b95` |
| 11 | `theorem` | [toKaroubi_comp_karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedAligned.lean/declarations/tokaroubi-comp-karoubifunctorcategoryembedding.md) | 153 | `result-track:076bd6633c91c71c5ff4d5542d24c283bbca6f88d00c52e3b25d502e9eea7d38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4342e10b1cb03ac9731abb03b555aac10d9758380b2df680429e5e7fbb856d54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
