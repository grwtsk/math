# Endpoint quadrature of the actual pickup: a quarter-unit curvature allowance

Local mathematical attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED. This note describes derived mathematical arguments and new Lean proof scripts, not native acceptance. Existing historical verification remains attached to its original source pins.

## Publication and inherited mathematics

The previously unpublished issue #1405 sources were integrated unchanged at `038a3ba24a1fa9e10abb807ff6e787dcc546f663`, complete tree `5f68448d96646ec7ba49248230c9852b433e357b`. That resolves publication only. ExponentialQuadraticIntegral and PickupSignedQuadrature remain pending native checks alongside this new dependent closure.

The new leaves extend the existing error-bound and Moebius taxonomy. They use the literal five-moment polynomial in PickupCellQuadratic, its complete ordered cross-density and signed diagonal subtraction, PickupRefinementCriterion's canonical birth partition, LogarithmicPickupSampling.cell_drift_bound, the source-exact signed integral from PickupSignedQuadrature, the existing RS coefficient identity and sieve identity, and GoodScaleEnergyCriterion's actual analytic RH return. None of those constructions is declared missing or rebuilt under a new assumption.

No new external paper theorem is imported. Mathlib's pinned `Real.log_le_sub_one_of_pos`, `Real.log_div`, Mobius one-boundedness, interval integration and finite-sum algebra are used at Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, Lean `leanprover/lean4:v4.33.0`. The exact pinned logarithm source was inspected. The radical-logarithm invariant already supplied in RadicalLogEntropy is not reopened or made a cancellation hypothesis.

## 1. The actual source, not a fitted curve

On a birth-respecting cell `[a,b]` with `log N <= a <= b <= log(N+1)`, the existing source is

    p_N(exp(-u/2)),
    p_N(x) = A_N + B_N*x + C_N*x^2,
    C_N = 4*(M_N^2 - D_N),
    M_N = sum_(n=1..N) mu(n), D_N = sum_(n=1..N) mu(n)^2.

A_N and B_N retain the other actual prefix moments. The full square is formed before subtracting the complete diagonal, so every ordered mixed interaction is retained. The right-endpoint new response is zero. The original actual source inventory and its cutoff convention are unchanged.

Let H=exp(-a/2), L=exp(-b/2), with L<=H. The chord of p_N in its x-coordinate is

    chord_N(x) = A_N - C_N*L*H + [B_N+C_N*(L+H)]*x.

It matches both endpoint values. Its error is exact:

    chord_N(x)-p_N(x) = C_N*(H-x)*(x-L).

This is a chord in x, not a trapezoid in physical time u. Two endpoints do NOT recover an arbitrary quadratic. The missing curvature is retained, then bounded using this source's coefficient and cell-width facts.

## 2. Integrate with the original physical-time measure

Write w0=b-a, w1=2*(H-L), w2=H^2-L^2. The old exact source integral is I=w0*A_N+w1*B_N+w2*C_N. The chord integral J satisfies

    J-I = C_N*K(a,b),
    K(a,b) = (H+L)*w1-H*L*w0-w2,
    0 <= K(a,b) <= (b-a)*(H-L)^2/4.

The first identity retains the SIGN of C_N. Only the approximation allowance is absolute. K's nonnegativity is derived by integrating `(H-exp(-u/2))*(exp(-u/2)-L)`; no Hermitian or source-positivity premise is used.

For a<b, the endpoint weights are

    lambda_a = [w1-L*w0]/(H-L),
    lambda_b = w0-lambda_a.

They satisfy lambda_a>=0, lambda_b>=0 and lambda_a+lambda_b=b-a. Thus

    J = lambda_a*p_N(H)+lambda_b*p_N(L).

The zero-width case is handled separately by totalized definitions yielding zero. Sample uncertainty is stable for THIS scalar readout: errors epsilon_a,epsilon_b cost lambda_a*epsilon_a+lambda_b*epsilon_b. No norm of a full polynomial decoder is introduced. This does not provide a uniform floating-point condition bound for evaluating the quotient formula; implementation roundoff and sample certification remain separate.

## 3. An unconditional summable bound for the curvature channel

The existing one-bounded arithmetic gives

    |M_N|<=N, 0<=D_N<=N, |C_N|<=4N^2,  N>=1.

Applying the pre-existing `cell_drift_bound` with m=N, radii sqrt(N+1),sqrt(N) gives

    4N^2*(1/sqrt(N)-1/sqrt(N+1))^2 <= 1/(N+1).

The source endpoints satisfy H-L<=1/sqrt(N)-1/sqrt(N+1). The logarithm inequality gives b-a<=1/N. Therefore

    |J-I| <= (b-a)*|C_N|*(H-L)^2/4
          <= 1/[4*N*(N+1)].

No Mobius cancellation estimate is used to prove this APPROXIMATION bound. The same finite argument would not imply cancellation for an arbitrary one-bounded input.

The exact tail calculation is

    sum_(N=start..start+length-1) 1/[4*N*(N+1)]
      = 1/(4*start)-1/[4*(start+length)].

`tail_cell_error` applies this to at most one selected subcell per successive birth. Starting at index R>=1, the whole remaining finite curvature allowance is at most 1/(4R). This controls the curvature tail, NOT the arithmetic contribution or a missing-zero tail.

On the old canonical partition of every nonnegative horizon T, define endpointSum(T)=sum J. The actual source consumer is then

    |endpointSum(T)-pickupCross(T)| <= 1/4,

and the exact signed defect remains available:

    endpointSum(T)-pickupCross(T) = sum C_N*K(a_N,b_N).

The constant 1/4 is a safe bound, not claimed optimal. All complete cells, the clipped last cell and zero-width final cases are included.

## 4. Concrete diffusion to the accumulated consumers

- `cellChord_eq_source_endpoints` identifies both endpoint observations with the original physical crossDensity, rather than an arbitrary model.
- `cellChord_sieved_error` applies the existing exact five-moment prime-square sieve preservation. No survivor normalization, lost winding, density premise or new sign-computation claim occurs.
- `rs_endpoint_error` uses the EXISTING RS polynomial identity on the two specified nodes H,L of the supplied code. Other symbols can remain for audits, but their accuracy is unnecessary for this scalar statement. The unobserved curvature is paid, not erased. With uniform error epsilon on the two source samples, the cell allowance is `(b-a)*epsilon+1/[4N(N+1)]`.
- `observedEndpointSum_error` aggregates the actual physical weights: total returned error is at most `T*epsilon+1/4`. It requires certified absolute error at every used endpoint, not merely small numerical discrepancies or fixed relative coefficient error.
- `endpointPickupSandwich` supplies the old graph sandwich with actual pickupCross, observed endpointSum and a proved constant error 1/4. The old range and new endpoint graphs have the SAME middle relation. `endpoint_range_unresolved_subset` applies evidence accumulation. These are not automatically same-zero matching edges.
- `endpointHybridUpper=min(endpointSum+1/4,oldHybridUpper)` is never worse than the old range/prime-pair upper. No previously counted negative credit is subtracted twice.
- `endpoint_subexponential_iff` proves that endpointSum and pickupCross have the same one-sided SubexponentialOn obligation on any unchanged region. For a fixed rate and T>=0, transfer increases its constant by at most 1/4. `riemannHypothesis_of_endpoint_good_scales` and the finite-cover consumer directly apply the existing RH return. Affine coverage and the all-positive-rate arithmetic estimate remain genuine premises.

## 5. Before and after, without conflating different suppliers

Exact three-coefficient quadrature retains zero curvature error and remains available. The earlier fixed-absolute-coefficient-error route costs 3*epsilon*T. The new route needs only two endpoint source observations, with total allowance epsilon*T+1/4; it does not claim universal domination because these are different observation hypotheses. With exact endpoints the allowance is uniformly 1/4, and its tail is 1/(4R), rather than an unresolved quadratic reconstruction error. These are improvements in approximation and the required observed data, not a new asymptotic cancellation theorem.

The remaining RH task is to bound the SIGNED endpoint sum, exact integral, rounded coefficient sum, or a compatible same-source regional upper at every positive exponential rate on affinely frequent outer times. One must not bound all endpoint contributions absolutely by default, infer smallness from positive quadrature weights, or equate this source with the reflected-source Landau family or finite zero-bin screw by notation.

## Verification

The two new files contain 11 definitions and 35 theorem scripts, including one private helper (46 lexical identifiers, not an elaborated census). Exact Git blobs:

- ExponentialQuadraticChord: `2ca4c53933943d2e44d92591499e9e49767e1b60`.
- PickupEndpointQuadrature: `973343c6ab098fc755ae4c2ae73ddcfb73f48f6c`.

The executed external diagnostic passed 5,768 exact mathematical assertions and four lexical checks, plus 2,062 separately labeled 80-digit checks. Exact fixtures include rational chord identities, positive measure moments, source coefficient bounds for actual Mobius through 1024, tail telescopes and a two-sample nonreconstruction control. High-precision physical-source cases run through inventory 256; the complete independent ordered-pair integral was evaluated through inventory 64. At T approximately 4.1640511455383269412, pickupCross is approximately -10.5808183298429154481 and endpointSum approximately -10.5939591096375863283. These are not interval-certified numerical values or asymptotic evidence.

No Lean, lake or elan executable was available on PATH. Compilation, fresh kernel replay and complete transitive axiom auditing remain NOT_RUN. The passive verification record must inspect the full imported closure, including newly integrated #1405. No operational script, log or accepted receipt is stored in math; no remote workflow or execution was dispatched. Connector-configured Git metadata is used, with no author/committer override claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c65b2892ab48697890cb9295e4582b51394f28c63159448fdf239bea0c78036 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
