# Safe Shift Quartic Channel Packing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76dd7e0b9ed14c0c013859a12283af757677df68`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SafeShiftQuarticChannelPacking.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [safeShiftCenter](declarations/safeshiftcenter.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [safeShiftCenter_re](declarations/safeshiftcenter-re.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [safeShiftCenter_im](declarations/safeshiftcenter-im.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [safeCenterPrimePowerTerm](declarations/safecenterprimepowerterm.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [safeEvenDefectPrimePowerTerm](declarations/safeevendefectprimepowerterm.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [safeShiftPlus_eq_center_of_zeroDefect](declarations/safeshiftplus-eq-center-of-zerodefect.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [safeShiftMinus_eq_center_of_zeroDefect](declarations/safeshiftminus-eq-center-of-zerodefect.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect](declarations/safeevendefectprimepowerterm-eq-zero-of-zerodefect.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [natValue_pos](declarations/natvalue-pos.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [natValue_ne_zero](declarations/natvalue-ne-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vonMangoldtDirichletTerm_im_eq_zero_of_real](declarations/vonmangoldtdirichletterm-im-eq-zero-of-real.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [safePlusPrimePowerTerm_im_eq_zero_of_im_zero](declarations/safeplusprimepowerterm-im-eq-zero-of-im-zero.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [safeMinusPrimePowerTerm_im_eq_zero_of_im_zero](declarations/safeminusprimepowerterm-im-eq-zero-of-im-zero.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [safeOddPrimePowerTerm_im_eq_zero_of_im_zero](declarations/safeoddprimepowerterm-im-eq-zero-of-im-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [safeAxialPoint](declarations/safeaxialpoint.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [safeTransversePoint](declarations/safetransversepoint.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [safeAxialPointFamily](declarations/safeaxialpointfamily.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [safeTransversePointFamily](declarations/safetransversepointfamily.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [safeAxialPackingSequence](declarations/safeaxialpackingsequence.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [safeTransversePackingSequence](declarations/safetransversepackingsequence.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [safeAxialPacking_valueAt_nonnegative](declarations/safeaxialpacking-valueat-nonnegative.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [safeTransversePacking_valueAt_nonnegative](declarations/safetransversepacking-valueat-nonnegative.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [safeAxialPacking_valueAt_eq_zero_of_zeroDefect](declarations/safeaxialpacking-valueat-eq-zero-of-zerodefect.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [safeTransversePacking_valueAt_eq_zero_of_zeroDefect](declarations/safetransversepacking-valueat-eq-zero-of-zerodefect.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [safeTransversePacking_valueAt_eq_zero_of_im_zero](declarations/safetransversepacking-valueat-eq-zero-of-im-zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [safeQuarticStructuredPackingValue](declarations/safequarticstructuredpackingvalue.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [safeQuarticStructuredPackingValue_nonnegative](declarations/safequarticstructuredpackingvalue-nonnegative.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [safeQuarticStructuredPackingValue_eq_zero_of_zeroDefect](declarations/safequarticstructuredpackingvalue-eq-zero-of-zerodefect.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [safeQuarticStructuredPackingValue_zero_height](declarations/safequarticstructuredpackingvalue-zero-height.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7de67bbb2d02d1ac1986cf70e875bc8efc7112c0de395f684b4ea89d11b7bcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
