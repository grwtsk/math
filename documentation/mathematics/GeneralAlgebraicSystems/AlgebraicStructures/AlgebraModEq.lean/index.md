# Algebra Mod Eq

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed34a6d4ce7686317dda642540d628afe86e140b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraModEq.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ModEq](declarations/modeq.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [modEq_refl](declarations/modeq-refl.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [modEq_rfl](declarations/modeq-rfl.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [modEq_comm](declarations/modeq-comm.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ModEq.trans](declarations/modeq-trans.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [neg_modEq_neg](declarations/neg-modeq-neg.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [modEq_neg](declarations/modeq-neg.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [modEq_sub](declarations/modeq-sub.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [modEq_zero](declarations/modeq-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [self_modEq_zero](declarations/self-modeq-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [zsmul_modEq_zero](declarations/zsmul-modeq-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [add_zsmul_modEq](declarations/add-zsmul-modeq.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zsmul_add_modEq](declarations/zsmul-add-modeq.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [add_nsmul_modEq](declarations/add-nsmul-modeq.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nsmul_add_modEq](declarations/nsmul-add-modeq.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [add_zsmul](declarations/add-zsmul.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zsmul_add](declarations/zsmul-add.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [add_nsmul](declarations/add-nsmul.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nsmul_add](declarations/nsmul-add.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [of_zsmul](declarations/of-zsmul.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [of_nsmul](declarations/of-nsmul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [zsmul](declarations/zsmul.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nsmul](declarations/nsmul.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [zsmul_modEq_zsmul](declarations/zsmul-modeq-zsmul.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nsmul_modEq_nsmul](declarations/nsmul-modeq-nsmul.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [add_iff_left](declarations/add-iff-left.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [add_iff_right](declarations/add-iff-right.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sub_iff_left](declarations/sub-iff-left.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sub_iff_right](declarations/sub-iff-right.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [add_left](declarations/add-left.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sub_left](declarations/sub-left.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [add_right](declarations/add-right.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sub_right](declarations/sub-right.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [add_left_cancel'](declarations/add-left-cancel.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [add_right_cancel'](declarations/add-right-cancel.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sub_left_cancel'](declarations/sub-left-cancel.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sub_right_cancel'](declarations/sub-right-cancel.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [modEq_sub_iff_add_modEq'](declarations/modeq-sub-iff-add-modeq-source-edition-2.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [modEq_sub_iff_add_modEq](declarations/modeq-sub-iff-add-modeq.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [sub_modEq_iff_modEq_add'](declarations/sub-modeq-iff-modeq-add-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sub_modEq_iff_modEq_add](declarations/sub-modeq-iff-modeq-add.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sub_modEq_zero](declarations/sub-modeq-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [add_modEq_left](declarations/add-modeq-left.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [add_modEq_right](declarations/add-modeq-right.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [modEq_iff_eq_add_zsmul](declarations/modeq-iff-eq-add-zsmul.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [not_modEq_iff_ne_add_zsmul](declarations/not-modeq-iff-ne-add-zsmul.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [modEq_iff_eq_mod_zmultiples](declarations/modeq-iff-eq-mod-zmultiples.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [not_modEq_iff_ne_mod_zmultiples](declarations/not-modeq-iff-ne-mod-zmultiples.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [modEq_iff_int_modEq](declarations/modeq-iff-int-modeq.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [intCast_modEq_intCast](declarations/intcast-modeq-intcast-source-edition-2.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [intCast_modEq_intCast'](declarations/intcast-modeq-intcast.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [natCast_modEq_natCast](declarations/natcast-modeq-natcast.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [div_modEq_div](declarations/div-modeq-div.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [mul_modEq_mul_right](declarations/mul-modeq-mul-right.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [mul_modEq_mul_left](declarations/mul-modeq-mul-left.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29364c3a98b0fe26fa449bfc3ab8cf5afb9729139ee250415f401fa528364a12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
