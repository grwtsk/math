# Center-variable Cauchy dimension reduction

Issue: #923  
Parent: draft PR #921 at `dfab98b6e02e76203848b664a7fe5d95400f7c1c`.

The raw four-Möbius expansion has up to three apparent summation dimensions `(c,h,g)`, but before expanding the shift fibers the same object is a one-dimensional center autocorrelation:
```text
sum_c C(c) C(c+ell).
```

The source defines restricted left/right center energies and applies finite Cauchy-Schwarz:
```text
|sum_c C(c)C(c+ell)|^2
 <= (sum_c C(c)^2)(sum_c C(c+ell)^2).
```

Both restricted square sums are bounded by the full integer-center second moment
```text
M2 = sum_(c<=b) C(c)^2.
```

Hence
```text
|lag autocorrelation|^2 <= M2^2.
```

The existing zero-winding fiber energy is exactly
```text
4*M2.
```

Therefore the centered wrap branch admits a dimension-reduced route through the already-existing zero-winding energy, bypassing both:
- the raw b^4 four-point support count;
- the degenerate/four-distinct collision split.

No second-moment estimate is proved. The new analytic interface is
```lean
RegularCenteredIntegerCoordinateSecondMomentEnvelope.
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f4350c53429ae36c3c79a11c5a465f67e828fa72c9bda1b79c714f70a5ae887 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
