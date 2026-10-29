# Observer Factor Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `520d6f4d0b37c9a244c7e7726fc500565a567212`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/ObserverFactorNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [LocalCausalEquivalent](declarations/localcausalequivalent.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [localCausalEquivalent_refl](declarations/localcausalequivalent-refl.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [localCausalEquivalent_symm](declarations/localcausalequivalent-symm.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [localCausalEquivalent_trans](declarations/localcausalequivalent-trans.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [localCausalSetoid](declarations/localcausalsetoid.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [LocalCausalState](declarations/localcausalstate.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toLocalCausal](declarations/tolocalcausal.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toLocalCausal_eq_iff](declarations/tolocalcausal-eq-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [localCausalEquivalent_step](declarations/localcausalequivalent-step.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [localCausalStep](declarations/localcausalstep.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [localCausalStep_toLocalCausal](declarations/localcausalstep-tolocalcausal.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [localCausalObserve](declarations/localcausalobserve.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [localCausalObserve_toLocalCausal](declarations/localcausalobserve-tolocalcausal.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [causalToLocal](declarations/causaltolocal.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [causalToLocal_toCausal](declarations/causaltolocal-tocausal.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [causalToLocal_surjective](declarations/causaltolocal-surjective.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [causalToLocal_step](declarations/causaltolocal-step.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [causalToLocal_observe](declarations/causaltolocal-observe.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [observerTuple](declarations/observertuple.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [observerTuple_injective](declarations/observertuple-injective.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ObserverTupleImage](declarations/observertupleimage.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toObserverTupleImage](declarations/toobservertupleimage.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [causalStateEquivObserverTupleImage](declarations/causalstateequivobservertupleimage.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [ObserverReducer](declarations/observerreducer.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ofRealizedImage](declarations/ofrealizedimage.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [run](declarations/run.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [run_nil](declarations/run-nil.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [run_cons](declarations/run-cons.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [reduce_run](declarations/reduce-run.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [reduce_eq_implies_localCausalEquivalent](declarations/reduce-eq-implies-localcausalequivalent.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toCanonicalLocal](declarations/tocanonicallocal.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toCanonicalLocal_reduce](declarations/tocanonicallocal-reduce.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toCanonicalLocal_surjective](declarations/tocanonicallocal-surjective.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toCanonicalLocal_step](declarations/tocanonicallocal-step.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toCanonicalLocal_observe](declarations/tocanonicallocal-observe.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toCanonicalLocal_unique](declarations/tocanonicallocal-unique.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Exact](declarations/exact.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toCanonicalLocal_injective_of_exact](declarations/tocanonicallocal-injective-of-exact.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [equivCanonicalLocal](declarations/equivcanonicallocal.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [localStep_unique](declarations/localstep-unique.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [localObserve_unique](declarations/localobserve-unique.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ee16729178372527660dd03b209815ecf9fe636f5ecd2a325ffab72b37ef3b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
