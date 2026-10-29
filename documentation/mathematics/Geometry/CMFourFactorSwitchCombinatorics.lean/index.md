# CMFour Factor Switch Combinatorics

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99c86b12b39260befa9f58065c249b55ec4a5188`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/CMFourFactorSwitchCombinatorics.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PosNegMismatch](declarations/posnegmismatch.md) | 30 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [NegPosMismatch](declarations/negposmismatch.md) | 34 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 37 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 40 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `def` | [mismatchIndicator](declarations/mismatchindicator.md) | 45 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [sub_eq_two_mul_mismatchIndicator](declarations/sub-eq-two-mul-mismatchindicator.md) | 52 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [posNegCount](declarations/posnegcount.md) | 63 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [negPosCount](declarations/negposcount.md) | 66 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [sum_mismatchIndicator_eq_count_sub_count](declarations/sum-mismatchindicator-eq-count-sub-count.md) | 71 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [mismatch_card_eq_of_sum_eq](declarations/mismatch-card-eq-of-sum-eq.md) | 81 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [mismatch_fintype_card_eq_of_sum_eq](declarations/mismatch-fintype-card-eq-of-sum-eq.md) | 106 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `def` | [mismatchPairing](declarations/mismatchpairing.md) | 118 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `def` | [switchPair](declarations/switchpair.md) | 128 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [sum_switchPair](declarations/sum-switchpair.md) | 133 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [switchPair_corrects_mismatch_pair](declarations/switchpair-corrects-mismatch-pair.md) | 152 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `def` | [IsOddMatrix](declarations/isoddmatrix.md) | 174 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `def` | [switchConjugatePair](declarations/switchconjugatepair.md) | 182 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [switchConjugatePair_eq_of_ne](declarations/switchconjugatepair-eq-of-ne.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [switchConjugatePair_odd](declarations/switchconjugatepair-odd.md) | 199 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [sum_switchConjugatePair](declarations/sum-switchconjugatepair.md) | 223 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [switchConjugatePair_isSign](declarations/switchconjugatepair-issign.md) | 241 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `def` | [rowMismatch](declarations/rowmismatch.md) | 258 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `def` | [columnMismatchCount](declarations/columnmismatchcount.md) | 262 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [rowMismatch_eq_one_of_posNeg](declarations/rowmismatch-eq-one-of-posneg.md) | 266 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [rowMismatch_eq_one_of_negPos](declarations/rowmismatch-eq-one-of-negpos.md) | 272 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [rowMismatch_switchPair_le](declarations/rowmismatch-switchpair-le.md) | 280 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [columnMismatchCount_switchPair_lt](declarations/columnmismatchcount-switchpair-lt.md) | 304 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [columnMismatchCount_switchConjugatePair_lt](declarations/columnmismatchcount-switchconjugatepair-lt.md) | 321 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `theorem` | [columnMismatchCount_switchConjugatePair_eq_of_ne](declarations/columnmismatchcount-switchconjugatepair-eq-of-ne.md) | 337 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [exists_opposite_mismatch_pair](declarations/exists-opposite-mismatch-pair.md) | 351 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `inductive` | [PairedColumnReach](declarations/pairedcolumnreach.md) | 385 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [exists_pairedColumnReach_corrects](declarations/exists-pairedcolumnreach-corrects.md) | 399 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [switchConjugatePair_corrects_selected](declarations/switchconjugatepair-corrects-selected.md) | 455 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [switchConjugatePair_corrects_conjugate](declarations/switchconjugatepair-corrects-conjugate.md) | 469 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `def` | [oddSignRowOfMatrix](declarations/oddsignrowofmatrix.md) | 486 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [switchConjugatePair_selectedRows_balance](declarations/switchconjugatepair-selectedrows-balance.md) | 497 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [atomicSwitch_fourBalance](declarations/atomicswitch-fourbalance.md) | 516 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [switchConjugatePair_row_eq_of_ne](declarations/switchconjugatepair-row-eq-of-ne.md) | 550 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [switchConjugatePair_changedRow_subset](declarations/switchconjugatepair-changedrow-subset.md) | 564 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [unchangedRow_eq](declarations/unchangedrow-eq.md) | 579 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [switchConjugatePair_preserves_other_column](declarations/switchconjugatepair-preserves-other-column.md) | 589 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `theorem` | [columnMismatchCount_conj_eq](declarations/columnmismatchcount-conj-eq.md) | 604 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `def` | [matrixMismatchCount](declarations/matrixmismatchcount.md) | 617 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `theorem` | [matrixMismatchCount_switchConjugatePair_lt](declarations/matrixmismatchcount-switchconjugatepair-lt.md) | 623 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `theorem` | [conj_ne_self_of_row](declarations/conj-ne-self-of-row.md) | 658 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `inductive` | [PairedMatrixReach](declarations/pairedmatrixreach.md) | 672 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d43f3dd5af38f4f95c97f278462ff8afda04549e4603e447c947744cfca4f307 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean","GRWTSK/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
