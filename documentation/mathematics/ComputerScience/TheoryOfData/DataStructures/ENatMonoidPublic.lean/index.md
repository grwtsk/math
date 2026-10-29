# ENat Monoid Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c05203915d4f735c0fc83dbb174a65040c5a05bd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ENatMonoidPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [natCast_mul](declarations/natcast-mul.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mul_top](declarations/mul-top-source-edition-2.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [top_mul](declarations/top-mul.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mul_top'](declarations/mul-top.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [top_mul'](declarations/top-mul-source-edition-2.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [top_pow](declarations/top-pow.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [pow_eq_top_iff](declarations/pow-eq-top-iff.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [pow_ne_top_iff](declarations/pow-ne-top-iff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [pow_lt_top_iff](declarations/pow-lt-top-iff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eq_top_of_pow](declarations/eq-top-of-pow.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lift_add](declarations/lift-add.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toNatHom](declarations/tonathom.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [coe_toNatHom](declarations/coe-tonathom.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toNatHom_apply](declarations/tonathom-apply.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toNat_mul](declarations/tonat-mul.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [add_one_pos](declarations/add-one-pos.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [natCast_lt_succ](declarations/natcast-lt-succ.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [le_sub_of_add_le_left](declarations/le-sub-of-add-le-left.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [le_sub_of_add_le_right](declarations/le-sub-of-add-le-right.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [lt_add_left](declarations/lt-add-left.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [sub_sub_cancel](declarations/sub-sub-cancel.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [add_left_injective_of_ne_top](declarations/add-left-injective-of-ne-top.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [add_right_injective_of_ne_top](declarations/add-right-injective-of-ne-top.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mul_right_strictMono](declarations/mul-right-strictmono.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mul_left_strictMono](declarations/mul-left-strictmono.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mul_le_mul_left_iff](declarations/mul-le-mul-left-iff.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mul_le_mul_right_iff](declarations/mul-le-mul-right-iff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mul_le_mul_of_le_right](declarations/mul-le-mul-of-le-right.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [self_le_mul_right](declarations/self-le-mul-right.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [self_le_mul_left](declarations/self-le-mul-left.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [add_one_natCast_le_withTop_of_lt](declarations/add-one-natcast-le-withtop-of-lt.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [coe_top_add_one](declarations/coe-top-add-one.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [add_one_eq_coe_top_iff](declarations/add-one-eq-coe-top-iff.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [natCast_ne_coe_top](declarations/natcast-ne-coe-top.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [one_le_iff_ne_zero_withTop](declarations/one-le-iff-ne-zero-withtop.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [natCast_le_of_coe_top_le_withTop](declarations/natcast-le-of-coe-top-le-withtop.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [natCast_lt_of_coe_top_le_withTop](declarations/natcast-lt-of-coe-top-le-withtop.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [map_natCast_nonneg](declarations/map-natcast-nonneg.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [map_natCast_strictMono](declarations/map-natcast-strictmono.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [map_natCast_injective](declarations/map-natcast-injective.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [map_natCast_inj](declarations/map-natcast-inj.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [map_natCast_eq_zero](declarations/map-natcast-eq-zero.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [_root_.AddMonoidHom.ENatMap](declarations/root-addmonoidhom-enatmap.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [_root_.MonoidWithZeroHom.ENatMap](declarations/root-monoidwithzerohom-enatmap.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [_root_.RingHom.ENatMap](declarations/root-ringhom-enatmap.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [map_natCast_mul](declarations/map-natcast-mul.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [add_natCast_cancel](declarations/add-natcast-cancel.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [add_one_cancel](declarations/add-one-cancel.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [add_ofNat_cancel](declarations/add-ofnat-cancel.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [natCast_add_cancel](declarations/natcast-add-cancel.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [one_add_cancel](declarations/one-add-cancel.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [ofNat_add_cancel](declarations/ofnat-add-cancel.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [add_le_add_natCast_right_iff](declarations/add-le-add-natcast-right-iff.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [add_le_add_one_right_iff](declarations/add-le-add-one-right-iff.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [add_le_add_natCast_left_iff](declarations/add-le-add-natcast-left-iff.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [add_le_add_one_left_iff](declarations/add-le-add-one-left-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be0565d1c7d55f0fd63a8cdc78ad6a078d087064b8b2da8b56f09d5a1dfa01e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
