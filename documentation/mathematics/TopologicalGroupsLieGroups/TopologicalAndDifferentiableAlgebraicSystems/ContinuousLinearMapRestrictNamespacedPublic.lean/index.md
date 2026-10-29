# Continuous Linear Map Restrict Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `481abdc65a17ad0e2d80473e215f9ced1f7c97b9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapRestrictNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [subtypeL](declarations/subtypel.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toLinearMap_subtypeL](declarations/tolinearmap-subtypel.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_subtypeL](declarations/coe-subtypel.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [subtypeL_apply](declarations/subtypel-apply.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isEmbedding_subtype](declarations/isembedding-subtype.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isEmbedding_subtypeL](declarations/isembedding-subtypel.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isClosedEmbedding_subtype](declarations/isclosedembedding-subtype.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isClosedEmbedding_subtypeL](declarations/isclosedembedding-subtypel.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [range_subtypeL](declarations/range-subtypel.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ker_subtypeL](declarations/ker-subtypel.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [domRestrict](declarations/domrestrict.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toLinearMap_domRestrict](declarations/tolinearmap-domrestrict.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [coe_domRestrict](declarations/coe-domrestrict.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [codRestrict](declarations/codrestrict.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toLinearMap_codRestrict](declarations/tolinearmap-codrestrict.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_codRestrict](declarations/coe-codrestrict.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_codRestrict_apply](declarations/coe-codrestrict-apply.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ker_codRestrict](declarations/ker-codrestrict.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [subtypeL_comp_codRestrict](declarations/subtypel-comp-codrestrict.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [domRestrict_comp_codRestrict](declarations/domrestrict-comp-codrestrict.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [rangeRestrict](declarations/rangerestrict.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toLinearMap_rangeRestrict](declarations/tolinearmap-rangerestrict.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_rangeRestrict](declarations/coe-rangerestrict.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [restrict](declarations/restrict.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toLinearMap_restrict](declarations/tolinearmap-restrict.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_restrict_apply](declarations/coe-restrict-apply.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [restrict_comp](declarations/restrict-comp.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [subtypeL_comp_restrict](declarations/subtypel-comp-restrict.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [restrict_eq_codRestrict_domRestrict](declarations/restrict-eq-codrestrict-domrestrict.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [restrict_eq_domRestrict_codRestrict](declarations/restrict-eq-domrestrict-codrestrict.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [projKerOfRightInverse](declarations/projkerofrightinverse.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_projKerOfRightInverse_apply](declarations/coe-projkerofrightinverse-apply.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [projKerOfRightInverse_apply_idem](declarations/projkerofrightinverse-apply-idem.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [projKerOfRightInverse_comp_inv](declarations/projkerofrightinverse-comp-inv.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b896df1e8516cdaa6934166737c86eb7148586add2b40ea54bb3d2ed4f2cd7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
