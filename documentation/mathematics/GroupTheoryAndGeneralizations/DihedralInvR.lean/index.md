# Dihedral Inv R

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3122d70d863a32297f11865c24e6501b935567af`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/DihedralInvR.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DihedralGroup](declarations/dihedralgroup.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mul](declarations/mul.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [one](declarations/one.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [inv](declarations/inv.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [r_mul_r](declarations/r-mul-r.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [r_mul_sr](declarations/r-mul-sr.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sr_mul_r](declarations/sr-mul-r.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sr_mul_sr](declarations/sr-mul-sr.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inv_r](declarations/inv-r.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inv_sr](declarations/inv-sr.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [r_zero](declarations/r-zero.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [one_def](declarations/one-def.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [r_pow](declarations/r-pow.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [r_zpow](declarations/r-zpow.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fintypeHelper](declarations/fintypehelper.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [card](declarations/card.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nat_card](declarations/nat-card.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [r_one_pow](declarations/r-one-pow.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [r_one_zpow](declarations/r-one-zpow.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [r_one_pow_n](declarations/r-one-pow-n.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sr_mul_self](declarations/sr-mul-self.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [orderOf_sr](declarations/orderof-sr.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [orderOf_r_one](declarations/orderof-r-one.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [orderOf_r](declarations/orderof-r.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exponent](declarations/exponent.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [not_commutative](declarations/not-commutative.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [commutative_iff](declarations/commutative-iff.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [not_isCyclic](declarations/not-iscyclic.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isCyclic_iff](declarations/iscyclic-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [oddCommuteEquiv](declarations/oddcommuteequiv.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [card_commute_odd](declarations/card-commute-odd.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [card_conjClasses_odd](declarations/card-conjclasses-odd.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=910afe98936a149c3ae65a9bec9c76b6834c53779346d8c866d51c9dca330efc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
