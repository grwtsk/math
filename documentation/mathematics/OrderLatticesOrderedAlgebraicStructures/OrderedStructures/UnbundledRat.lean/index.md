# Unbundled Rat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bf25cf9a14d901c7036251fe8946741cd79461f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledRat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [divInt_nonneg_iff_of_pos_right](declarations/divint-nonneg-iff-of-pos-right.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [divInt_nonneg](declarations/divint-nonneg.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mkRat_nonneg](declarations/mkrat-nonneg.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ofScientific_nonneg](declarations/ofscientific-nonneg.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [_root_.NNRatCast.toOfScientific](declarations/root-nnratcast-toofscientific.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [_root_.NNRat.cast_ofScientific](declarations/root-nnrat-cast-ofscientific.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [add_nonneg](declarations/add-nonneg.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mul_nonneg](declarations/mul-nonneg.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_le](declarations/not-le.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [not_lt](declarations/not-lt.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lt_iff](declarations/lt-iff.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_iff](declarations/le-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_iff_sub_nonneg](declarations/le-iff-sub-nonneg.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [divInt_le_divInt](declarations/divint-le-divint.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [le_total](declarations/le-total.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [linearOrder](declarations/linearorder.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instDistribLattice](declarations/instdistriblattice.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instLattice](declarations/instlattice.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instSemilatticeInf](declarations/instsemilatticeinf.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instSemilatticeSup](declarations/instsemilatticesup.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instInf](declarations/instinf.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instSup](declarations/instsup.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instPreorder](declarations/instpreorder.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [le_def](declarations/le-def.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [lt_def](declarations/lt-def.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [add_le_add_left](declarations/add-le-add-left.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [num_nonpos](declarations/num-nonpos.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [num_pos](declarations/num-pos.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [num_neg](declarations/num-neg.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [div_lt_div_iff_mul_lt_mul](declarations/div-lt-div-iff-mul-lt-mul.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lt_one_iff_num_lt_denom](declarations/lt-one-iff-num-lt-denom.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [abs_def](declarations/abs-def.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=131602067117338dfd238a798dd6a64cfb1d514139ce467e950d0192031f9175 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Rat/Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
