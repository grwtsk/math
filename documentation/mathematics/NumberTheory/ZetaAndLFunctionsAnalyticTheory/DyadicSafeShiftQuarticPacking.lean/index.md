# Dyadic Safe Shift Quartic Packing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41227433d053477cc82cf2a39b7046424e78eeec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftQuarticPacking.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [safeDyadicQuarticRadius](declarations/safedyadicquarticradius.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [safeDyadicQuarticRadius_nonnegative](declarations/safedyadicquarticradius-nonnegative.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [safeShiftPlus_norm_le_quarticRadius](declarations/safeshiftplus-norm-le-quarticradius.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [safeShiftMinus_norm_le_quarticRadius](declarations/safeshiftminus-norm-le-quarticradius.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [safeShiftCenter_norm_le_quarticRadius](declarations/safeshiftcenter-norm-le-quarticradius.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [safeDyadicQuarticBlockEnvelope](declarations/safedyadicquarticblockenvelope.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [safeDyadicQuarticBlockEnvelope_nonnegative](declarations/safedyadicquarticblockenvelope-nonnegative.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [safeDyadicBlock_norm_le_quarticEnvelope](declarations/safedyadicblock-norm-le-quarticenvelope.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [safeCenterDyadicBlock](declarations/safecenterdyadicblock.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [safeCenterDyadicBlock_norm_le](declarations/safecenterdyadicblock-norm-le.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [safePlusDyadicBlock_norm_le_quartic](declarations/safeplusdyadicblock-norm-le-quartic.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [safeMinusDyadicBlock_norm_le_quartic](declarations/safeminusdyadicblock-norm-le-quartic.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [safeEvenDyadicBlock_norm_le_quartic](declarations/safeevendyadicblock-norm-le-quartic.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [safeOddDyadicBlock_norm_le_quartic](declarations/safeodddyadicblock-norm-le-quartic.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [safeEvenDefectDyadicBlock](declarations/safeevendefectdyadicblock.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [safeEvenDefectDyadicBlock_norm_le_two](declarations/safeevendefectdyadicblock-norm-le-two.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [safeAxialDyadicPoint](declarations/safeaxialdyadicpoint.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [safeTransverseDyadicPoint](declarations/safetransversedyadicpoint.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [dyadicPackingAt](declarations/dyadicpackingat.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [safeAxialDyadicPacking](declarations/safeaxialdyadicpacking.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [safeTransverseDyadicPacking](declarations/safetransversedyadicpacking.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [safeAxialDyadicGram](declarations/safeaxialdyadicgram.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [safeTransverseDyadicGram](declarations/safetransversedyadicgram.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [safeQuarticDyadicPackingValue](declarations/safequarticdyadicpackingvalue.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [safeAxialDyadicGram_nonnegative](declarations/safeaxialdyadicgram-nonnegative.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [safeTransverseDyadicGram_nonnegative](declarations/safetransversedyadicgram-nonnegative.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [safeQuarticDyadicPackingValue_nonnegative](declarations/safequarticdyadicpackingvalue-nonnegative.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [safeAxialDyadicPoint_normSq_le](declarations/safeaxialdyadicpoint-normsq-le.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [safeTransverseDyadicPoint_normSq_le](declarations/safetransversedyadicpoint-normsq-le.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [PackingPoint.sub_normSq_le_two](declarations/packingpoint-sub-normsq-le-two.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [safeDyadicEnvelopePairProduct](declarations/safedyadicenvelopepairproduct.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [safeDyadicEnvelopePairProduct_nonnegative](declarations/safedyadicenvelopepairproduct-nonnegative.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [safeAxialDyadic_edgeProduct_le](declarations/safeaxialdyadic-edgeproduct-le.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [safeTransverseDyadic_edgeProduct_le](declarations/safetransversedyadic-edgeproduct-le.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [safeQuarticDyadicPackingValue_le_greenEnvelope](declarations/safequarticdyadicpackingvalue-le-greenenvelope.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58e2594470172ef179e99e53b42c2e7178bd1232e33826406784587e66320e6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
