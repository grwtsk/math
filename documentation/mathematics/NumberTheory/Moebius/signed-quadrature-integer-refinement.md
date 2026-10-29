# Exact signed quadrature, integer coefficients, and the existing RH return

Local mathematical attribution: grwtsk contributors.

Inspected baseline: grwtsk/math@3c42dec77c55c76914dae673b3d456c3369200e9.
Lean 4.33.0; Mathlib db584cd6d46c92f209a44c0f1c829460d327499d.
New source proof candidates: compilation, fresh kernel replay, and transitive axiom audit NOT_RUN.
Historical evidence keeps its original source scope; it is neither reset nor transferred.

## 1. Accumulated source, not a new surrogate

The previous PickupCellQuadratic construction already identifies the actual complete ordered pickup cross-density, including the diagonal subtraction, with a quadratic in x=exp(-u/2) on every closed birth interval. PickupRefinementCriterion already constructs a birth-respecting partition of every nonnegative horizon, including the clipped last cell and zero-width endpoint case. Their exact source identifications and the GoodScaleEnergyCriterion analytic return are applied here, not postulated again.

For the original closed inventory 1<=n<=N, write

    M_N = sum mu(n),
    A_N = sum mu(n)/sqrt(n),
    D_{N,j} = sum mu(n)^2 / sqrt(n)^j,  j=0,1,2.

The existing coefficients are

    a_N = 4(A_N^2-D_{N,2}),
    b_N = -8(A_N M_N-D_{N,1}),
    c_N = 4(M_N^2-D_{N,0}).

Their polynomial is p_N(x)=a_N+b_N*x+c_N*x^2. These five literal moments are not identified merely by name with every rational convolution-moment representation elsewhere in the repository.

## 2. Integrate the signed source before bounding uncertainty

For any real a,b,c and physical endpoints l,h,

    I(a,b,c;l,h)
      = a(h-l)
        + 2b(exp(-l/2)-exp(-h/2))
        + c(exp(-l)-exp(-h)).

The new generic primitive is a*u-2b*exp(-u/2)-c*exp(-u). Its derivative is the actual density a+b*exp(-u/2)+c*exp(-u/2)^2. FTC is applied with proved differentiability and integrability, giving the exact integral even for equal endpoints. Adjacent physical subdivisions telescope exactly.

`PickupSignedQuadrature.integral_crossDensity_eq_cellValue` instantiates this on the actual source polynomial, with all original birth/support hypotheses. `partitionValue_eq_cross` then gives

    sum_cells I(a_N,b_N,c_N;left,right) = pickupCross(T).

The existing canonical partition supplies all coverage for T>=0; no source-coverage field is left to an analytic supplier. No assertion of monotonicity of pickupCross is used.

This removes the deterministic whole-cell upper-range allowance, not the arithmetic difficulty. The exact before/after slack is

    oldUpper - pickupCross
      = sum_cells [(right-left)*oldCellUpper - exactCellIntegral] >= 0.

The old upper/lower controls remain valid and available. The new endpoint-gap theorem proves that their range width is at least the absolute endpoint value difference at EVERY depth. Value-range subdivision is not integral-error convergence. For the simple density exp(-u/2) on [0,log 4], the exact integral is 1 while length times the maximum is log 4. Physical subdivision and exact integration are different operations.

## 3. A precision obligation is now discharged quantitatively

Define physical integration weights

    w0=h-l,
    w1=2(exp(-l/2)-exp(-h/2)),
    w2=exp(-l)-exp(-h).

For 0<=l<=h they satisfy 0<=w1,w2<=w0. If independently evaluated coefficients have errors e0,e1,e2, the returned cell error is at most

    w0*e0 + w1*e1 + w2*e2.

Only these uncertainties are majorized; source values and the complete cell sum stay signed.

If all three absolute coefficient errors are bounded by one fixed epsilon>=0, telescoping physical lengths yields

    |observedSignedIntegral(T)-pickupCross(T)| <= 3*epsilon*T.

The bound has no floor(exp T) multiplier. It is an absolute COEFFICIENT precision condition, not merely a relative precision condition on large moments or agreement at a finite selection of times. Efficient production of those coefficients is a separate computational issue.

The existing polynomial-subexponential theorem prices this error at positive rate delta by

    3*epsilon*T <= (3*epsilon/delta)*exp(delta*T),  T>=0.

Thus an observed signed budget C_delta*exp(delta*T) gives an actual-source budget (C_delta+3*epsilon/delta)*exp(delta*T), with the same good-scale region and starting time. No separate arithmetic proof of subexponential reconstruction error is required.

## 4. Canonical integer-coefficient target, not an assumed approximation

Define the coefficient model by the prescribed floor operation:

    a'_N=floor(a_N), b'_N=floor(b_N), c'_N=floor(c_N),
    R(T)=sum_canonical_cells I(a'_N,b'_N,c'_N;left,right).

`integerFloor_error` supplies every coefficient error from Mathlib's floor inequalities. Positive integration weights give the stronger interval

    R(T) <= pickupCross(T) <= R(T)+3T,  T>=0.

The coefficients are integers; R(T) is generally real because its physical weights involve logarithms/exponentials. This is NOT a finite-state compression or an efficient sign algorithm for Mobius. The actual finite arithmetic coefficients still have to be produced. The definitions do not hide the desired bound in an unrestricted remainder.

`rounded_subexponential_iff` proves, for the same arbitrary region G,

    SubexponentialOn R G iff SubexponentialOn pickupCross G.

The new `riemannHypothesis_of_rounded_good_scales` therefore needs only the existing affine-frequency coverage and the all-positive-rate signed bound for R. The quantization-error supplier is completely constructed. This is an equivalent arithmetic target, not a proof that the target has the required growth.

## 5. Source-matched RS readout and graph applications

For three distinct evaluation nodes x,y,z, the readout weights for a prescribed moment vector (m0,m1,m2) are

    lambda_x = [m2-(y+z)m1+yz*m0]/[(x-y)(x-z)],

with the corresponding cyclic formulas for lambda_y and lambda_z. The source proves

    m0*a+m1*b+m2*c
      = lambda_x*p(x)+lambda_y*p(y)+lambda_z*p(z).

Use (m0,m1,m2)=(w0,w1,w2) to obtain the exact integral. Independent sample errors cost sum |lambda_i|*epsilon_i. Node-separation/conditioning is visible; the fourth RS symbol remains available for consistency checks but is not charged by this scalar theorem. This concerns the polynomial coordinate of the source, not a claim that zeta is quadratic or that every node represents a physical time inside the cell.

`rs_sample_eq_polynomial`, `cellValue_eq_rs_readout`, and `rs_integral_error` instantiate the existing QuadraticEvaluationCode with the literal pickup coefficients. `sum_cell_error` returns these local comparisons to the complete pickupCross.

`sampledPickupSandwich` and `roundedPickupSandwich` construct actual-source observation sandwiches. The latter has the fully supplied 3T error. `sampled_and_range_same_middle` proves that the old range and new integral constructions refer to precisely the same relation. The existing meetEvidence theorem is applied to preserve every actual edge and shrink unresolved evidence. These are guarded arithmetic-observation relations, not automatically same-zeta-zero relations.

The complete new sampled upper bound and the existing curve/prime-credit hybrid combine by MINIMUM. `combinedUpper_le_old` records non-worsening. No prime-pair credit is subtracted a second time from a source that already contains it. The finite-cover RH consumer lets different source-matched methods operate on different fixed regions; only their union needs affine coverage. No new analytic return is introduced.

## 6. Changing sieve and original scope

`sievedCellValue_eq` applies the existing sieveMoment equality to all five moments before forming the integral. Consequently arbitrary valid changes of the prime-square sieve leave the exact cell value unchanged, with no survivor normalization and no unit-density factor. The prior centered fibers, gcd strata, winding, and exact labeled-word results are preserved unchanged. RadicalLogEntropy.sum_log_primeFactors remains the already supplied distinct-prime support invariant; it is neither re-proved nor promoted to a cancellation premise.

The reflected compact-source Landau observable, the finite zero-bin screw observable, and pickupCross retain their distinct source identities. This increment supplies no new numerical zeta-zero enclosure, contour shift, spectral completeness theorem, or global zero exclusion. Finite negative examples do not prove a uniform sign theorem.

## 7. Existing results actually consumed

- PickupCellQuadratic: crossDensity_eq_polynomial, integral_crossDensity, actual coefficient definitions, birth endpoints, sieveMoment_eq.
- PickupRefinementCriterion: BirthPartition, canonicalPartition, eventCut, old upper/lower intervals, hybridUpper, graph constructors.
- QuadraticCellCertificate: Controls, whole-cell upper/lower bounds, endpoint evaluations.
- ReedSolomonRefinement: actual QuadraticEvaluationCode and injective node system.
- ObservationSandwich: fromErrorBounds, meetEvidence, unresolved_meet_subset.
- GoodScaleSubexponential: subexponentialOn_mono, add_global, finite-cover propagation.
- PolynomialSubexponential: pow_le_factorial_mul_exp, with explicit rate-dependent constant.
- GoodScaleEnergyCriterion: riemannHypothesis_of_cross_good_scales and its existing actual-source analytic dependency closure.
- Pinned Mathlib FTC, continuous integrability, real exponential derivatives, finite sums, and integer floor inequalities.

No new external paper theorem is imported. This is a source-derived application; it does not assign historical influence or reset older verification scopes.

## 8. Verification and diagnostics

The two new leaves contain 27 definitions, 48 public theorem scripts and one private helper: 76 source-level declarations, not an elaborated export census. Native compilation, fresh kernel replay and complete transitive axiom auditing remain NOT_RUN. No lean/lake executable is present locally, and no remote execution has been dispatched. Verification commands, complete source declaration roster and direct supplier pins are in the passive manifest and issue. Operational scripts/output remain outside math.

Executed `python /mnt/data/rh-signed-quadrature/preflight.py` exited 0: 4,244 exact rational/symbolic mathematical assertions, four lexical checks, and ten separately labelled 75-digit checks. Exact actual-Mobius checks use inventories 1,2,3,4,5,8,12,16,24, rational/algebraic square-root coefficients and independent formal birth-log symbols. They compare the signed cell formula against the complete ordered-pair integral formula, not Lean proof execution. Numerical horizons use N=4,8,16,32,64. At T=log(64)+log(65/64)/3 the signed value is approximately -10.5808183298429154 and the old depth-zero upper is approximately -10.1860458106197531. These are not rigorous interval enclosures or all-scale evidence.

An incorrect uncommitted blob was rejected by the precommit hash comparison and replaced before assembly; only the manifest-pinned final blobs are part of the source commit. Connector-configured Git metadata is used; no author/committer override or history rewrite is claimed.

## Remaining arithmetic task

Establish an all-positive-rate upper bound on the actual signed rounded sequence R, exact cell sum, or a compatible combined regional certificate. The normalization, complete integration, zero-width cases, canonical coverage, changing-sieve preservation, and integer-quantization loss have now been supplied. Neither full waveform accuracy nor an additional Hermitian-positivity premise is required by these consumers. A proof must still exploit arithmetic cancellation rather than merely evaluate a finite number of cells or refine an exact representation indefinitely.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6af013787e72287484c484914e594b7e28828ec65b38fc4871343671361528c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
