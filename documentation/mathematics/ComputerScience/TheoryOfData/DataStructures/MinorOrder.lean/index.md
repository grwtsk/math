# Minor Order

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant0ffbf6a8a1c225f9d0bb8c9c62dbf4a0dca9d2cd71989ea5eec4c57cad14c12b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `886517050237d0d11fd27de10bcc1e9b098a88c8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/MinorOrder.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinor](declarations/isminor.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [contract_delete_isMinor](declarations/contract-delete-isminor.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsMinor.exists_eq_contract_delete_disjoint](declarations/isminor-exists-eq-contract-delete-disjoint.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [IsStrictMinor](declarations/isstrictminor.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsMinor.subset](declarations/isminor-subset.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsMinor.refl](declarations/isminor-refl.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsMinor.trans](declarations/isminor-trans.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsMinor.eq_of_ground_subset](declarations/isminor-eq-of-ground-subset.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsMinor.antisymm](declarations/isminor-antisymm.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsMinor.le](declarations/isminor-le.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsStrictMinor.lt](declarations/isstrictminor-lt.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_eq_isMinor](declarations/le-eq-isminor.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [lt_eq_isStrictMinor](declarations/lt-eq-isstrictminor.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isStrictMinor_iff_isMinor_ne](declarations/isstrictminor-iff-isminor-ne.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsStrictMinor.ne](declarations/isstrictminor-ne.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [isStrictMinor_irrefl](declarations/isstrictminor-irrefl.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsStrictMinor.isMinor](declarations/isstrictminor-isminor.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsStrictMinor.not_isMinor](declarations/isstrictminor-not-isminor.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsStrictMinor.ssubset](declarations/isstrictminor-ssubset.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isStrictMinor_iff_isMinor_ssubset](declarations/isstrictminor-iff-isminor-ssubset.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsStrictMinor.trans_isMinor](declarations/isstrictminor-trans-isminor.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsMinor.trans_isStrictMinor](declarations/isminor-trans-isstrictminor.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsStrictMinor.trans](declarations/isstrictminor-trans.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Indep.of_isMinor](declarations/indep-of-isminor.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsNonloop.of_isMinor](declarations/isnonloop-of-isminor.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Dep.of_isMinor](declarations/dep-of-isminor.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsLoop.of_isMinor](declarations/isloop-of-isminor.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55901dcc1fa680f1878cec071d11b7ee0dc83051772cbc14e82c97418b9c6345 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant0ffbf6a8a1c225f9d0bb8c9c62dbf4a0dca9d2cd71989ea5eec4c57cad14c12b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
