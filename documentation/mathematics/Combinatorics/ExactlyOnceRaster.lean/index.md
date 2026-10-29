# Exactly Once Raster

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e24e015c2a0f629bd9a679ce140557935bf34ac3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/ExactlyOnceRaster.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RasterCell](declarations/rastercell.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RasterSection](declarations/rastersection.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [DecisionAvailability](declarations/decisionavailability.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ValiditySection](declarations/validitysection.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [EventLedger](declarations/eventledger.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext-source-edition-3.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ConditionalEvent](declarations/conditionalevent.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [RasterState](declarations/rasterstate.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ConditionalEvent.fires](declarations/conditionalevent-fires.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [updateEventLedger](declarations/updateeventledger.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [applyToggle](declarations/applytoggle.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [false_condition_preserves_bit](declarations/false-condition-preserves-bit.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [seen_event_preserves_bit](declarations/seen-event-preserves-bit.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [true_unseen_condition_flips_bit](declarations/true-unseen-condition-flips-bit.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [true_unseen_event_is_recorded](declarations/true-unseen-event-is-recorded.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toggle_replay_idempotent](declarations/toggle-replay-idempotent.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [VariableClass](declarations/variableclass.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FrozenAssignment](declarations/frozenassignment.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [Literal](declarations/literal.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [Clause](declarations/clause.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [BoolFormula](declarations/boolformula.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [CanonicalCNF](declarations/canonicalcnf.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [SatModel](declarations/satmodel.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Literal.eval](declarations/literal-eval.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Clause.eval](declarations/clause-eval.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [BoolFormula.eval](declarations/boolformula-eval.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FrozenAssignment.PreservedBy](declarations/frozenassignment-preservedby.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [ValidatedSatModel](declarations/validatedsatmodel.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [validateSatModel](declarations/validatesatmodel.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [frozen_variables_unchanged](declarations/frozen-variables-unchanged.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [validated_model_passes_fixed_validation](declarations/validated-model-passes-fixed-validation.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [UnsatCertificate](declarations/unsatcertificate.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [validateUnsatCertificate](declarations/validateunsatcertificate.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [unsat_certificate_passes_fixed_validation](declarations/unsat-certificate-passes-fixed-validation.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [SatStatus](declarations/satstatus.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [SatReceipt](declarations/satreceipt.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [SatResult](declarations/satresult.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [CanonicalModelSelector](declarations/canonicalmodelselector.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [canonicalSatModel](declarations/canonicalsatmodel.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [canonical_model_deterministic](declarations/canonical-model-deterministic.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [xorCNFHolds](declarations/xorcnfholds.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [xor_cnf_correct](declarations/xor-cnf-correct.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `inductive` | [SatTransitionProposal](declarations/sattransitionproposal.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [evaluateSat](declarations/evaluatesat.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [unsat_preserves_current_state](declarations/unsat-preserves-current-state.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [unknown_preserves_current_state](declarations/unknown-preserves-current-state.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [stale_preserves_current_state](declarations/stale-preserves-current-state.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sat_does_not_create_authority](declarations/sat-does-not-create-authority.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [raster_does_not_create_authority](declarations/raster-does-not-create-authority.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd550bbd39b1b7d26d741df95959ad65d32dc938a9b0e9374fae024cea922251 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
