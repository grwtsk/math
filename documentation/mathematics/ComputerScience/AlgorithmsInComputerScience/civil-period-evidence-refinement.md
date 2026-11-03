# Period-scoped civil-service evidence and reviewed legal windows

**Attribution:** grwtsk contributors. **Status:** Source proof candidates; Lean compilation, fresh kernel replay, transitive axiom audit and source-to-Python refinement `NOT_RUN`.

## Abstract

Cross-sector administrative evidence must not become inaccurate merely because unrelated records are included in a shared inventory. The maintained civil source previously formalized sector- and unit-scoped quantities, but did not carry the reporting period present in the Noe implementation. These sources add a time index, partition the selected physical unit into in-scope accepted, in-scope rejected and foreign-scope observations, and prove that foreign sectors and periods do not alter the selected local totals. The measured series translates exact per-period admitted channels into the existing sector trajectory and accumulation queue, with an explicit conditional balance premise. A second source combines existing finite-classification interpretation with legal source-version windows and rule-scope review without declaring a legal violation.

## 1. Problem, objects and scope

The original source is [`CivilSystemsCrossSectorScaling.lean`](../../../../GRWTSK/ComputerScience/AlgorithmsInComputerScience/CivilSystemsCrossSectorScaling.lean), initially selected at `grwtsk/math@3eb83859f164c60dd45ac461ceef6e76a7f10eec`, blob `70e00a99aaf622b55e975412517e92ed1fe4bf85`. It indexes each `WorkEvent` by `sector` and `unit` and defines the qualitative `effectiveChannel` and `Qualified`. The maintained Noe port additionally indexes events by `period`. This difference was not covered by the original unit-conservation theorems.

A `TimedEvent` retains *exactly* the prior `WorkEvent` and adds its period. The target is the triple `(sector, unit, period)`. `TimedEvent.admissible` is the conjunction of this scope with the original acceptance fields. Importantly, an unverified source or a `duplicate=false` field is not real authentication. This is a formal interpretation of independently reviewed source data.

For fixed sector `s`, unit `u`, period `t`, and event `e` in the selected unit:

\[
q_u(e) = a_{s,u,t}(e) + r_{s,u,t}(e) + f_{s,u,t}(e),
\]

where `a` is admitted local quantity, `r` is rejected *local* quantity, and `f` belongs to a different sector or period. If `e` uses a different unit, each term is zero; its quantity is retained in that other unit's ledger, never numerically summed with `u`.

This is an accounting identity, not an assertion of observational coverage or a clinical/legal finding. Source completeness is an independent host obligation.

## 2. Mathematical statements and proof route

**Local partition:** `TimedEvent.local_partition` is a case split on exact scope and accepted evidence. `TimedEvent.unit_partition` splits all quantities of the specified physical unit between the local and foreign scopes. `fold_local_partition` sums the former over the literal source list without reconstructing omitted rows.

**Noninterference:** `TimedEvent.foreign_sector_noninterference`, `.foreign_period_noninterference`, and `.foreign_unit_noninterference` prove zero contribution to accepted/rejected local amounts from unrelated rows. `append_foreign_sector_invariant` is the list-level consumer. These results repair the specific counterexample in the Noe draft: adding a housing administrative-minute observation must not change a complete healthcare reporting result, while retaining that housing observation for its own view.

**No invented causal feedback:** `unreviewed_feedback_is_not_measured_feedback` depends on the existing `WorkEvent.unreviewed_feedback_not_feedback`. The four channels partition all accepted work in `TimedEvent.admitted_channel_partition` and `fold_admitted_channel_partition`. Unclassified work is not dropped from source accounting, although it is not a verified causal inflow.

**Measured return:** `MeasuredSeries.events` is the actual supplied sequence by period; direct, feedback and repair flows are calculated from its admitted-channel fold. `MeasuredSeries.balances` is a separately required **observed conservation** premise, not something deduced from the mere existence of a dataset. `toSectorTrajectory` returns the exact maintained `CrossSector.SectorTrajectory`. Thus the original `Accumulation.Trajectory` and `CivilSystems.Queue` results are reusable without changing their hypotheses.

**Finite horizon:** `MeasuredSeries.finite_horizon_balance` telescopes the per-period balances:

\[
B_T+\sum_{t<T}R_t=B_0+\sum_{t<T}(D_t+F_t).
\]

`MeasuredSeries.bounded_to_horizon` requires adequate repair only on the *finite* interval `[0,T)`, unlike the unbounded theorem's permanent positive-net-inflow hypothesis. No real-world tipping point is claimed.

**Legal version and observation:** [`CivilSystemsVersionedReview.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/CivilSystemsVersionedReview.lean) imports both the new period-scoped model and the maintained [`CivilSystemsObservationRevisionBridge.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/CivilSystemsObservationRevisionBridge.lean). It consumes the existing four-state finite classifier as `EvidenceInterpretation`: an ambiguous, mismatched or unreviewed outcome becomes `Finding.unknown`. A `RuleApplication` retains the existing `CrossSector.LegalReview` but requires a separate source-revision choice, effective interval (in externally normalized chronological ordinals), and independently attested review. `RuleApplication.mayRaiseReview` produces only a Boolean research question for human review, not a legal determination.

## 3. Source-by-source composition

| Maintained mathematical source | Exactly reused role | What is NOT inferred |
|---|---|---|
| `CivilSystemsResilience` | Nonempty duty assessment, independent notice and stable queue | Service availability or legal liability |
| `CivilSystemsAccumulation` | Direct/feedback/repair stock-flow equation | Cause of feedback and real-world hazard threshold |
| `CivilSystemsCrossSectorScaling` | Sector, unit, original event qualifications and four channels | Reporting-period coverage |
| `CivilSystemsSourceEvidenceBridge` | Distinction between annual flows and linked case cohorts | Survival outcomes from annual court filings |
| `CivilSystemsActuarialEvidence` | Partial identification and forecast/disclosure gates | Calibrated individual outcomes |
| `FiniteClassification` | Four outcomes relative to supplied finite model | Ambient completeness without a coverage proof |
| `CivilSystemsObservationRevisionBridge` and `RevisionEvidence` | Unknown meaning/coverage and correction-sensitive evidence | Legal or factual authenticity from revision strings |
| `CrossSector.LegalReview` | Applied duty research gate | Judicial finding; every applicable statute |

These connections share selected *types and theorems*, not a claim that every mathematical or legal provision in the repository has been exhaustively reviewed.

## 4. Negative fixtures and exact source residuals

1. A healthcare 7-minute direct event balances backlog `0→7`. Adding an independent housing 7-minute event in the same period and unit **must preserve** the healthcare `accounting_balanced` result. The former Python source incorrectly returned `incomplete_observation`. The corrected Noe adapter separates `foreign_scope_units` from `excluded_units`.
2. A healthcare record with rejected provenance still makes the healthcare local observation incomplete; it is not silently discarded or treated as a verified defect.
3. An event with unreviewed causal-feedback classification enters the `unclassified` channel; it cannot produce a proven feedback count.
4. A permitted HIPAA disclosure is not an affirmative duty to disclose. An expired law revision, unknown finite observation, or absent independent coverage review cannot produce a human legal-research flag.
5. A sequence of balanced work can remain at backlog zero; observed recurrence alone does not establish unbounded accumulation.

## 5. Verification / trust boundary

- No Lean 4.34.1 executable and pinned Mathlib build were available in this session. Compilation, fresh kernel replay, transitive axiom auditing, expected-type inspection and independent theoretical review are **NOT_RUN**.
- The patched Noe source has a separately executed synthetic Python suite. Its results do not prove the general Python/Lean correspondence or authenticate external records.
- `EffectiveWindow` accepts caller-normalized ordinal dates; no theorem that an arbitrary integer corresponds to a legal effective date is claimed.
- The 13 source-catalogue law entries are *not* a complete, independently established legal inventory. Only professionally reviewed law/case facts could settle applicability, defenses, or remedies.
- A legal review flag, an actuarial estimate, or a source digest is never permission to send, litigate, enforce, discipline, or contact a case participant.
- Actual accessibility, patient harm, educational opportunity, clinician efficiency, rights, and comparative performance remain outcomes for separately governed prospective studies.

## 6. Publication and immediate next obligation

The source change consists of two **new** modules with a distinct namespace. The maintained cross-sector files and older verification evidence are not rewritten. Each new theorem remains a **source proof candidate** until a source-exact Lean replay checks its complete dependency closure.

The next proof obligation is to obtain Lean compilation and a transitive axiom audit for these two modules and their selected imports, then compare the Noe v2 partition and date-review profiles against the exact Lean definitions. Without that correspondence, the Python implementation is a finite reference model, not a proved implementation.
