# Jacobi Cocycle

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `590a501ee2b0e31bbcab69b9738eeb19ce98486f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiCocycle.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [orderedProduct](declarations/orderedproduct.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [orderedProduct_zero](declarations/orderedproduct-zero.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [orderedProduct_succ](declarations/orderedproduct-succ.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [orderedProduct_add](declarations/orderedproduct-add.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [orderedTransfer](declarations/orderedtransfer.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [state_eq_orderedProduct_mulVec](declarations/state-eq-orderedproduct-mulvec.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [state_eq_orderedTransfer_mulVec](declarations/state-eq-orderedtransfer-mulvec.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [det_orderedProduct_eq_one](declarations/det-orderedproduct-eq-one.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [det_weightedJacobi_orderedProduct](declarations/det-weightedjacobi-orderedproduct.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [cocycleProduct](declarations/cocycleproduct.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cocycleProduct_zero](declarations/cocycleproduct-zero.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cocycleProduct_succ](declarations/cocycleproduct-succ.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cocycleProduct_eq_orderedProduct](declarations/cocycleproduct-eq-orderedproduct.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cocycleProduct_add](declarations/cocycleproduct-add.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [cocycleGaugeTransfer](declarations/cocyclegaugetransfer.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cocycleProduct_gauge](declarations/cocycleproduct-gauge.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [gaugeTransfer](declarations/gaugetransfer.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [gaugeState](declarations/gaugestate.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gaugeState_step_iff](declarations/gaugestate-step-iff.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [orderedProduct_gaugeTransfer](declarations/orderedproduct-gaugetransfer.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [orderedProduct_eq_of_gaugeTransfer_eq](declarations/orderedproduct-eq-of-gaugetransfer-eq.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [recursiveGauge](declarations/recursivegauge.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [recursiveGauge_zero](declarations/recursivegauge-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [recursiveGauge_succ](declarations/recursivegauge-succ.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gaugeTransfer_recursiveGauge](declarations/gaugetransfer-recursivegauge.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [unrestricted_oneSided_gauge_exists](declarations/unrestricted-onesided-gauge-exists.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [recursiveGauge_const_identity](declarations/recursivegauge-const-identity.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [expandingSL](declarations/expandingsl.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [recursiveGauge_expanding_entry](declarations/recursivegauge-expanding-entry.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [recursiveGauge_expanding_entry_unbounded](declarations/recursivegauge-expanding-entry-unbounded.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [schrodinger_transfer_order_matters](declarations/schrodinger-transfer-order-matters.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f60aa40771bfcf81945996d39904c78b5e4ecc32b2127d980cf528e02bfb6602 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
