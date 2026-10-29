# Notion Join

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aff7a958f528e6844fb32640120adac61f596b4e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/NotionJoin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [DeterminesAt](declarations/determinesat.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [DeterminesPredicateAt](declarations/determinespredicateat.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [determinesPredicate_iff](declarations/determinespredicate-iff.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [determines_iff_descendsThrough](declarations/determines-iff-descendsthrough.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [RefinesAt](declarations/refinesat.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [refines_refl](declarations/refines-refl.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [refines_trans](declarations/refines-trans.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [determines_of_refines](declarations/determines-of-refines.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [determinesPredicate_of_refines](declarations/determinespredicate-of-refines.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [determines_of_budget_le](declarations/determines-of-budget-le.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [semantic_determines_of_finite](declarations/semantic-determines-of-finite.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [refines_of_tests_subset](declarations/refines-of-tests-subset.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [join](declarations/join.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [join_sourceIdentity](declarations/join-sourceidentity.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [equivalent_join_iff](declarations/equivalent-join-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [join_refines_first](declarations/join-refines-first.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [join_refines_second](declarations/join-refines-second.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [refines_join_iff](declarations/refines-join-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [join_equivalent_of_both](declarations/join-equivalent-of-both.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [SynergisticFor](declarations/synergisticfor.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [synergistic_join_determines](declarations/synergistic-join-determines.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [synergistic_first_not_determines](declarations/synergistic-first-not-determines.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [synergistic_second_not_determines](declarations/synergistic-second-not-determines.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coordinatePolicy](declarations/coordinatepolicy.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [firstCoordinates](declarations/firstcoordinates.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [secondCoordinates](declarations/secondcoordinates.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [emptyCoordinates](declarations/emptycoordinates.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [common_policy](declarations/common-policy.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [jointCoordinates](declarations/jointcoordinates.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [first_refines_empty](declarations/first-refines-empty.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [joint_refines_empty](declarations/joint-refines-empty.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [first_loses_pair](declarations/first-loses-pair.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [second_loses_pair](declarations/second-loses-pair.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [first_not_determines_identity](declarations/first-not-determines-identity.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [second_not_determines_identity](declarations/second-not-determines-identity.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [joint_determines_identity](declarations/joint-determines-identity.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [identity_synergy](declarations/identity-synergy.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [same_pair_remains_equivalent](declarations/same-pair-remains-equivalent.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1692ab4f85721b68f463c478cd690cc27f220350b475aeaf5dbd0544d96429f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
