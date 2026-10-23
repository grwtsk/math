# Immutable-head polar cone-to-disk qualification packet

Status: **PASSIVE_REVIEW_PACKET / NOT_RUN / NOT_KERNEL_AUDITED**.

Issue: grwtsk/math#1020. Parent draft PR #1025 at exact commit
`23b1e39be7769053751bbad8d98ab88716f4abaa`.
Source theorem obligations must not be weakened.

## Exact environment

- `lean-toolchain`: `leanprover/lean4:v4.33.0`
- `lakefile.toml`: Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`
- Check `lake-manifest.json` against that revision in the clean checkout.
- No workflow, toolchain, dependency, root-import, cache or executor mutation is authorized by this packet.

## Execution handoff (instructions only; NOT executed)

Under the authorization process governed by issue #100, obtain a clean
checkout at the exact pinned commit. Record Git HEAD, tree SHA, source
blob SHAs, Lean/Lake versions and manifest lock. Then run the ordinary
`lake env lean` / `lake build` checks with warnings treated as errors
for each module in dependency order. Collect complete stderr/stdout,
exit codes and exact elaborated declaration types. Do not treat a
source-text inventory as elaboration evidence.

## Dependency order

1. `SurfacePolygonStandardConeDisk`
2. `SurfacePolygonStandardPolarRadiusFibers`
3. `SurfacePolygonStandardPolarPeriodicity`
4. `SurfacePolygonStandardPolarPhase`
5. `SurfacePolygonPolarPhaseInteger`
6. `SurfacePolygonPolarAddCircleKernel`
7. `SurfacePolygonPolarUnitCircleLift`
8. `SurfacePolygonPolarJointContinuity`
9. `SurfacePolygonPolarCompactCover`
10. `SurfacePolygonPolarCompactDescent`
11. `SurfacePolygonPolarFundamentalCover`
12. `SurfacePolygonPolarStandardConeDescent`
13. `SurfacePolygonPolarConeFibers`
14. `SurfacePolygonPolarDiskSurjectivity`
15. `SurfacePolygonPolarComplexPhase`
16. `SurfacePolygonPolarDiskHomeomorphism`

The inherited `SurfacePolygonPerimeterConeCircleTransport` and its
ancestors must also elaborate. This order is a diagnostic checklist,
not a substitute for the actual import graph.

## Priority static risk ledger

| Source | Suspect | Acceptance test |
| --- | --- | --- |
| `SurfacePolygonPolarUnitCircleLift` | `Quotient.lift` compatibility and `Quotient.sound` | Genuine AddCircle setoid equality, no chosen representative |
| `SurfacePolygonPolarCompactCover` | `of_comp_surjective` factorization API | Exact imported declaration or proof-preserving replacement |
| `SurfacePolygonPolarFundamentalCover` | `AddCircle.coe_image_Icc_eq` coercions | Actual closed unit-interval surjectivity |
| `SurfacePolygonPolarConeFibers` | `Subtype.ext`, quotient induction and positive-radius cast | Exact cone fiber iff with apex case |
| `SurfacePolygonPolarDiskSurjectivity` | Repaired origin subtype equality | Unchanged conditional surjectivity statement |
| `SurfacePolygonPolarComplexPhase` | Complex norm/argument lemma signature | Exact 2π normalization, no global continuous argument |
| `SurfacePolygonPolarDiskHomeomorphism` | Compact-to-Hausdorff constructor, apex lemma | Exact underlying polar map and source transport |

## Trust and hostile controls

After successful elaboration, enumerate all authored **and generated**
declarations, extract exact elaborated types and all transitive axioms,
audit unsafe/native/import dependencies, and independently replay with
`--trust=0`. Require only the standard allowed axioms
`propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`.

Hostile checks must distinguish positive-radius angles, collapse only
zero-radius angles, identify 0 and 1 on UnitAddCircle, reject any
continuous global argument claim, preserve genus-two/three original
polygon identities, and retain strict noninjectivity of
`coneToFilled`. No disk-filling pushout, CW/manifold/homology or RH
claim follows from the cone homeomorphism.

## Promotion gate

No theorem or PR is qualified until a source-bound immutable-head
receipt records all successful jobs, exact generated declaration
inventory, transitive trust closure and hostile replay. On any failure,
repair the earliest failing module without changing its theorem
statement or adding axioms, then replay every downstream consumer.
