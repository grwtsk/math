# Verification target: Limits Full Subcategory Namespaced Has Limit Of Closed Under Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "718637b3e08b0181514ab6bb8183a82bce4f33dc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `718637b3e08b0181514ab6bb8183a82bce4f33dc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ClosedUnderLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/closedunderlimitsofshape.md) | 38 | `declaration-track:4bf96f7d05f60cfb2cbf8abfdbd575cb468c07784b9bbbf8bf043b946933af31` |
| 2 | `def` | [ClosedUnderColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/closedundercolimitsofshape.md) | 45 | `declaration-track:50751cdd29e21f7014370e16b95bcc7f2c5670566d8299399624ca4f9dca20da` |
| 3 | `theorem` | [ClosedUnderLimitsOfShape.limit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/closedunderlimitsofshape-limit.md) | 54 | `result-track:5e2a794a08ee43c77404f50257fe43a0f49fd1d360443dd4c42c2973690e5c37` |
| 4 | `theorem` | [ClosedUnderColimitsOfShape.colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/closedundercolimitsofshape-colimit.md) | 59 | `result-track:28520d3fb26eb1dfa2cd68a2ee2704adc624904735196191aa21fe1bb288963e` |
| 5 | `def` | [createsLimitFullSubcategoryInclusion'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createslimitfullsubcategoryinclusion-source-edition-2.md) | 72 | `declaration-track:c385000d5355fec6efb8b667c1f3546174a6b306fe38c74174797479c1ffe6b2` |
| 6 | `def` | [createsLimitFullSubcategoryInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createslimitfullsubcategoryinclusion.md) | 80 | `declaration-track:514a9f6983f746ffb64e80e6e60f013ef67282b9a57bd0b2489bd4b3917dad9a` |
| 7 | `def` | [createsColimitFullSubcategoryInclusion'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createscolimitfullsubcategoryinclusion-source-edition-2.md) | 88 | `declaration-track:afec0db20a0cbc597f97875343d07627cbc18cb4f85d0bb32668dbad347b6eb9` |
| 8 | `def` | [createsColimitFullSubcategoryInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createscolimitfullsubcategoryinclusion.md) | 96 | `declaration-track:07cbb65c23481b7464eb12c804035adcfd164eb77c98043af707d798c38e2ed6` |
| 9 | `def` | [createsLimitFullSubcategoryInclusionOfClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createslimitfullsubcategoryinclusionofclosed.md) | 104 | `declaration-track:8553f13a814b9b8bb4b350aa35d37222410d28b321612197865539fa24748782` |
| 10 | `def` | [createsLimitsOfShapeFullSubcategoryInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createslimitsofshapefullsubcategoryinclusion.md) | 111 | `declaration-track:a19d0faee4dbea71641d0f1be6962cee9cbbe87293a2b1000dff42b91d6d35a0` |
| 11 | `theorem` | [hasLimit_of_closed_under_limits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/haslimit-of-closed-under-limits.md) | 116 | `result-track:e211d123c18b666a702eb9ac561786125af34ca6a5aa52a0256de9ee60f1e91f` |
| 12 | `theorem` | [hasLimitsOfShape_of_closed_under_limits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/haslimitsofshape-of-closed-under-limits.md) | 123 | `result-track:18a9478da9410194ab7c390aa6d03b6655385085d2c6614d3af5e24348e17b4a` |
| 13 | `def` | [createsColimitFullSubcategoryInclusionOfClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createscolimitfullsubcategoryinclusionofclosed.md) | 129 | `declaration-track:fa416d671de9369d88ca1e32aaf670b1bda65c488078205dc3fe12a89ff79b9c` |
| 14 | `def` | [createsColimitsOfShapeFullSubcategoryInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/createscolimitsofshapefullsubcategoryinclusion.md) | 136 | `declaration-track:b30f9f2b3a82bf2059ce4b728a91c38ad0fbb3969cbf6d067ae767d214aadd35` |
| 15 | `theorem` | [hasColimit_of_closed_under_colimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/hascolimit-of-closed-under-colimits.md) | 141 | `result-track:9109366dde39a7c7786c06aec15fe9a1d2883976db9385331889184686aabd90` |
| 16 | `theorem` | [hasColimitsOfShape_of_closed_under_colimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFullSubcategoryNamespacedHasLimitOfClosedUnderLimits.lean/declarations/hascolimitsofshape-of-closed-under-colimits.md) | 148 | `result-track:ed300dc3eb9a49c6ca5d68b69f69eb9aabb8369d8bde4c7f1531492a624c5a50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f82f487da6824fd7ca1418e7d7df47856ae35297a75d021011eea0e251c5543 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
