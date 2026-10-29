# Depth-transposed incompatible dyadic packet

Issue: #579. Parent method witness: #575 / draft PR #577.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / INCOMPATIBLE_DEPTH_TRANSPOSE_OPEN**.

## Why transpose

The crude incompatible-block route in #575 introduced a full core-depth cardinality factor after bounding each depth independently. This increment reorganizes the nonnegative incompatible contribution by retained interval length before inserting any depthwise estimate.

## Exact coefficient masses

For each retained length `n`, the source defines:
- `coreTerminalLengthCoefficient j t n`;
- `coreInteriorLengthCoefficient j t n`;
- `coreLengthCoefficientMass j n`.

The first two are zero unless `n` is an actual terminal or retained interior cumulative length. The source proves both are nonnegative, hence the depth-aggregated coefficient mass is nonnegative.

## Transposed packet

The source defines
```lean
transposedIncompatibleDyadicL1Packet
```
as a sum over retained lengths `n`, multiplying:
1. the exact coefficient mass aggregated over all core depths;
2. the incompatible dyadic start-block L1 first moment at that same length.

This formulation removes the automatic multiplication by the number of core depths.

## Remaining finite comparison

The source types
```lean
IncompatibleDepthTransposeAdapter
```
with one finite comparison obligation:
```text
coreLongIncompatibleDyadicL1Packet(j)
  <= transposedIncompatibleDyadicL1Packet(j).
```

No analytic theorem is needed for that bridge; it is intended to be finite reindexing/Fubini.

The source also defines
```lean
SubpolynomialTransposedIncompatibleDyadicL1Packet
IncompatibleLengthwiseSupplier
```
so future work can target coefficient-mass control directly.

## Status

This increment does not yet construct the transpose adapter and does not prove the transposed supplier. It replaces the known-bad depthwise counting architecture with a lengthwise architecture that can exploit exact Abel coefficient overlap.

## Nonclaims

No short-interval theorem, kernel acceptance, merge, or RH proof is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b40d2c9d701c3b98d7ae94a6676c9634120cc860b681e31e47f5ebafbd18356 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
