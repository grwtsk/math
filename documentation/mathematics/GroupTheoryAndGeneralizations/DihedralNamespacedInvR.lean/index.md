# Dihedral Namespaced Inv R

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f132e224ed1957eadfce84e1567123d7f859633`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/DihedralNamespacedInvR.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DihedralGroup](declarations/dihedralgroup.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mul](declarations/mul.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [one](declarations/one.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [inv](declarations/inv.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [r_mul_r](declarations/r-mul-r.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [r_mul_sr](declarations/r-mul-sr.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sr_mul_r](declarations/sr-mul-r.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sr_mul_sr](declarations/sr-mul-sr.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inv_r](declarations/inv-r.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inv_sr](declarations/inv-sr.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [r_zero](declarations/r-zero.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [one_def](declarations/one-def.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [r_pow](declarations/r-pow.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [r_zpow](declarations/r-zpow.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fintypeHelper](declarations/fintypehelper.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [card](declarations/card.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nat_card](declarations/nat-card.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [r_one_pow](declarations/r-one-pow.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [r_one_zpow](declarations/r-one-zpow.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [r_one_pow_n](declarations/r-one-pow-n.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sr_mul_self](declarations/sr-mul-self.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [orderOf_sr](declarations/orderof-sr.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [orderOf_r_one](declarations/orderof-r-one.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [orderOf_r](declarations/orderof-r.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exponent](declarations/exponent.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [not_commutative](declarations/not-commutative.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [commutative_iff](declarations/commutative-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [not_isCyclic](declarations/not-iscyclic.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isCyclic_iff](declarations/iscyclic-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [oddCommuteEquiv](declarations/oddcommuteequiv.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [card_commute_odd](declarations/card-commute-odd.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [card_conjClasses_odd](declarations/card-conjclasses-odd.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b5ecd425a8d61e08028a51b62ef75ffdedde00035e8e3ad7c1a5f350d5f6c83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
