# Minor Order Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9af4a4d121d4d1fae8853a526e023badc464553`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/MinorOrderNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinor](declarations/isminor.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [contract_delete_isMinor](declarations/contract-delete-isminor.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsMinor.exists_eq_contract_delete_disjoint](declarations/isminor-exists-eq-contract-delete-disjoint.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [IsStrictMinor](declarations/isstrictminor.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsMinor.subset](declarations/isminor-subset.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsMinor.refl](declarations/isminor-refl.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsMinor.trans](declarations/isminor-trans.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsMinor.eq_of_ground_subset](declarations/isminor-eq-of-ground-subset.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsMinor.antisymm](declarations/isminor-antisymm.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsMinor.le](declarations/isminor-le.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsStrictMinor.lt](declarations/isstrictminor-lt.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_eq_isMinor](declarations/le-eq-isminor.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [lt_eq_isStrictMinor](declarations/lt-eq-isstrictminor.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isStrictMinor_iff_isMinor_ne](declarations/isstrictminor-iff-isminor-ne.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsStrictMinor.ne](declarations/isstrictminor-ne.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [isStrictMinor_irrefl](declarations/isstrictminor-irrefl.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsStrictMinor.isMinor](declarations/isstrictminor-isminor.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsStrictMinor.not_isMinor](declarations/isstrictminor-not-isminor.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsStrictMinor.ssubset](declarations/isstrictminor-ssubset.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isStrictMinor_iff_isMinor_ssubset](declarations/isstrictminor-iff-isminor-ssubset.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsStrictMinor.trans_isMinor](declarations/isstrictminor-trans-isminor.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsMinor.trans_isStrictMinor](declarations/isminor-trans-isstrictminor.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsStrictMinor.trans](declarations/isstrictminor-trans.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Indep.of_isMinor](declarations/indep-of-isminor.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsNonloop.of_isMinor](declarations/isnonloop-of-isminor.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Dep.of_isMinor](declarations/dep-of-isminor.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsLoop.of_isMinor](declarations/isloop-of-isminor.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65194305555c98281a1ce041d1b4763541dd1bebd8370e35be89501e3729e783 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
