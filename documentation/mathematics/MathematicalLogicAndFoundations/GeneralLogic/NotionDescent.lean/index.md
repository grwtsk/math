# Notion Descent

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d28b1b6a52afd6d8e95974a7c122eb11309e77`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/NotionDescent.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [DeterminesAt](declarations/determinesat.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [InformationSufficientAt](declarations/informationsufficientat.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [DeterminesPredicateAt](declarations/determinespredicateat.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [predicate_determines_iff](declarations/predicate-determines-iff.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [notionProjection](declarations/notionprojection.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [notionProjection_eq_iff](declarations/notionprojection-eq-iff.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [determines_iff_descendsThrough](declarations/determines-iff-descendsthrough.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [determinesPredicate_iff_descendsThrough](declarations/determinespredicate-iff-descendsthrough.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [notionTargetLift](declarations/notiontargetlift.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [notionTargetLift_projection](declarations/notiontargetlift-projection.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [determines_of_quotient_factorization](declarations/determines-of-quotient-factorization.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [notionTargetLift_unique](declarations/notiontargetlift-unique.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [determines_iff_unique_quotient_factorization](declarations/determines-iff-unique-quotient-factorization.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [determines_of_budget_le](declarations/determines-of-budget-le.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [predicate_determines_of_budget_le](declarations/predicate-determines-of-budget-le.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [budgetTransition](declarations/budgettransition.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [budgetTransition_projection](declarations/budgettransition-projection.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [budgetTransition_id](declarations/budgettransition-id.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [budgetTransition_comp](declarations/budgettransition-comp.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [InformationRadius](declarations/informationradius.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [informationRadius_determines](declarations/informationradius-determines.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [informationRadius_minimal](declarations/informationradius-minimal.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [informationRadius_le](declarations/informationradius-le.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [determines_iff_informationRadius_le](declarations/determines-iff-informationradius-le.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [vectorPolicy](declarations/vectorpolicy.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [equivalent_at_zero](declarations/equivalent-at-zero.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [identity_determined_at_one](declarations/identity-determined-at-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [identity_determined_at_two](declarations/identity-determined-at-two.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [identity_not_determined_at_zero](declarations/identity-not-determined-at-zero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [budget_equivalence_does_not_reverse](declarations/budget-equivalence-does-not-reverse.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7bfe6cc613ad0f11ede12b0823e1b9b9d3f5cb8704d112b585c55a6bb4bd5d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
