# One-depth incompatible length selection

Issue: #581. Parent transpose interface: #579 / draft PR #580.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / OUTER_DEPTH_TRANSPOSE_OPEN**.

## Exact terminal selector

At one genuine core depth, the terminal incompatible contribution occurs at the single retained length

```text
n = harmonicShiftCount j t.
```

The source proves it equals the retained-length sum against
`coreTerminalLengthCoefficient`, which is zero at every other length.

## Exact interior selector

The long interior contribution is reindexed by the bijection
```text
k -> n = k+1.
```

The source proves the filtered interior sum equals the retained-length sum against
`coreInteriorLengthCoefficient`, with zero padding outside the actual range.

## One-depth lengthwise identity

Combining terminal and interior pieces gives

```text
coreLongDepthIncompatibleDyadicL1(j,t)
 =
2 * sum_n incompatibleDyadicStartBlockL1(j,n)
      * (terminalCoefficient + interiorCoefficient).
```

This is finite reindexing only. No analytic estimate is used.

## Remaining step

Only the outer sum over core depths remains before constructing
`IncompatibleDepthTransposeAdapter`.

## Nonclaims

No outer Fubini theorem, transpose adapter value, short-interval theorem, Lean/Lake replay, merge, or RH proof is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10c4b0c46bc8339068d42971f024e7e16e165d857c436cff786d487cabc69b77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
