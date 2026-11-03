# Accumulation, not the isolated phrase

Attribution: grwtsk contributors.

The user distinguishes a single event or expression (the snowflake) from cumulative, self-reinforcing administrative processes (the avalanche). The module `CivilSystemsAccumulation.lean` isolates that distinction with an explicit conservation equation and a reuse of the already published `CivilSystems.Queue` theorem. The model is pure and applies to any civil system; the clinician time lemma demonstrates its use for healthcare.

**Source mathematics:** `GRWTSK.ComputerScience.AlgorithmsInComputerScience.CivilSystemsResilience.Queue.bounded` and `.unbounded` at the referenced current math revision. This contribution neither assumes an already-verified Lean compilation nor reproduces that queue proof.

## Primary claims

1. A documented defect and a review-worthy unknown remain distinct. Unknown observations contribute zero to `documentedUnits` but may contribute to `reviewUnits`.
2. `Trajectory.toQueue` maps initial burden, direct administrative inflow, feedback/rework and actual repair to the existing queue without dropping terms.
3. If repair covers direct inflow plus feedback every period, burden never exceeds its initial level.
4. If combined inflow exceeds repair by at least one unit every period, the stock crosses any finite threshold eventually.
5. A balanced synthetic workload with ongoing positive arrivals does not accumulate. Another synthetic workload with zero direct arrivals but persistent rework does accumulate.
6. Reducing the clinician's avoidable administrative diversion weakly increases the remaining clinical time under a fixed time budget; this does not prove better clinical outcomes.
7. Repeating contract or institutional language does not, without independent review, establish coercion or legal invalidity. Religious and moral concerns can be recorded without making a ruling about another party's conscience or orthodoxy.

## Essential remaining application premises

- Verify real events and their unique IDs, meanings, applicable duties, timestamps, and audit lineage. Strings and booleans do not authenticate underlying documents.
- Choose actual commensurate units for burdens, inflows, and repairs. Double counting and cascading cross-case effects require empirical identification.
- Determine whether observed period-level conservation is valid; delayed actions, censoring, measurement errors, and unobserved work may require explicit residual terms.
- Calibrate thresholds on actual operational outcomes. A mathematical crossing is not a proven tipping point or a legal violation.
- Identify current legal authority by jurisdiction, relevant event date, covered persons and institutions, exceptions, necessary legal elements, and legal review procedures. A typed obligation is not a judicial finding that its predicates hold.
- Distinguish conscience/religious objection, allegations of pressure, actual consent, unconscionability, and final legal enforceability. No theological label alone decides a contract case.
- Maintain clinical autonomy, patient access, physician retaliation protections, privacy, quality oversight, and ordinary clinical peer-review safeguards together.

## Verification status

SOURCE_PROOF_CANDIDATE. Lean compilation / kernel checking / transitive axiom audit are NOT_RUN in this environment. Publication, if any, is source-only. No live patient data, notifications, or institutional workflows are accessed or activated.
