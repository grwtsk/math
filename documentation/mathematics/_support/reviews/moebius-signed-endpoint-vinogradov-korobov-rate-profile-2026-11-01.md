# Full signed Möbius endpoint: classical stretched saving and fixed-exponent obstruction

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Mathematical status: complete real-variable derivation from the established unconditional Vinogradov–Korobov quantitative Mertens theorem; no new number-theory theorem or fixed exponent <1 is claimed. Lean compilation, fresh kernel replay, exact interface verification, and transitive axiom audit: NOT_RUN. RH: OPEN.

## Actual arithmetic object and source identity

Inspected grwtsk/math on main, including these exact source blobs:
- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean, 45e06c371d67bcf8c939d20a95fcbc63570546fa. Original moebiusReal, mertensPrefix, pickupVelocity, wholePickup, pickupEnergy, pickupDiagonal, pickupCross.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean, 2606536c56bdcb33d120aeddfbcbeef793e31ba1. Existing endpointSum_error and signed-defect; original five-moment signed physical-time chord, with all birth cells and last clipped zero-width cell.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareBridge.lean, be156509d9679a22b52b32d087f87d8449a047ef. Prior finite Abel/Mertens-square Lean source candidate, with all-rate input still unproved.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusBalancedEndpointRateOne.lean, c178ccb3f90f1e1b811a2386d3bdb09cba04d82a. Complete original rate-one ceiling and the balanced prime-dilation credit.
Related repository issue: https://github.com/grwtsk/math/issues/1406. Contemporary declared environment: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

Let M(x)=sum_{1<=n<=x} mu(n) with the genuine Mobius signs, F(u)=wholePickup(u), H(T)=pickupEnergy(T), D(T)=pickupDiagonal(T), X(T)=pickupCross(T), and E(T)=endpointSum(T). The existing literal source and its birth-zero response give, for u>=0,

    F(u)=integral_0^u exp(-v/2) M(exp v) dv
        =2 sum_{n<=exp u} mu(n)[n^(-1/2)-exp(-u/2)].
    H(T)=integral_0^T F(u)^2 du = D(T)+X(T).
    0<=D(T)<=2*T^2,   |E(T)-X(T)|<=1/4.

Both orientations of every original off-diagonal pair remain in X. Consequently the complete observed endpoint, without any fitted residual, obeys

    E(T) <= X(T)+1/4 <= H(T)+1/4.                    (1)

The quarter-unit is a source reconstruction allowance, not signed cancellation.

## General signed-prefix rate-profile transport (proved mathematical lemma)

Fix u0>=0, C>=0 and a>0. Let psi be continuously differentiable for u>=u0 and suppose that the REAL original Mobius prefix satisfies

    |M(exp u)| <= C exp(u-psi(u)),
    psi'(u) <= 1/2-a,               u>=u0.          (2)

Put f(u)=u/2-psi(u) and define

    B0=integral_0^u0 exp(-v/2)|M(exp v)| dv,
    A=B0 exp(-f(u0))+C/a,
    K=H(u0)exp(-2 f(u0))+A^2/(2a).

Then for every T>=u0,

    |F(T)| <= A exp(f(T)),
    H(T) <= K exp(T-2 psi(T)),
    E(T) <= K exp(T-2 psi(T))+1/4.                 (3)

Proof: f'(u)=1/2-psi'(u)>=a. Hence

    |F(T)| <= B0+C integral_u0^T exp(f(u))du
            <= B0+(C/a)[exp(f(T))-exp(f(u0))]
            <= A exp(f(T)),

using exp(f)'=f' exp(f)>=a exp(f) and monotonicity of f. Squaring gives
H(T)<=H(u0)+A^2 integral_u0^T exp(2 f(u))du.
Since (2f)'>=2a, the last integral is at most exp(2f(T))/(2a), and the H(u0) term is absorbed by monotonicity, giving the precise K. The final endpoint inequality follows from (1). The signed source is retained intact until the actual Mertens prefix is bounded. This lemma does not assert (2) without its separately proved arithmetic premise.

For the existing complete original signed prime-dilation compensated core, the three mutually recorded short-gap/ratio/slope packets have absolute bounds at most (32/epsilon^2)exp(epsilon*T) each. Thus the exact source identity R_outside-B_credit=X-Gap-Ratio-Slope gives

    R_outside(epsilon,T)-B_credit(epsilon,T)
      <= K exp(T-2psi(T))+(96/epsilon^2)exp(epsilon*T).    (4)

The negative prime credit is never deleted or counted twice; all dense remainder and both mixed orientations persist.

## Unconditional genuine signed arithmetic saving (established prior arithmetic)

The classical Vinogradov–Korobov zero-free region provides c,C>0 and x0 such that, for x>=x0,

    |M(x)| <= C x exp[-c (log x)^(3/5)/(loglog x)^(1/5)]. (5)

References: Arnold Walfisz, Weylsche Exponentialsummen in der neueren Zahlentheorie (1963), section V.5, Satz 3; Ethan Simpson Lee and Nicol Leong, New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function, arXiv:2208.06141, https://arxiv.org/abs/2208.06141 (v5, 2026-09-09); Fields Institute, https://www.fieldsinstitute.ca/talks/Explicit-Mertens-estimates. The arithmetic theorem is classical and external; no assertion of a Lean import of it is made.

For u>e let phi(u)=u^(3/5)/(log u)^(1/5), psi(u)=c phi(u). Direct differentiation gives

    phi'(u)=u^(-2/5)(log u)^(-1/5)[3/5-1/(5 log u)] -> 0.

Choose u0 sufficiently large to make (5) valid and psi'(u)<=1/4 for all u>=u0. Apply (3) with a=1/4. There is a finite source-dependent K so that for ALL T>=u0,

    H(T) <= K exp[T-2c phi(T)],
    E(T) <= K exp[T-2c phi(T)]+1/4.                (6)

For a fixed 0<epsilon<1, the second term in (4) is exponentially smaller than the first envelope, so the complete original R_outside-B_credit core also has this global stretched-exponential upper envelope. In particular, on the preselected, additively covering grid G={j log 2:j>=0},

    E(j log 2) <= K 2^j exp[-2c phi(j log 2)]+1/4

for all sufficiently large j; G has coverage alpha=1, beta=log 2. The improvement beyond the prior rate-one logarithmic-power bound is in the quantitative *lower-order exponent*, using the known stronger estimate (5), not in the leading exponential rate. This is a standard consequence of classical arithmetic, not a new zero-free result.

In fact phi(T)/T -> 0. For every fixed eta>0 the *upper envelope* exp(T-2c phi(T)) divided by exp((1-eta)T) tends to infinity. This proves the PRESENT ESTIMATE does not furnish a fixed exponent rho<1; it does not prove the ACTUAL endpoint cannot be smaller.

## Precise strict-rate supplier and analytic zero-free obstruction

For any fixed 0<eta<1, the additional source-specific, UNPROVED arithmetic bound

    |M(x)| <= C_eta x^(1-eta/2)  for all sufficiently large x

would allow psi(u)=eta*u/2 and a=(1-eta)/2 in the lemma, giving
E(T)<=K_eta exp((1-eta)T)+1/4 on all large T. Such a global Mobius power saving is not currently known unconditionally. At every positive eta approaching 1, the requisite standard Mobius bounds have RH-level strength. Neither (5) nor an unproved power-saving hypothesis is being asserted as proof of this new target.

Conversely, suppose 0<rho<1 and on all sufficiently large members S=j log 2 of the SAME fixed grid one has E(S)<=C exp(rho*S). By (1), D(S)<=2S^2 and monotonicity of H, for any large T choose S in [T,T+log2] and obtain

    H(T) <= E(S)+1/4+2S^2 = O(exp(rho*T)).          (7)

Cauchy-Schwarz on each unit interval makes the Laplace transform L(s)=integral_0^infinity exp(-s u)F(u)du analytic whenever Re s>rho/2. For Re s>1/2, termwise integration of the ACTUAL causal response, using absolute convergence of the Mobius Dirichlet series, gives

    integral_(log n)^infinity exp(-su)*2(n^(-1/2)-exp(-u/2))du
       = n^(-s-1/2)/(s(s+1/2)),
    L(s)=1/[s(s+1/2) zeta(s+1/2)].                 (8)

The identity theorem then implies zeta(z)!=0 for all Re z>(1+rho)/2 (excluding its pole at 1). A strict fixed-rate saving on the dyadic grid therefore establishes a GLOBAL fixed-width zero-free strip, not a finite-height computation. For general affine-frequent G with T<=S<=alpha T+beta, the same argument yields exponent alpha*rho globally; a nontrivial strip follows only if alpha*rho<1.

Replacing the true Mobius coefficients by all +1 gives M(x)=floor x, F(T)~2 exp(T/2) and H(T)~4 exp T. This hostile control shows that the unspecialized positivity/Gram mechanism alone cannot create a sub-one exponent; genuine signed arithmetic input is essential. The control is NOT claimed to be the real Mobius sequence.

## Status, novelty and next mathematical obligation

Compared with the previous actual-source rate-one bound and arbitrary logarithmic powers, (6) makes the stronger classical Vinogradov–Korobov exponent quantitatively explicit for the COMPLETE ordered endpoint and balanced R-credit, preserving the constant 1/4 and sparse packet costs. The method is elementary transport of established arithmetic; worldwide theorem novelty is not claimed. (8) supplies an independent, source-exact hostile analytic check showing why any strict fixed exponent on a covering grid is a significant open zero-free-region advance.

The outstanding user target is a NONCIRCULAR strictly sub-one fixed exponent on one fixed adequately covering G and, ultimately, every positive exponent. The full signed dense Möbius correlation bound that could supply this remains OPEN; no new proof of RH was obtained. All new claims are paper mathematics; no new Lean proof was added, no native runner, scheduler, or Noe queue was launched, and no verification status was promoted.
