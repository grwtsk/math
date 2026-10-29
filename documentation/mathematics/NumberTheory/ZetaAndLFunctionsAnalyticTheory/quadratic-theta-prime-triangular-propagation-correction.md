# Prime-prefix propagation interface correction

The first sampled-kernel propagation interface was still too weak.

It asserted only that there exists some real tailError bounded by the sampled
kernel sum. That statement is vacuous: choosing tailError = 0 always satisfies
it, without reference to the prime-prefix discrepancy.

The new source proves this vacuity explicitly.

The corrected formulation names the sharp arithmetic quantity

D_X(m) = sum_(2X<p<=m) log p - (m-2X)

as sharpPrimePrefixDiscrepancy.

A PrimePrefixSmoothingOperator now supplies a fixed smoothed value S_(X,N)(m),
and its error is definitionally

D_X(m) - S_(X,N)(m).

The nonvacuous tail comparison is therefore

|D_X(m)-S_(X,N)(m)|
<= log(4X) * sum_(1<=d<=X/2) sampledTriangularKernel(X,N,d).

This statement cannot be satisfied by choosing a fresh zero error after the
fact; the smoothing operator is fixed before the estimate.

A separate CanonicalPrimePrefixFejerRepresentation interface records the
remaining source-faithfulness obligation: construct the actual Fejer-smoothed
prime-prefix operator and identify its value with an explicit weighted prime
sum.

Status:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
VACUOUS_PROPAGATION_INTERFACE_REJECTED /
FIXED_OPERATOR_ERROR_INTERFACE_TYPED /
CANONICAL_FEJER_PREFIX_OPERATOR_OPEN.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9738124486aff9e73363b5b54ad3ae6192b486dcf55ec5b56784a7584e3a3e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
