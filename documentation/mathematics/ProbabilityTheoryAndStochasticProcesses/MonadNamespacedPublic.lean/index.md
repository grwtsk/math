# Monad Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f712bc71420d6189a293035a43d07602009559dd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MonadNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pure](declarations/pure.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pure_apply](declarations/pure-apply.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [support_pure](declarations/support-pure.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_support_pure_iff](declarations/mem-support-pure-iff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pure_apply_self](declarations/pure-apply-self.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pure_apply_of_ne](declarations/pure-apply-of-ne.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](declarations/tooutermeasure-pure-apply.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMeasure_pure_apply](declarations/tomeasure-pure-apply.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toMeasure_pure](declarations/tomeasure-pure.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toPMF_dirac](declarations/topmf-dirac.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [bind](declarations/bind.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bind_apply](declarations/bind-apply.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [support_bind](declarations/support-bind.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_support_bind_iff](declarations/mem-support-bind-iff.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pure_bind](declarations/pure-bind.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bind_pure](declarations/bind-pure.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bind_const](declarations/bind-const.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bind_bind](declarations/bind-bind.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bind_comm](declarations/bind-comm.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](declarations/tooutermeasure-bind-apply.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toMeasure_bind_apply](declarations/tomeasure-bind-apply.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [bindOnSupport](declarations/bindonsupport.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [bindOnSupport_apply](declarations/bindonsupport-apply.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [support_bindOnSupport](declarations/support-bindonsupport.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](declarations/mem-support-bindonsupport-iff.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [bindOnSupport_eq_bind](declarations/bindonsupport-eq-bind.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](declarations/bindonsupport-eq-zero-iff.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pure_bindOnSupport](declarations/pure-bindonsupport.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bindOnSupport_pure](declarations/bindonsupport-pure.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](declarations/bindonsupport-bindonsupport.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bindOnSupport_comm](declarations/bindonsupport-comm.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](declarations/tooutermeasure-bindonsupport-apply.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](declarations/tomeasure-bindonsupport-apply.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee49a57422ce259662ce07764a94b3e2561a5c03516ea100946b0fcee43a0b1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant8e2f20d0ad2a9855a9758245827c27f5a14085e0628a665a10eb70d93ce7479b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
