# RH conjecture-junction source target v0.1

Issue: `#445`  
Stacked parent PR: `#345`  
Parent commit: `9356655ba5ce3a8473b718b41a525d19bdaf21bb`  
Branch: `research/445-rh-conjecture-junction-20261021`

## Selected modules

1. `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleEdgeObstructionWitness`
2. `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjectureJunction`
3. `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjectureConnections`

## Required declaration inventory

### Core taxonomy

- `Route`
- `Mechanism`
- `mechanism`
- `JunctionObligation`
- `routeObligations`
- `Requires`
- `requires_sourceAlignedFiniteCertificate`
- `requires_exactCountIsolation`
- `routeObligations_ne_nil`

### Bridge interfaces

- `RouteClaim`
- `WitnessBridge`
- `WitnessBridge.hasWitness`
- `WitnessBridge.exists_exact_count`
- `BypassBridge`
- `BypassBridge.rhThrough`
- `ClaimAloneSuppliesWitness`
- `ClaimAloneBypassesWitness`
- `RouteConnection`

### Named route interfaces

- eleven witness-bridge aliases;
- eleven bypass-bridge aliases;
- eleven `hasWitness_of_*` theorems;
- `AllRouteConnections`.

## Acceptance controls

A source review must reject any mutation that:

1. removes the `deterministicUpgrade` premise from `WitnessBridge`;
2. makes a route constructor itself imply `HasCanonicalRectangleEdgeWitness N`;
3. makes a route constructor itself imply `RHThrough N`;
4. changes an averaged or statistical route into a direct pointwise certificate without an explicit theorem field;
5. drops source alignment or exact count isolation from any route inventory;
6. treats `AllRouteConnections N` as inhabited;
7. conflates Hilbert–Pólya or Berry–Keating with an already constructed self-adjoint operator;
8. treats de Bruijn–Newman data as automatically transferred to the actual zeta contour;
9. treats simplicity as quantitative fixed-contour separation;
10. claims global RH from a witness at one finite stage.

## Evidence states

Established by this target only after source identity is confirmed:

```text
SOURCE_DRAFT
```

Separate required states:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

`LITERATURE_REVIEWED` requires independent checking of the cited mathematical sources and their exact relationship to each route description.

## Non-execution statement

This target is static. It is not a workflow, receipt, kernel report, or proof-capsule result. No Lean/Lake/native command, generated declaration inventory, transitive axiom audit, or external replay is represented by the file's presence.
