# One-new-point sequential packing recurrence

The three-point packing route can be implemented as a finite-state recurrence.

A state stores three source-valid points. Advancing the state does not choose a new triple. It shifts

(first, second, third)

to

(second, third, newPoint).

The corresponding source labels shift identically. Thus after initialization, each quartic stage introduces only one new geometric point and one new source label.

The stage value remains the squared two-dimensional volume / two-by-two Gram determinant and is therefore nonnegative for every advance, independent of the new point.

The module also isolates the scalar limiting argument:

if
  V_n >= 0,
  V_n = lambda_n * H + R_n,
  lambda_n -> L > 0,
  R_n -> 0,

then H >= 0.

Applied to the repository signed quartic H(a,t), this is the exact forcing step needed before witnessTrace_nonneg_iff yields a=0.

The remaining arithmetic obligation is therefore no longer a positivity theorem. It is to construct the initial three points and the one-new-point update rule from the accepted mechanism trace/local source, and prove the exact comparison identity plus residual decay.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7839ab923d7ceb25cc1fda3f5f5c42a3d7a93d044f7a4ff747fe56d37dc802c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
