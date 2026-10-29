# Group ULift

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb72ebf8fc8289679ed0a2dc671ca50d1411643`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupULift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [one](declarations/one.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [one_down](declarations/one-down.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [mul](declarations/mul.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mul_down](declarations/mul-down.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [div](declarations/div.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [div_down](declarations/div-down.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [inv](declarations/inv.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inv_down](declarations/inv-down.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [smul](declarations/smul.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul_down](declarations/smul-down.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [pow](declarations/pow.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pow_down](declarations/pow-down.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [_root_.MulEquiv.ulift](declarations/root-mulequiv-ulift.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [semigroup](declarations/semigroup.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [addSemigroup](declarations/addsemigroup.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [commSemigroup](declarations/commsemigroup.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [mulOneClass](declarations/muloneclass.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [mulZeroOneClass](declarations/mulzerooneclass.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [monoid](declarations/monoid.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [commMonoid](declarations/commmonoid.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [natCast](declarations/natcast.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [intCast](declarations/intcast.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [up_natCast](declarations/up-natcast.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [up_intCast](declarations/up-intcast.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [down_natCast](declarations/down-natcast.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [down_intCast](declarations/down-intcast.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [addMonoidWithOne](declarations/addmonoidwithone.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [addCommMonoidWithOne](declarations/addcommmonoidwithone.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [monoidWithZero](declarations/monoidwithzero.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [commMonoidWithZero](declarations/commmonoidwithzero.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [divInvMonoid](declarations/divinvmonoid.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [group](declarations/group.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [commGroup](declarations/commgroup.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [addGroupWithOne](declarations/addgroupwithone.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [addCommGroupWithOne](declarations/addcommgroupwithone.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [groupWithZero](declarations/groupwithzero.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [commGroupWithZero](declarations/commgroupwithzero.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [leftCancelSemigroup](declarations/leftcancelsemigroup.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [rightCancelSemigroup](declarations/rightcancelsemigroup.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [leftCancelMonoid](declarations/leftcancelmonoid.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [rightCancelMonoid](declarations/rightcancelmonoid.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [cancelMonoid](declarations/cancelmonoid.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [cancelCommMonoid](declarations/cancelcommmonoid.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [nontrivial](declarations/nontrivial.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4365cc7de65da887dcaa6bf6f146f853e1029101fdee94060565301150fb3f95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
