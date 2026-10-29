# Signed boundary common-drop factorization

Issue: #603. Parent hybrid boundary source: #600 / draft PR #601.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / BOUNDARY_BILINEAR_ESTIMATE_OPEN**.

## Exact boundary depth set

The source defines `boundaryCoreDepths j` as the genuine core depths whose active shift count is exactly `2^j`.

It proves every such depth lies in the left regime:
```text
t+1 < 2^j.
```

## Common terminal coefficient

On every boundary depth, the terminal Abel coefficient is independent of depth. The source defines
```lean
boundaryTerminalDrop
```
and proves
```text
harmonicTerminalCumulativeContribution(j,t)
 =
cumulativeHarmonicShiftCorrelation(j,t,2^j)
* boundaryTerminalDrop(j).
```

Therefore the exceptional signed packet factors exactly as
```text
coreBoundarySignedPacket(j)
 =
2 * boundaryTerminalDrop(j)
* boundaryCumulativeCorrelationPacket(j).
```

No start-point absolute value is introduced.

## Moving-window bilinear target

The source defines:
- `boundaryMovingWindowMertens j u`, a signed length-`2^j` Möbius window;
- `boundaryTailMertens j u`, a signed tail over boundary depths;
- `boundaryMovingWindowBilinearPacket j`.

The intended finite identity is
```text
boundaryCumulativeCorrelationPacket
 =
boundaryMovingWindowBilinearPacket.
```

That finite reindexing is deliberately left as the explicit source-only adapter
```lean
BoundaryMovingWindowBilinearAdapter.
```

No analytic estimate is bundled into that adapter.

## Remaining arithmetic target

The source-facing signed estimate is
```lean
SubpolynomialBoundaryMovingWindowBilinearPacket.
```

The next bounded deterministic increment is to construct the finite moving-window adapter by reindexing the base index `a` to reverse-depth offset `u=t-a` and then applying outer finite Fubini.

## Nonclaims

The moving-window identification and bilinear estimate are not proved here. No Lean/Lake execution, kernel acceptance, merge, or RH proof is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1514765454b449f5144463202cdaa53a369043fb8a00a28bf7af3403dc1e8bfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
