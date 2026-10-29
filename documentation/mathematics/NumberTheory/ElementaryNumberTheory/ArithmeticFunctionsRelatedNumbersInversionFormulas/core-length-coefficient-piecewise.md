# Piecewise coefficient mass and retained-length truncation

Issue: #597. Parent right telescope: #595 / draft PR #596.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEIGHTED_INCOMPATIBLE_L1_SUPPLIER_OPEN**.

## Maximal retained length

The source proves
```text
harmonicShiftCount(j,t) <= 2^j
```
for every inherited depth. Therefore all terminal and interior length selectors vanish for `n>2^j`, and so does the depth-aggregated coefficient mass.

## Boundary length

At `n=2^j`, the right-regime coefficient mass is zero. The complete boundary mass is exactly the repeated left terminal mass from #589.

The source proves
```text
fullLengthCoefficientMass(j,2^j) <= 3/2^j.
```

## Piecewise coefficient theorem

Combining the right telescope and non-boundary estimate with the boundary theorem yields a source-level inhabitant
```lean
piecewiseReciprocalLengthCoefficientMassBound
```
with universal constant 3:
- `<= 3/(2^j+n)^2` for retained `n<2^j`;
- `<= 3/2^j` at `n=2^j`.

## Exact transposed truncation

All transposed lengths above `2^j` are zero. Hence the incompatible packet is exactly truncated to
```text
j+2 <= n <= 2^j.
```

When the logarithmic threshold is within the dyadic range, this is split exactly into:
- non-boundary lengths `j+2 <= n < 2^j`;
- the single boundary length `n=2^j`.

The remaining arithmetic proposition is
```lean
PiecewiseWeightedIncompatibleL1Supplier
```
which is proved equivalent to the existing transposed incompatible supplier.

## Nonclaims

The weighted incompatible L1 supplier is still open. No short-interval theorem, Lean/Lake replay, merge, or RH proof is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bec28c5adb48e568f2b5b8b7dfc8051d792d32761b94cbdb009f8f5407ed3b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
