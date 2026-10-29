# Div Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6791c525896d2e933233fc0a0c59342323f54143`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/DivNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [FloorDiv](declarations/floordiv.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [CeilDiv](declarations/ceildiv.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [gc_floorDiv_smul](declarations/gc-floordiv-smul.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [le_floorDiv_iff_smul_le](declarations/le-floordiv-iff-smul-le.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [floorDiv_of_nonpos](declarations/floordiv-of-nonpos.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [floorDiv_zero](declarations/floordiv-zero.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [zero_floorDiv](declarations/zero-floordiv.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [smul_floorDiv_le](declarations/smul-floordiv-le.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [gc_smul_ceilDiv](declarations/gc-smul-ceildiv.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ceilDiv_le_iff_le_smul](declarations/ceildiv-le-iff-le-smul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ceilDiv_of_nonpos](declarations/ceildiv-of-nonpos.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [ceilDiv_zero](declarations/ceildiv-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [zero_ceilDiv](declarations/zero-ceildiv.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [le_smul_ceilDiv](declarations/le-smul-ceildiv.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [floorDiv_le_ceilDiv](declarations/floordiv-le-ceildiv.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [floorDiv_one](declarations/floordiv-one.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [smul_floorDiv](declarations/smul-floordiv.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [ceilDiv_one](declarations/ceildiv-one.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [smul_ceilDiv](declarations/smul-ceildiv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [gc_floorDiv_mul](declarations/gc-floordiv-mul.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [le_floorDiv_iff_mul_le](declarations/le-floordiv-iff-mul-le.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [gc_mul_ceilDiv](declarations/gc-mul-ceildiv.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [ceilDiv_le_iff_le_mul](declarations/ceildiv-le-iff-le-mul.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instFloorDiv](declarations/instfloordiv-source-edition-3.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instCeilDiv](declarations/instceildiv-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [floorDiv_eq_div](declarations/floordiv-eq-div.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [ceilDiv_eq_add_pred_div](declarations/ceildiv-eq-add-pred-div.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instFloorDiv](declarations/instfloordiv-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [floorDiv_def](declarations/floordiv-def-source-edition-2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [floorDiv_apply](declarations/floordiv-apply.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instCeilDiv](declarations/instceildiv.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ceilDiv_def](declarations/ceildiv-def-source-edition-2.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ceilDiv_apply](declarations/ceildiv-apply.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instFloorDiv](declarations/instfloordiv.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [floorDiv_def](declarations/floordiv-def.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [coe_floorDiv](declarations/coe-floordiv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [floorDiv_apply](declarations/floordiv-apply-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [support_floorDiv_subset](declarations/support-floordiv-subset.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instCeilDiv](declarations/instceildiv-source-edition-3.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [ceilDiv_def](declarations/ceildiv-def.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [coe_ceilDiv_def](declarations/coe-ceildiv-def.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [ceilDiv_apply](declarations/ceildiv-apply-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [support_ceilDiv_subset](declarations/support-ceildiv-subset.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `example` | [(anonymous)](declarations/example.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66cafae735dde22d42f60c17c89eeb83c778da6e4f378e7f2d9cefbff0fc7af1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
