# Notion Join Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec9637454cab67a51953364bd800ea3fb9a7375f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/NotionJoinNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [DeterminesAt](declarations/determinesat.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [DeterminesPredicateAt](declarations/determinespredicateat.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [determinesPredicate_iff](declarations/determinespredicate-iff.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [determines_iff_descendsThrough](declarations/determines-iff-descendsthrough.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [RefinesAt](declarations/refinesat.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [refines_refl](declarations/refines-refl.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [refines_trans](declarations/refines-trans.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [determines_of_refines](declarations/determines-of-refines.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [determinesPredicate_of_refines](declarations/determinespredicate-of-refines.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [determines_of_budget_le](declarations/determines-of-budget-le.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [semantic_determines_of_finite](declarations/semantic-determines-of-finite.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [refines_of_tests_subset](declarations/refines-of-tests-subset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [join](declarations/join.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [join_sourceIdentity](declarations/join-sourceidentity.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [equivalent_join_iff](declarations/equivalent-join-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [join_refines_first](declarations/join-refines-first.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [join_refines_second](declarations/join-refines-second.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [refines_join_iff](declarations/refines-join-iff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [join_equivalent_of_both](declarations/join-equivalent-of-both.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [SynergisticFor](declarations/synergisticfor.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [synergistic_join_determines](declarations/synergistic-join-determines.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [synergistic_first_not_determines](declarations/synergistic-first-not-determines.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [synergistic_second_not_determines](declarations/synergistic-second-not-determines.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coordinatePolicy](declarations/coordinatepolicy.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [firstCoordinates](declarations/firstcoordinates.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [secondCoordinates](declarations/secondcoordinates.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [emptyCoordinates](declarations/emptycoordinates.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [common_policy](declarations/common-policy.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [jointCoordinates](declarations/jointcoordinates.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [first_refines_empty](declarations/first-refines-empty.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [joint_refines_empty](declarations/joint-refines-empty.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [first_loses_pair](declarations/first-loses-pair.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [second_loses_pair](declarations/second-loses-pair.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [first_not_determines_identity](declarations/first-not-determines-identity.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [second_not_determines_identity](declarations/second-not-determines-identity.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [joint_determines_identity](declarations/joint-determines-identity.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [identity_synergy](declarations/identity-synergy.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [same_pair_remains_equivalent](declarations/same-pair-remains-equivalent.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=260b5dda1b6049a906fcbdb39cfe8b148a895e142aa7765308fb223c4ce599cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
