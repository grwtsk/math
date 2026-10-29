# Monad Namespaced To Pmf Dirac Source

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f31ed2077014c0cda8d028ac5c8ad8bd769860cd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MonadNamespacedToPmfDiracSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pure](declarations/pure.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pure_apply](declarations/pure-apply.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [support_pure](declarations/support-pure.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_support_pure_iff](declarations/mem-support-pure-iff.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pure_apply_self](declarations/pure-apply-self.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pure_apply_of_ne](declarations/pure-apply-of-ne.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](declarations/tooutermeasure-pure-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMeasure_pure_apply](declarations/tomeasure-pure-apply.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toMeasure_pure](declarations/tomeasure-pure.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toPmf_dirac](declarations/topmf-dirac.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [bind](declarations/bind.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bind_apply](declarations/bind-apply.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [support_bind](declarations/support-bind.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_support_bind_iff](declarations/mem-support-bind-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pure_bind](declarations/pure-bind.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bind_pure](declarations/bind-pure.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bind_const](declarations/bind-const.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bind_bind](declarations/bind-bind.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bind_comm](declarations/bind-comm.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](declarations/tooutermeasure-bind-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toMeasure_bind_apply](declarations/tomeasure-bind-apply.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [bindOnSupport](declarations/bindonsupport.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [bindOnSupport_apply](declarations/bindonsupport-apply.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [support_bindOnSupport](declarations/support-bindonsupport.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](declarations/mem-support-bindonsupport-iff.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [bindOnSupport_eq_bind](declarations/bindonsupport-eq-bind.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](declarations/bindonsupport-eq-zero-iff.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pure_bindOnSupport](declarations/pure-bindonsupport.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bindOnSupport_pure](declarations/bindonsupport-pure.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](declarations/bindonsupport-bindonsupport.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bindOnSupport_comm](declarations/bindonsupport-comm.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](declarations/tooutermeasure-bindonsupport-apply.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](declarations/tomeasure-bindonsupport-apply.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cec8b47064203df3458122af6e70cb3589b481aeb1eb020bca815de37f25fcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
