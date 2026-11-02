# Original Möbius coefficient bridge, inverse-majorant gate, and incomparable gcd/lcm source

Research date: 2026-11-01 (America/Los_Angeles). Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. SOURCE PROOF CANDIDATES; NOT Lean compiler/kernel accepted.

## Exact pins and invariant source

Current original coefficients: ArithmeticFunction.moebius, cast as moebiusReal, in MertensPrimitive.lean (blob 45e06c371d67bcf8c939d20a95fcbc63570546fa). Original response r_n, true Gram K_T(m,n), original signed pickupCross, exact endpoint inventory and diagonal separation are unchanged. The prior radical transfer source is MoebiusDivisorPNTTransfer.lean (blob 3aed2ced84fd353f4738dee414b1bc77e6f225d1), and the inverse source is MoebiusDivisorRadicalReversible.lean (blob 41321666e299d71f2eb1e24ee6eae260b2d60188). Toolchain Lean 4.34.1 and pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; no migration.

## 1. Original weighted coefficient identity: full new Lean proof-script candidate

The actual source coefficient is

  b(n) = mu(n) * C(n),
  C(n) = sum_(d|n) mu(d)/sqrt(d).

The actual radical arithmetic function is

  h(n)=1/sqrt(prod_(p|n) p)  [n>=1], h(0)=0.

The new file MoebiusDivisorCoefficientBridge.lean contains a full by-proof candidate for the EXACT EXISTING proposition

  OriginalWeightedRadicalConvolution =
    forall n>0, (h*mu)(n)=b(n).

It preserves n=1, every prime-power zero, zero carrier and original divisor sum. The proof strategy is source-specific and references pinned Mathlib:

1. Real.sqrt_prod identifies h with ArithmeticFunction.prodPrimeFactors (fun p => 1/sqrt p). The latter is genuinely multiplicative, by IsMultiplicative.prodPrimeFactors.
2. The reciprocal-root arithmetic function n -> 1/sqrt n for n>=1 is multiplicative. The genuine C(n) is a zeta convolution with mu pointwise multiplied by that function. Thus C and b are multiplicative.
3. At prime p: C(p)=1-1/sqrt p, b(p)=1/sqrt p-1, and (h*mu)(p) has the same value.
4. At p^k for k>=2: b(p^k)=0 because original mu(p^k)=0; (h*mu)(p^k)=h(p^k)-h(p^(k-1))=0 because h takes the same p^(-1/2) on all positive powers.
5. Pinned IsMultiplicative.eq_iff_eq_on_prime_powers identifies the TWO COMPLETE arithmetic functions, not a sampled finite surrogate.

The source includes explicit finite two-term sum proof and a genuine Nat.divisorsAntidiagonal/prime-power path. It supplies the public theorem candidate originalWeightedRadicalConvolution_proof : OriginalWeightedRadicalConvolution with no unproved arithmetic argument parameter and no sorry. HOWEVER, no Lean compiler/elaborator was available; this is a PROPOSED by-proof, not a verified Lean theorem. The proof needs the exact pinned rw/simp normal forms checked by compilation, including sqrt product casts, prime-power divisor enumeration, and source integer casts.

## 2. Inverse majorant: remaining exact Lean factorization, not closed

The previous real arithmetic Dirichlet inverse g=h^{-1} exists in pinned Mathlib because h(1)=1. Its mathematical local formula is

  g(p^k)=-p^(-1/2)*(1-p^(-1/2))^(k-1), k>=1.

It follows multiplicatively that

  g(n)=prod_(p^k||n) [-p^(-1/2)*(1-p^(-1/2))^(k-1)],
  |g(n)|<=h(n).

The new MoebiusRadicalInverseMajorantGate.lean explicitly declares the precise global factorization as RadicalInverseFactorization, an UNPROVED Lean Prop, and gives a full source proof candidate of

  RadicalInverseFactorization -> RadicalInverseCoefficientMajorant.

It uses 0<=p^(-1/2)<=1 for genuine primes, 0<=(1-a)^k<=1 and finite ordered product comparison, keeping the original n=0 case. It also removes the coefficient bridge hypothesis from the finite original weighted-prefix return BY USING the new proposed originalWeightedRadicalConvolution_proof.

**Do not misreport:** The inverse majorant has NOT been closed unconditionally in Lean. The remaining actual obligation is the factorization of the pinned Dirichlet inverse (including its multiplicativity and local prime-power recursion). The earlier named RadicalInversePrimePowerFormula remains unproved Lean source. A conditional bound is not an unconditional theorem. No axiom is introduced.

## 3. Return to original dense incomparable signed source

The PINNED Mathlib theorem IsMultiplicative.lcm_apply_mul_gcd_apply applied to the TRUE Möbius function yields for all m,n:

  mu(m)*mu(n)=mu(gcd(m,n))*mu(lcm(m,n)).

This retains squareful zeros and both orientations. The new MoebiusIncomparableGcdLcm.lean provides source proof candidates:

  incomparableGcdLcmKernel(T) = incomparableOrderedPacket(T),
  pickupCross(T) = originalOrderedDivisibility(T) + incomparableGcdLcmKernel(T).

The full signed incomparable packet is summed only over original 1<=m,n<=floor(exp T), m!=n, and neither m|n nor n|m. The original K_T(m,n) is unmodified. There is NO positivity assertion about this incomparable packet. As hostile nonunit fixtures, (m,n)=(2,3) has positive sign, whereas (2,15) has negative sign; both are incomparable.

For T>=0, the original full causal energy obeys H(T)=D(T)+pickupCross(T)>=0, with 0<=D(T)<=2T^2. The source-level necessary signed compensation is

  incomparableGcdLcmKernel(T) >= -D(T)-originalOrderedDivisibility(T)
                            >= -2T^2-originalOrderedDivisibility(T).

This is a LOWER bound on the remaining signed packet and does not provide the missing upper bound needed for RH.

A further ordinary-mathematical primitive-pair identity is available for later formalization: write d=gcd(m,n), m=d*a, n=d*b with a,b>1 and gcd(a,b)=1. When mu(m)*mu(n) != 0, also gcd(d,a*b)=1 and mu(m)*mu(n)=mu(d)^2*mu(a)*mu(b). For d>=1 and active pairs, source dilation gives K_T(d*a,d*b)=K_(T-log d)(a,b)/d. Consequently incomparable correlation is a positive common-divisor harmonic weighted superposition of ORIGINAL signed primitive coprime pair packets, with a,b>1, gcd(d,a*b)=1 and all endpoint clocks retained. This is PAPER ONLY, not a source-level Lean theorem in the three new files, and does not imply primitive cancellation.

## 4. Independent checks

Actual 64-bit floating calculations through n<=6000:
- maximum |mu(n)C(n)-(h*mu)(n)|: 2.185751579730777e-16;
- maximum |(g*h)(n)-1_(n=1)|: 7.24247051220317e-17;
- maximum |(g*b)(n)-mu(n)|: 4.440892098500626e-16;
- maximum numerical violation of |g(n)|<=h(n): 5.551115123125783e-17 (roundoff).

An independent exact Fraction test replaces each prime-local a_p=1/sqrt(p) by rational a_p=1/(p+1): b=mu*h, g*h=1 and g*b=mu hold exactly for n=1..192, or 576 exact rational checks. There are 12,442 original Möbius gcd/lcm pair checks with lcm<=6000 and 0 violations.

Actual original finite causal Gram at T=log(B), with both orientations, and exact original divisibility mask:
- B=8: full=-1.4812378030; div=-1.8496484071; incomparable=+0.3684106041.
- B=16: full=-3.6181071585; div=-5.4797308027; incomparable=+1.8616236442.
- B=32: full=-6.6415822076; div=-11.9185082231; incomparable=+5.2769260155.
- B=64: full=-10.5482011203; div=-21.7963697786; incomparable=+11.2481686583.

These are numerical finite checks, not rigorous interval arithmetic, not infinite estimates, and NOT Lean kernel verification.

Preflight script SHA256 ab2bb0caddf295d951656bb93d5d071dc8772294b6e3aff6f84f7e8f90213064, result SHA256 a613e1271e36c1e7607f3b4214ef6c2c24413528d78da5787e33f7545a295415. Incomparable original-Gram check script SHA256 10f30529a0cc1cbd5350fd5c0e11900102e2b45f2d8e5ea07dadea00c20d0555, result SHA256 f307cc055aa2f180f5dae4c8bf31e3493808da667e2da989a4fb894bc38e700d.

## 5. Exact remaining work and trust status

For source candidate bridge: compile against PINNED Mathlib; repair only genuine elaboration errors, fresh kernel replay and transitive axiom audit. Proof script existence without kernel acceptance is NOT closure.

For inverse: actually prove RadicalInverseFactorization from the pinned Dirichlet inverse (not merely add the formula as hypothesis) to discharge the existing RadicalInverseCoefficientMajorant. The conditional bridge does not count as completion.

For RH: obtain a genuinely new one-sided, every-positive-rate upper bound on the TOTAL original signed pickupCross = originalOrderedDivisibility + incomparableGcdLcmKernel, over one fixed affinely frequent scale set. The gcd/lcm recoding and energy-forced lower bound do not supply this upper bound, and the reversible radical transform is RH-equivalent at the Mertens exponent scale.

No original source altered, no root import/toolchain/foreign repo mutation, no CI/native runner/scheduler dispatched. Compilation, expected types, fresh Lean kernel and transitive axiom audit remain NOT_RUN. RH OPEN.
