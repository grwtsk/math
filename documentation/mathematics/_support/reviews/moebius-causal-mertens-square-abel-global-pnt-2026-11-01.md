# Original Möbius causal response: finite Abel transport, positive Mertens-square majorant and unconditional rate-one logarithmic savings

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Disposition: complete elementary finite and real-variable mathematical proof; exact-source Lean proof candidates for the finite Abel, positive-drop, pointwise L1 and weighted-square steps. The whole-time energy comparison and classical quantitative PNT consequence are WRITTEN MATHEMATICS, NOT newly compiled Lean theorems. RH remains open.

## 1. Exact maintained arithmetic and physical-time source

Inspected grwtsk/math/main at commit 390c113801a89c5eed241864187477035a5f484d, Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

The ORIGINAL source in GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean, blob 45e06c371d67bcf8c939d20a95fcbc63570546fa, defines
  moebiusReal n = ArithmeticFunction.moebius n,
  mertensPrefix x = sum_(1<=n<=floor x) moebiusReal n,
  pickupVelocity u = exp(-u/2)*mertensPrefix(exp u),
  wholePickup T = integral_0^T pickupVelocity u du,
  pickupResponse n u = 2(n^(-1/2)-exp(-u/2)) if log n<=u, 0 otherwise,
  pickupEnergy T = integral_0^T wholePickup(u)^2 du,
  pickupCross T = complete ordered original off-diagonal sum of mu(m)mu(n)pickupResponseGram(T,m,n).

The SAME source and existing LogarithmicPickupSampling/Series modules prove the finite-horizon source identity identifying wholePickup(u) with the sum of original coefficients mu(n) times their causal responses over all born indices. The full Gram equals the original energy, while diagonal terms are nonnegative. The earlier PickupMertensAbel.lean, blob 279a189f0665afc480397eeeb3de3b6c1bba9355, proves an exact Abel formula for the integer-logarithmic SAMPLED residue (not this complete time-dependent response energy).

The unchanged GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelAnalyticGates.lean, blob b4bd9a83c83603faa5eff5326d9a99ec35dae2d4, proves for every n>=1 and real u that pickupResponse(n,u) is nonnegative and pickupResponse(n+1,u)<=pickupResponse(n,u). In particular the actual birth drop d_k(u)=r_k(u)-r_(k+1)(u)>=0. The result here consumes these genuine source facts, not an invented antitone model.

Concurrent grwtsk/math source MoebiusBalancedTwoSidedPNTDense.lean, current blob 8abba800d86af6cee6065b11dfff52713ae85785, already derives in its mathematical review an unconditional two-sided logarithmic saving for BALANCED terminal dyadic rectangles, with all rough/matched orientations and finite prime banks. Its quantitative Mertens-to-dyadic, Abel and finite integral bridges remain NOT FORMALIZED in Lean. The present increment is DIFFERENT: one complete all-index causal amplitude at every real time, the original Mertens-square positive majorant, and a GLOBAL upper bound on the complete original signed pickupCross at exponential rate one. It does not claim the balanced dyadic theorem was missing or silently replace it.

## 2. The exact original finite Abel identity with the terminal face

Let a_n=mu(n) be the true coefficients, M_k=sum_(1<=n<=k)a_n. For any integer N>=0 and real u set S_N(u)=sum_(1<=n<=N)a_n r_n(u). The exact finite summation by parts identity is

  S_N(u) = M_N*r_(N+1)(u)
         + sum_(k=1..N) M_k*(r_k(u)-r_(k+1)(u)).             (1)

Proof: Write mu(n)=M_n-M_(n-1), M_0=0; substitute and telescope both complete finite sums. Alternatively prove (1) by induction on N: the change at N+1 is mu(N+1)r_(N+1), and the new M_(N+1)r_(N+2) plus M_(N+1)(r_(N+1)-r_(N+2)) adds exactly M_(N+1)r_(N+1). This is independent of the Möbius sign distribution and is not a source-free positive surrogate. It keeps the original terminal M_N*r_(N+1) until it is actually zero.

For physical horizon T and any u<=T, put N=floor(exp T). The next integer N+1 is NOT yet born: exp(u)<=exp(T)<N+1, hence r_(N+1)(u)=0 even at the terminal boundary. Therefore

  S_N(u) = sum_(k=1..N) M_k*d_k(u),                         (2)
  d_k(u)=r_k(u)-r_(k+1)(u)>=0.

The original actual Mertens coefficients survive in their correct signed form. Every squareful n has mu(n)=0 without removal of its original inventory position; negative and positive M_k can cancel in (2).

Two exact consequences are:

  |S_N(u)| <= sum_(k=1..N)|M_k|*d_k(u),                    (3)

and, from the weighted Cauchy-Schwarz inequality and the source telescope sum_(k=1..N)d_k(u)=r_1(u),

  S_N(u)^2 <= r_1(u)*sum_(k=1..N)M_k^2*d_k(u).             (4)

The term-by-term upper bound in (3) is sharper for a given pointwise envelope than (4). Neither is itself an RH-strength arithmetic estimate; a bound on M_k is a SEPARATE arithmetic input. The Lean source actually writes candidate proof bodies for (1), drop positivity and telescoping, (3), the source-prefix equality and (4). It also writes the terminal vanishing proof. Their local compiler/kernel status is NOT_RUN.

## 3. A genuine source-preserving whole-time Mertens-square majorant

For T>=0 and N=floor(exp T), the unchanged source defines pickupEnergy(T)=integral_0^T S_N(u)^2 du. The integer cutoff N is fixed throughout this finite time integral and every unused response is exactly zero on [0,T].

Integrate the nonnegative finite estimate (4). Finite addition and interval integration commute because the original pickupResponse functions are continuous across their birth times. The product r_1(u)d_k(u) is integrable; its integral is the ORIGINAL source Gram difference

  integral_0^T r_1(u)d_k(u)du
   = pickupResponseGram(T,1,k)
       - pickupResponseGram(T,1,k+1).

By the already proved antitone response, the difference is nonnegative. Hence the exact whole-source bound is

  pickupEnergy(T)
    <= sum_(k=1..N)M_k^2*
          [pickupResponseGram(T,1,k)
            - pickupResponseGram(T,1,k+1)].                 (5)

This is a concrete, unconditional positive SINGLE-index majorant of the full physical-time signed Möbius Gram, with no arbitrary scale/G choices, no reindexing of the source signs and no positive-definite claim about each signed term. It is weaker than (3) for large Mertens envelopes but is useful as a direct observable positive Mertens-square supplier.

The new source defines OriginalCausalMertensSquareEnergyTarget, exactly (5), as a PROP FORMALIZATION TARGET rather than a theorem. The source-level wholePickup horizon identification and actual finite interval-integral exchange remain to be elaborated into a Lean proof. This distinction is essential: (5) is fully proved here as ordinary finite real analysis, but NOT certified by a fresh Lean kernel.

## 4. Classical unconditional quantitative PNT gives GLOBAL rate-one log savings

Classical unconditional zero-free-region bounds for the Riemann zeta function give, for EVERY integer A>=1, a constant C_A>=1 such that for all real x>=1,

  |M(x)| <= C_A*x/(1+log x)^A.                              (6)

This is a standard consequence of the Vinogradov-Korobov zero-free region, not of RH; it is weaker than M(x)=O(x^(1/2+δ)), whose general validity is RH-strength. References: A. Walfisz, Weylsche Exponentialsummen in der neueren Zahlentheorie (1963), §V.5 Satz 3; Ethan Simpson Lee and Nicol Leong, New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function, arXiv:2208.06141v5 (2026-09-09), https://arxiv.org/abs/2208.06141. These are external arithmetic suppliers, not imported/verified Lean theorems in this increment.

Use the ACTUAL wholePickup definition, not a new kernel. For u>=0, substitution x=exp(t) in the original velocity integral gives the exact identity

  wholePickup(u) = integral_1^(exp u) M(x)*x^(-3/2) dx
                 = integral_0^u M(exp t)*exp(-t/2) dt.      (7)

With (6), the absolute value in (7) is at most C_A times

  integral_0^u exp(t/2)/(1+t)^A dt.

Split the integral at t=u/2. The first interval is at most 2exp(u/4). On the second, 1+t>=(1+u)/2 and its integral is at most

  2^(A+1) exp(u/2)/(1+u)^A.

Hence, for all u>=0,

  |wholePickup(u)|
   <= C_A[2exp(u/4)+2^(A+1)exp(u/2)/(1+u)^A].             (8)

Squaring (8) and integrating from 0 to T, split once more at u=T/2. Exponential domination of polynomial factors gives a finite constant D_A>0 with

  pickupEnergy(T) <= D_A*exp(T)/(1+T)^(2A)                 (9)

for every T>=0. Explicitly, the early u contribution is O_A(exp(T/2)), and the later contribution is O_A(exp(T)/(1+T)^(2A)). The early term is absorbed by exp(T)/(1+T)^(2A), because sup_{T>=0} (1+T)^(2A)exp(-T/2) is finite (achieves its maximum at T=4A-1).

The original source Gram identity gives
  pickupCross(T)=pickupEnergy(T)-pickupDiagonal(T)
and pickupDiagonal(T)>=0. Thus

  pickupCross(T) <= D_A*exp(T)/(1+T)^(2A).                 (10)

For any desired integer β>=1 choose A>=β. Then there is C_β>=0 such that for EVERY T>=0,

  pickupCross(T) <= C_β*exp(T)/(1+T)^β.                   (11)

This is a genuine unconditional source-preserving **global logarithmic-power saving at exponential rate ONE**, not merely on balanced dyadic shells. The source defines ClassicalMertensLogPowerInput and OriginalBalancedPNTLogPowerTarget at their exact real and integer quantifiers. The PNT/Mertens estimate and the final integration are ordinary mathematical arguments; neither is claimed as an exported Lean theorem or native verification result.

Critically, rate-one logarithmic savings do NOT imply the required all-positive-rate bound C_δ exp(δT) for every δ>0. For example, exp(T)/T^β grows faster than exp(δT) when δ<1. The RH arithmetic supplier on fixed adequately covering scales remains OPEN. No off-critical zeta zero is excluded by this new bound.

## 5. Independent finite validation and hostile controls

The exact rational finite Abel/CS diagnostic at /mnt/data/mobius_causal_abel_exact_preflight.py (SHA256 46b83474d01297b2a5960eb4756185a6981e2b242137344b4a0a81fe5d040c26) passed 14,140 checks for arbitrary {-1,0,1} signed coefficients and rational monotone nonnegative weights. It includes exact NONZERO terminal cases and all positive-drop/L1/weighted-square cases.

The separate physical causal diagnostic /mnt/data/mobius_causal_mertens_square_preflight.py (SHA256 cbc72572deea7e7e013f3816f1d08f210d12e2c498ee8aa0de40db7e297732f3) passed 1,266 finite checks of the actual μ and positive-part source response, and the original exact-antiderivative real Gram energy at representative horizons N=1,2,3,7,19,31,64,100,133,256. The full source energy remained nonnegative and below (5), with e.g. N=100 energy ≈1.375944957 versus majorant ≈12.362446917. Floating checks are not certified interval enclosures; only the rational diagnostic is exact arithmetic.

Hostile control: replacing the true μ by the noncancelling constant +1 leaves the elementary finite Abel identity valid, but no classical Mertens saving (6) remains; the unrestricted prefix M(x)=floor x makes the rate-one logarithmic saving unavailable. Replacing the source pickupResponse by an arbitrary sign-changing response also destroys d_k>=0 and invalidates (3)-(5). Retaining the true terminal term in (1) is required if N is not the complete physical-time inventory. All original Möbius squareful zeros, diagonal, birth times and both ordered orientations are preserved through the actual full Gram identity.

## 6. Comparison, logical status and next genuine arithmetic obligation

This is not another packet split of negative prime-star edges or their forced positive compensation. It is a complete ORIGINAL signed-source cancellation transport through a positive sequence of causal response drops, whose arithmetic input is the independent Mertens prefix. It closes the FINITE time-slice Abel step and supplies a new mathematical whole-time positive-energy upper estimate and a noncircular classical PNT rate-one bound. The earlier two-sided dyadic PNT result treats separately rough/matched blocks and prime-bank factors, not the global original wholePickup integral. The sampled-source Abel theorem has a different domain and endpoint coefficient.

Formal verification: source candidate exact finite Abel / L1 / square proof bodies WRITTEN; global energy comparison (5) and quantitative classical PNT conclusion (11) ORDINARY MATHEMATICAL PROOFS WRITTEN, not Lean proved; original source identification and finite integration remain NOT FORMALIZED; compilation NOT_RUN, expected types NOT_RUN, fresh kernel NOT_RUN, transitive axiom audit NOT_RUN. Neither RH nor BSD is proved.

The strongest actionable next work is to formalize the existing wholePickup source/horizon identification and actual interval-integral exchange to turn (5) into a checked theorem; then import the independently established quantitative Mertens bound and formalize (8)-(11). Any proposed promotion to the true all-positive-rate RH supplier requires new arithmetic strength beyond classical PNT, with the complete signed endpoint and balanced negative/positive sectors still retained.