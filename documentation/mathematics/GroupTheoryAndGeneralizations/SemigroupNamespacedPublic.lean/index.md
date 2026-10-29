# Semigroup Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87259051f70294b140fdc6f5d17b6146f04b4abc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SemigroupNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsLeftCancelMul](declarations/isleftcancelmul.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsRightCancelMul](declarations/isrightcancelmul.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsCancelMul](declarations/iscancelmul.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [IsLeftCancelAdd](declarations/isleftcanceladd.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [IsRightCancelAdd](declarations/isrightcanceladd.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [IsCancelAdd](declarations/iscanceladd.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isCancelMul_iff_forall_isRegular](declarations/iscancelmul-iff-forall-isregular.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsLeftRegular.all](declarations/isleftregular-all.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsRightRegular.all](declarations/isrightregular-all.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsRegular.all](declarations/isregular-all.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_left_cancel](declarations/mul-left-cancel.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mul_left_cancel_iff](declarations/mul-left-cancel-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_right_injective](declarations/mul-right-injective.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_right_inj](declarations/mul-right-inj.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_ne_mul_right](declarations/mul-ne-mul-right.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_right_cancel](declarations/mul-right-cancel.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_right_cancel_iff](declarations/mul-right-cancel-iff.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_left_injective](declarations/mul-left-injective.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_left_inj](declarations/mul-left-inj.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_ne_mul_left](declarations/mul-ne-mul-left.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `class` | [Semigroup](declarations/semigroup.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [AddSemigroup](declarations/addsemigroup.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [IsAddCommutative](declarations/isaddcommutative.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [IsMulCommutative](declarations/ismulcommutative.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isMulCommutative_iff](declarations/ismulcommutative-iff.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mul_comm'](declarations/mul-comm-source-edition-2.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `class` | [AddCommMagma](declarations/addcommmagma.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [CommMagma](declarations/commmagma.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [CommSemigroup](declarations/commsemigroup.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [AddCommSemigroup](declarations/addcommsemigroup.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_comm](declarations/mul-comm.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [CommMagma.to_isCommutative](declarations/commmagma-to-iscommutative.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isLeftRegular_iff_isRegular](declarations/isleftregular-iff-isregular.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isRightRegular_iff_isRegular](declarations/isrightregular-iff-isregular.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [CommMagma.IsRightCancelMul.toIsLeftCancelMul](declarations/commmagma-isrightcancelmul-toisleftcancelmul.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [CommMagma.IsLeftCancelMul.toIsRightCancelMul](declarations/commmagma-isleftcancelmul-toisrightcancelmul.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [CommMagma.IsLeftCancelMul.toIsCancelMul](declarations/commmagma-isleftcancelmul-toiscancelmul.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [CommMagma.IsRightCancelMul.toIsCancelMul](declarations/commmagma-isrightcancelmul-toiscancelmul.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [LeftCancelSemigroup](declarations/leftcancelsemigroup.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `class` | [AddLeftCancelSemigroup](declarations/addleftcancelsemigroup.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `class` | [RightCancelSemigroup](declarations/rightcancelsemigroup.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `class` | [AddRightCancelSemigroup](declarations/addrightcancelsemigroup.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd0a6d5ff936eb1ea7cd032a3145dd71a283d148a839f7473c42e9bbf672d093 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
