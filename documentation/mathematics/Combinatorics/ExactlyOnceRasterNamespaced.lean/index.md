# Exactly Once Raster Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variantd0f22edeee9727e04cf505c6a5fecea800f9d197508ab36ee2c921378a146828.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `133e4b68a491fbad11c19fb4b45a20329a82b13b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/ExactlyOnceRasterNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RasterCell](declarations/rastercell.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RasterSection](declarations/rastersection.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext-source-edition-3.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [DecisionAvailability](declarations/decisionavailability.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ValiditySection](declarations/validitysection.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [EventLedger](declarations/eventledger.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ConditionalEvent](declarations/conditionalevent.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [RasterState](declarations/rasterstate.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ConditionalEvent.fires](declarations/conditionalevent-fires.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [updateEventLedger](declarations/updateeventledger.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [applyToggle](declarations/applytoggle.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [false_condition_preserves_bit](declarations/false-condition-preserves-bit.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [seen_event_preserves_bit](declarations/seen-event-preserves-bit.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [true_unseen_condition_flips_bit](declarations/true-unseen-condition-flips-bit.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [true_unseen_event_is_recorded](declarations/true-unseen-event-is-recorded.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toggle_replay_idempotent](declarations/toggle-replay-idempotent.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [VariableClass](declarations/variableclass.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FrozenAssignment](declarations/frozenassignment.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [Literal](declarations/literal.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [Clause](declarations/clause.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [BoolFormula](declarations/boolformula.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [CanonicalCNF](declarations/canonicalcnf.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [SatModel](declarations/satmodel.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Literal.eval](declarations/literal-eval.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Clause.eval](declarations/clause-eval.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [BoolFormula.eval](declarations/boolformula-eval.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FrozenAssignment.PreservedBy](declarations/frozenassignment-preservedby.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [ValidatedSatModel](declarations/validatedsatmodel.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [validateSatModel](declarations/validatesatmodel.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [frozen_variables_unchanged](declarations/frozen-variables-unchanged.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [validated_model_passes_fixed_validation](declarations/validated-model-passes-fixed-validation.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [UnsatCertificate](declarations/unsatcertificate.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [validateUnsatCertificate](declarations/validateunsatcertificate.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [unsat_certificate_passes_fixed_validation](declarations/unsat-certificate-passes-fixed-validation.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [SatStatus](declarations/satstatus.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [SatReceipt](declarations/satreceipt.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [SatResult](declarations/satresult.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [CanonicalModelSelector](declarations/canonicalmodelselector.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [canonicalSatModel](declarations/canonicalsatmodel.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [canonical_model_deterministic](declarations/canonical-model-deterministic.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [xorCNFHolds](declarations/xorcnfholds.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [xor_cnf_correct](declarations/xor-cnf-correct.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `inductive` | [SatTransitionProposal](declarations/sattransitionproposal.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [evaluateSat](declarations/evaluatesat.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [unsat_preserves_current_state](declarations/unsat-preserves-current-state.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [unknown_preserves_current_state](declarations/unknown-preserves-current-state.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [stale_preserves_current_state](declarations/stale-preserves-current-state.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sat_does_not_create_authority](declarations/sat-does-not-create-authority.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [raster_does_not_create_authority](declarations/raster-does-not-create-authority.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58e44ccee2df7ca6d2376812c1cbd8f5374c2d0d9850cd5c014256de1136e365 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variantd0f22edeee9727e04cf505c6a5fecea800f9d197508ab36ee2c921378a146828.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
