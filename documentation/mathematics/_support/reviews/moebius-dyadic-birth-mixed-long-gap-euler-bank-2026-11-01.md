# Genuine remaining signed Möbius long-gap source: birth-window and growing-bank ledger

Research date: 2026-11-01 (U.S. Pacific local time). Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

**Classification:** ordinary mathematical argument plus Lean SOURCE_PROOF_CANDIDATES, not kernel acceptance. The exact original full signed all-positive-rate long-gap estimate and RH remain OPEN. No altered original Möbius sign, source rectangle, physical response, diagonal, additive-distance mask, terminal inventory, or positive surrogate operator is introduced.

## 1. Current exact source inventory and verification boundary

The analysis reads and retains exact Git blobs from the maintained grwtsk/math source:

- `MoebiusHighSmoothDensePairs.lean`, blob `cef7c06a794cec1cef423c2ebfa3b6d0221087ad`: original `highSmoothBlock B X T`, `lowSmoothBlock B X T`, real divisor cutoff Q_X, `maskedTaggedBlock`, full four-strata `taggedDenseRectangle_eq_four_smooth_strata`.
- `MoebiusHighSmoothRoughCollapse.lean`, blob `efd80d22fd4edda0c71add2ce29dd55433ee6fbb`: at Q_X>=1, every high rough coefficient is exactly zero and the high matched coefficient equals the original Möbius value; both mixed ordered orientations remain.
- `MoebiusFiniteSmoothEulerMoments.lean`, blob `f631ff881cc8f96542f286fa33ea008bb71a3d57`: source candidate of original finite Euler moments, without analytic Mertens premise.
- `MoebiusHighSmoothDenseGramBound.lean`, blob `907f5ab7725524c01375c3d64bdb43383f8f51b6`: source candidate of HH<=8*T*exp(2sqrt T)*V_B², with original physical Gram and original tags; the source was NOT compiled.
- `MoebiusBalancedTwoSidedPNTDense.lean`, blob `8abba800d86af6cee6065b11dfff52713ae85785`: original signed tagged coefficients, `balancedBlock`, `taggedDenseRectangle`, literal mask and original positive square-root Euler product.
- `MoebiusQuantitativeMertensAbsoluteAbel.lean`, blob `b2fe063451f58ff9b892aa164d780bd20279192e`: elementary `pickupResponse_le_two_inv_sqrt` and `invsqrt_range_sum_le_two_sqrt`. No quantitative Mertens hypothesis is consumed by these two elementary declarations.
- `LiouvilleDoubleAbelAnalyticGates.lean`, blob `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4`: positive-part source response, nonnegativity, monotone index response.
- `LiouvilleCausalPhysicalGramIntegrability.lean`, blob `e23f62fc60ce5867e4c183117162c59ff4989b6f`: literal original physical response integrability and exact original Gram identity.

The root imports, Lean v4.34.1 and pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` are not changed. The source scripts in these historical modules remain explicitly NOT_RUN through independent kernel replay; SOURCE_PUBLISHED never means ACCEPTED.

## 2. The correct physical birth-window, improving every dyadic Gram

Fix any original X>=1 and terminal T=log(2X). Every original index in `balancedBlock X T` obeys X<n<=2X, including all zero squareful Möbius coefficients. The original positive-index causal response satisfies

  r_n(u) = 0 when u < log n,
  0 <= r_n(u) <= 2/sqrt(n) <= 2/sqrt X for EVERY u.

Since log n>log X, r_n(u) is IDENTICALLY ZERO at all u<=log X. The original response Gram

  G_T(m,n) = integral_(u=0..T) r_m(u)*r_n(u)du

may therefore be split at the actual physical birth lower bound log X. The early integral is exactly zero. On [log X,T], the product is nonnegative and at most 4/X, and its interval length is

  T-log X = log(2X)-log X = log 2.

Consequently, for ALL original dyadic indices m,n in the clipped source,

  0 <= G_T(m,n) <= 4*log(2)/X.                      (1)

This sharpens the older source proof candidate G<=4*T/X for all shells beyond X=1 and applies also to low indices, not only high. It is a physical-time observation, NOT a new Gram or RH-equivalent arithmetic estimate. The new Lean source separates original shell membership, exact before-birth zero response, positive response upper, interval-integral splitting via pinned `intervalIntegral.integral_add_adjacent_intervals`, and the terminal log identity.

## 3. Signed original high/low packets: both orientations

Let H=highSmoothBlock B X T, L=lowSmoothBlock B X T, with the ORIGINAL finite bank B and T=log(2X). By the source membership, #L<=X, while the independently published genuine positive-divisor Euler count supplies

  #H <= sqrt(2X)*exp(sqrt T)*V_B,
  V_B = product_(p in B.primes)(1-p^(-1/2))^(-1).

The original independent Bool tags satisfy |taggedMoebius B.primes a n|<=1. Applying (1) termwise and the full rectangular Finset triangle bound to the literal off-diagonal signed masked packet, with any arbitrary finite excluded-gap mask A, gives

  |D_HL,ab(A;X,T)| <= (#H)(#L)*(4 log2 /X)
                    <= 4 log2 sqrt(2X) exp(sqrt T) V_B.  (2)

Exactly the same numerical allowance holds for D_LH,ab, with the OTHER original signed orientation explicitly counted, not inferred by swapping unequal tag coefficients. There is NO numerical cancellation assumption.

The source also improves the previously published high/high bound via the same actual birth window:

  |D_HH,ab(A;X,T)| <= 8 log2 exp(2 sqrt T) V_B².          (3)

The bound includes all genuine prime-bank dependence and preserves source m!=n, Nat.dist m n notin A, both ordered orientations, and squareful coefficient zeros.

The low/low packet has the elementary absolute upper

  |D_LL,ab| <= (#L)^2 (4 log2/X) <= 4 log2 * X,

which is still at exponential **rate one** (X=(exp T)/2). This is not a signed cancellation proof.

## 4. Exact signed residual — the genuine frontier, not a free remainder

The original tagged dense rectangle has the EXACT algebraic source decomposition

  D_full,ab = D_HH,ab + [D_LL,ab + D_HL,ab + D_LH,ab].  (4)

The new `signedLowLowAndMixedResidual` names ONLY the bracketed original signed source. The new `taggedDense_eq_HH_add_signedResidual` proves (4) without taking absolute values or changing any mask. Another declaration `signedHighTouch` identifies HH+HL+LH, and proves D_full=LL+highTouch, as well as the explicit combined absolute upper from (2)-(3).

At Q_X>=1, the original rough-tag high rows and columns vanish exactly by the prior collapse source. Consequently any surviving high face has a **matched** high coordinate; the mixed matched orientations and the full matched/matched sector remain. Neither the zero theorem nor the finite Euler bound handles their signed correlation.

**Empty-bank hostile control:** B.primes=empty is an admissible genuine prime bank. At Q_X>=1, the only empty-bank P-smooth positive integer is d=1<=Q_X, so H is empty and L equals the entire original source. Its rough tag is exactly moebiusReal. The new source proves these exact identities as candidates. Therefore a universal-in-B all-positive-rate bound for low/low is already an RH-strength source statement in the empty-bank case; assuming it as a “free residual” would be circular.

These equalities concern a single dyadic shell; cross-shell and global endpoint assembly require separately proved source transfers. The original complete all-positive-rate long-gap supplier remains OPEN.

## 5. Explicit varying-bank Euler penalty: unconditional subcritical regime

There is a genuine unconditional elementary bound for ANY finite true-prime bank P=B.primes. For a true prime p>=2, t_p=1/sqrt p satisfies 0<t_p<=3/4. Elementary algebra and exp(x)>=1+x imply

  1/(1-t_p) <= 1+4t_p <= exp(4t_p).

Multiplying over the full ORIGINAL bank, without omitting repeated smooth prime powers from the Euler cost, gives

  V_B <= exp(4 * sum_(p in B.primes) 1/sqrt p).       (5)

If all selected primes p<=Y, the original bank P is a subset of positive integers 1..Y. The existing elementary reciprocal-square-root telescope yields

  sum_(p in B.primes) 1/sqrt p
    <= sum_(n=1..Y) 1/sqrt n <= 2 sqrt Y.

Hence the exact explicit bank-budget conclusion

  V_B <= exp(8 sqrt Y).                               (6)

This is UNCONDITIONAL ordinary mathematics and new Lean SOURCE PROOF CANDIDATE; it uses neither prime counting nor Mertens cancellation.

Combining (2),(3),(6) at T=log(2X) yields

  |HL|,|LH| <=4 log2 * exp(T/2 + sqrt T + 8 sqrt Y),    (7)
  |HH| <=8 log2 * exp(2 sqrt T + 16 sqrt Y).            (8)

If Y=Y(T) satisfies sqrt(Y(T))=o(T), these are rate 1/2+o(1) and o(1), respectively. The precise finite Lean budget `8 sqrt(Y)<=epsilon*T` implies `V_B<=exp(epsilon*T)`; no unspecified C absorbs a changing bank.

**Important limit:** The elementary bound (6) does not suffice at the previously proposed near-critical cutoff Y(T)=T²(log T)^alpha with 0<alpha<2. Substituting gives a cost of order exp(T*(log T)^(alpha/2)), NOT exp(o(T)). A stronger theorem is required. Do not misidentify (6) as a near-critical proof.

## 6. Near-critical route via pinned Chebyshev, kept as separate Lean obligation

Pinned Mathlib `Mathlib/NumberTheory/Chebyshev.lean`, blob `0c70e9d4de7e8d454df1a5840334ef3e0dcbf777`, contains `Chebyshev.pi_le_log4_mul_div`:

  pi(floor x) <= log(4)*x/log(sqrt x) + sqrt x, x>1.

For x>=16, using log x<=sqrt x and 2log4+1<5 gives the simpler bound pi(x)<=5x/log x.

For real y>=256, let S(y)=sum_(prime p<=y) p^(-1/2), split at sqrt y. The lower portion is at most sum_(n<=sqrt y) n^(-1/2)<=2 y^(1/4). Summation by parts on the upper portion (primes sqrt y<p<=y) gives

  S_high(y) <= pi(y)/sqrt y +
              (1/2) integral_(sqrt y..y) pi(t)/t^(3/2)dt
            <= 5 sqrt y/log y +
              (5/2) integral_(sqrt y..y) 1/(sqrt t log t)dt
            <= 15 sqrt y/log y,

since on t>=sqrt y the denominator log t >= (1/2)log y, and integral_(sqrt y..y) 1/sqrt t dt <=2 sqrt y. The early bound 2 y^(1/4) <=4 sqrt y/log y follows from log y<=2 y^(1/4), valid y>=256. Therefore

  S(y) <= 19 sqrt y/log y, y>=256.                (9)

Then by (5) for any bank P contained in primes<=Y (integer Y>=256),

  V_B <= exp(76 sqrt Y/log Y).                     (10)

In particular if Y(T)=O(T²(log T)^alpha) with fixed alpha<2 and Y(T)->infinity, sqrt(Y(T))/log(Y(T))=o(T). Thus (10) yields V_B=exp(o(T)), including near-critical positive alpha<2. This is an ORDINARY mathematical derivation from the pinned Chebyshev theorem and finite Abel summation. The intermediate weighted-prime theorem (9) has **not** been compiled/formalized as a Lean proof. The new source declares it only as `ChebyshevPrimeSqrtMassFormalizationTarget : Prop`, and proves (10) **conditional on that precisely typed proposition**. No axiom, sorry, concealed supplier or unconditional Lean claim is introduced for the near-critical extension.

## 7. Independent finite hostile diagnostic

Local Python script `/mnt/data/moebius_mixed_long_gap_bank_preflight.py`, SHA256 `a460f5099ee8c75b1e033a2d5a9a4edff889d960276cc034f637a2ff4963e512`, and result JSON `/mnt/data/moebius_mixed_long_gap_bank_preflight_result.json`, SHA256 `42e091e67c82f94f189d44faecb9191b1a6fbffaad6daea1cb64970a951894ad`, were actually generated and executed.

All seven true finite-prime banks (including empty), X=1..70, all four ordered true rough/matched Bool tag pairs and four arbitrary additive distance masks were evaluated with the exact integer original Möbius coefficients, full source shell/high/low filter and the ORIGINAL causal response-product integral evaluated in floating real arithmetic.

**PASS, 156,979 tested assertions:** 116,795 original Gram log2-window bounds; 490 Euler bank and prime-mass checks; 490 exact high/low source carrier counts; 7,840 full signed original four-strata identities; 15,680 independently ordered masked HL/LH estimates; 7,840 sharpened HH upper checks; 7,840 LL trivial upper checks; and four sample weighted Chebyshev mass tests at Y=256,300,1000,10000. No observed counterexample. Largest observed mixed-to-bound fraction ~1.2334e-5, HH fraction ~7.7485e-5, Gram/window fraction ~0.02899, and complete reconstruction floating residual 0 in tested fixtures. Integer signs/divisors are exact; the original Gram and exponential comparisons are DOUBLE PRECISION, not certified enclosures. Diagnostics do not prove any global arithmetic theorem or Lean acceptance.

## 8. Verification and next real arithmetic obstruction

The new source modules, their explicit finite bank budget, high-touch upper, genuine residual and empty-bank hostile control are LEAN SOURCE PROOF CANDIDATES, NOT verified theorems. Neither Lean, Lake nor elan was available in the local execution environment; no Noe native runner, GitHub CI or scheduler was dispatched.

Required checks: pinned Lean full module compilation and transitive closure; exact expected theorem types; source and Mathlib/API coercions; fresh independent kernel replay; transitive private/opaque/unsafe/axiom audit. The weighted near-critical Chebyshev mass (9) remains separately open in Lean until its finite Abel summation is ported.

The remaining real mathematical challenge is **signed cancellation** in D_LL+D_HL+D_LH (including matched high/low for Q_X>=1), cross-shell reconstruction and global fixed-covering-scale all-positive-rate return. The absolute HL/LH rate 1/2+o(1) is insufficient for every epsilon>0; neither prime-bank cost nor birth geometry alone resolves the complete signed endpoint. No RH conclusion is claimed.

**Status:** ORDINARY_MATHEMATICS_COMPLETE_FOR_LOG2_MIXED_ABSOLUTE_AND_EULER_BUDGET; SOURCE_PROOF_CANDIDATE; CHEBYSHEV_WEIGHTED_PRIME_SUM_LEAN_OPEN; COMPLETE_SIGNED_LL_MIXED_ALL_RATE_OPEN; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; RH_OPEN.
