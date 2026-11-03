# Civil systems: source-aware flow / cohort / observation bridges

Attribution: grwtsk contributors. Source proof candidates, **NOT_RUN** for Lean compilation, kernel replay and transitive axiom audit.

## Source graph and precise direction

This is a bounded reviewed connection graph, **not** a claim that every one of `grwtsk/math`'s many modules was formally inspected or imported. Existing math source files were read at `grwtsk/math@e3d1ce0bd007dceb4933262b17919e0c82f80552` on 2026-11-02. The following edges have corresponding new Lean definitions/theorem candidates:

| Original mathematical source | Source blob SHA-1 | New consumer edge / boundary |
|---|---|---|
| `GRWTSK/ComputerScience/AlgorithmsInComputerScience/CivilSystemsResilience.lean` | `acc07d6a57dbe1f03010305661116fe6d1e8443f` | `screen`/`Eligible` retain questionable-error review and access restrictions; `planJointReview` adds an independent aggregate disclosure gate, never delivery |
| `GRWTSK/ProbabilityTheoryAndStochasticProcesses/CivilSystemsActuarialEvidence.lean` | `4046553004ed48c84fb09814d2860088fdfd2caa` | `linkedDisclosure` and `linkedForecast` require an independent longitudinal-cohort eligibility check before calling the original actuarial consumers |
| `GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/FiniteClassification.lean` | `5220740065e83f489f82b428ec1b7efb402e73bf` | `reviewedFinding` maps four finite-model outcomes to civil evidence **only after** independent inventory-coverage and duty-meaning review; ambiguity and mismatch remain unknown |
| `GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/RevisionEvidence.lean` | `2f817dd1f6ca05d3fa741985ac9e0da1510de91c` | `uniqueRevisionFinding` reads exactly one revision/kind. An empty or multiple-record query becomes unknown; correction cannot inherit historical evidence |

Dependencies read but not re-proved: `SupportedClaims.lean` blob `f090a772459be23e833ad9d4328a172524b1d24b`, `ConstructiveList.lean` blob `fa653e6e6233328b1f1359df5f87d3bd13346410`. The existing `CareAccessResilience.lean` and `CivilSystemsCareBridge.lean` remain domain specializations; this increment does not change medical/legal facts. `EventDifferenceKind.lean` blob `d38bcef12233e0d5c0f98de329045aea1e830fa0` is a *label-level* relation; it is **not** imported here because its historical `Mathematics.*` dependencies do not have an accepted co-import refinement.

## Principal mathematical comparison

Let each court-level annual row have filing count `f`, optional disposition `d`, and separately accepted reporting status `q`. Define comparable rows by `q ∧ d.isSome`; retain both sides only for those rows. For a list of rows:

```
allFilings = comparableFilings + excludedFilings.
```

The theorem `filings_partition` proves exact accounting for the selected row inventory, and `missing_disposition_not_counted`, `unaccepted_row_not_counted` and `missing_disposition_preserves_excluded_mass` prove non-imputation and visible exclusions. This is not an all-court coverage theorem. A nonempty excluded mass is a missing-data measurement, not a legal violation.

Annual filing/disposition *flows* are not outcomes of a matched filed-case cohort. `annual_flows_do_not_identify_cohort_linkage` constructs two longitudinal interpretations with identical reported annual flows; therefore the flow observation does not identify case matching. `LinkedCohortQualified` is an additional, independently supported premise that must precede the already published `Actuarial.disclosure` and `Actuarial.planForecast` interfaces. Attestation fields alone do not authenticate a source.

The cross-system reviewer-only `planJointReview` requires *three* conditions simultaneously: an independently reviewed source join, a positive case-revision review intent, and aggregate disclosure permission. `joint_review_sound` exposes these as conjunctive hypotheses. The returned pair is not a public output or a sent notification, and it is not authority for enforcement.

The finite classifier from `FiniteClassification.lean` reports four possible results relative to a supplied list. `reviewedFinding` maps `supported` to `satisfied` and `refuted` to `contradicted` ONLY when external coverage and interpretation are both independently reviewed. Neither Boolean proves the premise in the world. `ambiguous` or `model_mismatch` map to `unknown`, not to any judgment against a person or institution. The source classifier has separate hypotheses for lifting to its ambient trace space; the present adapter does not replace those obligations.

A correction in the maintained `RevisionEvidence` model preserves old records and issues a fresh revision. `correction_requires_fresh_evidence` consumes its `WellFormed` premise and proves the freshly corrected revision still reads unknown. `correction_keeps_historical_outcomes` retains old revision-specific evidence. This is crucial for notices and model changes after data revisions.

## Source-host interface and open obligations

The Noe implementation owns pure parsing of public court operations, CMS hospital information, CFPB complaint exports and ACS context only when caller supplies exact bytes and an independent expected digest. It supplies synthetic test coverage, a source catalog of 28 entries, and a pinned mirrored 10-year Fresno sample. **All other 24 source catalog entries are discovery only; no connector, scrape, census, or verified private dataset exists by virtue of being listed.**

Release of an aggregate result requires separate source custody, permission, population coverage, sampling and disclosure review. Predictive claims additionally need a genuine longitudinal cohort, time-aligned outcome definition, censoring control, independent calibration, appropriate holdout, nonleakage, and professional review. Distinct schemes for civil requests, private records, public litigation, administrative incidents, and legal judgments cannot be collapsed into a single score by the present modules.

## Verification and counterexamples

- New Lean files: `CivilSystemsSourceEvidenceBridge.lean`, `CivilSystemsObservationRevisionBridge.lean` (source only; `sorry` and new axiom declarations absent by static inspection; kernel checking **NOT_RUN**).
- Nonvacuous math fixtures: 15 filings reported, 10 retained for a comparable denominator, 7 observed dispositions, 5 excluded filings.
- Python no-effect validators: 52 synthetic + source-regression cases pass normally and in optimized mode on local files; no observed native Lean evidence.
- Related open verification: math #1622 (care), #1626 (general civil), #1630 (actuarial), plus math #312 (finite observation) and #321 (revision evidence). Earlier source checks cannot certify newly composed imports.
- Crucial model obstruction: source mirrors have their own identity. California Judicial Council official byte-matching is **NOT_RUN**; a 580-row public GitHub mirror is known, but publisher equality remains unresolved.

## Further mathematical obligations

1. Prove or independently audit the full Lean import closure and expected type statements, then a transitive axiom and native acceptance report.
2. Define a custody-validated source identity and prove the Python parser's bounded row semantics refines `FlowRow` (including byte decoding, missingness, accepted certification and source version); a passing Python fixture is not this theorem.
3. Define the actual longitudinal linkage and censoring conditions before transporting court flow counts into actuarial cohort risks. Flow-only evidence cannot discharge that premise.
4. Establish whether published civil obligations are applicable and adequately enumerated under the governing law; the model does not derive legal findings from evidence labels.
5. Independently test source permissions, requester identity, recipient access, private projection, external notification delivery and durable correction behavior before any operational system is activated.
