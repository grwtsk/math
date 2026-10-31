# Sharpness of causal square-divisor reversal and its Mellin multiplier

Local attribution: grwtsk contributors. Mathematical investigation: 2026-10-31.

**Claim scope.** Exact finite scalar causal tests are represented as additive
Lean SOURCE PROOF CANDIDATES. The full operator norm computation, its sharp
asymptotic witness, and the complex Fourier/Laplace identities below are
mathematical analyses, NOT Lean-checked theorems. No arithmetic upper bound,
no unconditional RH return and no new cancellation theorem are claimed.
Compilation, expected interfaces, fresh kernel replay and transitive axiom
audit: NOT_RUN.

## 1. The source and mathematical motivation

Existing signed source:
- `LiouvilleCausalEnergyTarget.lean` (Git blob
  `a00aaa07c067b4c88203372870b5d5d151de0de4`) retains literal
  `ArithmeticFunction.liouville` and original `CCC.pickupResponse`.
- `LiouvilleDoubleAbelCausalKernel.lean` (blob
  `b102b4af07b0a1001424b084101c2cc16077181a`),
  `LiouvilleDoubleAbelAnalyticGates.lean` (blob
  `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4`) and
  `LiouvilleDoubleAbelBoundaryClosure.lean` (blob
  `54dc35f79844d1fbfc59f5b408f7e06039c0e812`) preserve
  the complete signed positive-gap rectangle transport.
- `LiouvilleSquareDivisorReverseCounting.lean` (blob
  `feae1ca93e3a21ebc033da05e14fe1e2f77c6b2d`)
  gives the candidate literal scaling
  `r_(d^2*k)(u)=d^-1*r_k(u-2*log d)`, finite factor reversal,
  and OPEN coefficient/waveform/energy Lean gates.
- `FiniteResponseSum.lean` (blob
  `15402baec3be3c090a23f9ac1943124e16357dd0`)
  supplies the original Möbius response-sum expression for the
  nonnegative-time `CCC.wholePickup`.

The motivating video https://www.youtube.com/shorts/MyFAueaAhaA demonstrates
reverse incidence counting, but supplies neither arithmetic lemmas nor
the proofs below. Classical Möbius and Liouville Dirichlet series in the
absolutely convergent half-plane are documented in NIST DLMF §27.4,
https://dlmf.nist.gov/27.4 (equations 27.4.5, 27.4.7).

The object studied here is the square-divisor delay operator itself.
This is an obstruction/classification for *sign-free* estimates.
It is not another purported RH proof, nor a proof that arithmetic
Liouville/Möbius signals exhibit the hostile test behavior.

## 2. Exact cutoff and its finite Lean proof candidates

For a finite positive-index set D, real coefficient a(d), and any real
test function f, define

  S_(D,a) f(u) = sum_(d in D) a(d)/d * f(u-2 log d).

The source imports the previous original-response scaling and proves
at source-script level for every k>=1 and every positive D:

  sum_(d in D) a(d)*r_(d^2*k)(u)
    = S_(D,a) [r_k](u).

The same source defines the exact causal constant
  c(u)=1 if u>=0, 0 otherwise
and the causal exponential
  e_sigma(u)=exp(sigma*u/2) if u>=0, 0 otherwise.

Set D(u)={1,...,floor(exp(u/2))}. Every d in D(u) obeys
  u-2 log d >=0,
**including equality at birth**, so the finite operator has exact
observable values

  S_(D(u),1)c(u)=sum_(d in D(u))1/d=H_floor(exp(u/2))

and for every scalar coefficient a(d), every real sigma and all u,

  S_(D(u),a)e_sigma(u)
   =exp(sigma*u/2)
      *sum_(d in D(u)) a(d)/d *exp(-sigma*log d).

In particular no sign of a(d) is removed by the finite exponent test.
The source's new cutoff, constant, exponential, and response-return
theorems are ordinary proof scripts, not accepted compiled terms.

## 3. Pinned harmonic inequalities yield pointwise sharpness

The actual imported Mathlib `NumberTheory.Harmonic.Bounds` declares

  log_add_one_le_harmonic(n): log(n+1)<=harmonic(n)
  harmonic_le_one_add_log(n): harmonic(n)<=1+log(n)

and the derived
  log_le_harmonic_floor(y) for y>=0
  harmonic_floor_le_one_add_log(y) for y>=1.

Use these with y=exp(u/2) for u>=0. The finite exact result becomes

  u/2 <= S_1 c(u) <= 1+u/2.

The source-level Lean continuation proves both inequalities using the
pinned `harmonic_eq_sum_Icc` conversion and the original floor cutoff.
For u<0 its pointwise *lower* inequality remains valid (the left
side is negative, the source sum empty); the upper inequality is
intentionally restricted to u>=0.

The causal constant c is discontinuous at u=0. The ORIGINAL response
r_1(0)=0, while c(0)=1. The witness is an arbitrary-signal obstruction,
not an alternative literal pickup response.

## 4. Exact finite-horizon L² lower and upper bounds

For general f supported on [0,infinity), let
 S_1 f(u)=sum_(d<=exp(u/2))f(u-2 log d)/d.
For T>=0, every delay contracts the L²[0,T] norm:
  ||f(.-h)1_(.>=h)||_(0,T) <= ||f||_(0,T).
A triangle inequality over d<=exp(T/2) and the harmonic upper bound
give
  ||S_1 f||_(0,T) <= (1+T/2)||f||_(0,T).

For the same causal-constant witness c and T>0,
  ||c||_(0,T)^2=T,
  ||S_1 c||_(0,T)^2
    >= integral_0^T (u/2)^2 du = T^3/12.
Hence the EXACT operator on finite-horizon causal L² satisfies

  T/sqrt(12) <= ||S_1||_(L²(0,T)->L²(0,T)) <= 1+T/2.

Therefore the previous source transfer's linear-in-T norm loss,
equivalently quadratic-in-T energy loss, is of SHARP ORDER for all
causal signals. It cannot be removed from an argument using solely the
same sign-free operator norm inequality. This is not a lower bound for
the actual Möbius or Liouville waveform.

Independently of floating point, the exact integral at T=2log D is

  ||S_1 c||_(0,T)^2 =
    2*sum_(d=1..D-1) H_d^2*log((d+1)/d),

since the terminal interval has zero width. Finite numerical diagnostics
at D=2,3,4,8,16,32,64,128,256 satisfy the bound, with D=256 giving
norm ratio about 3.7159 versus the rigorous lower 3.2015.
These finite tests are not the proof.

## 5. Weighted half-line L² operator: the exact sharp constant

For sigma>0 define

  ||f||_(sigma)^2 =
    integral_0^infinity exp(-sigma*u)|f(u)|^2 du.

Conjugate by U_sigma f(u)=exp(-sigma*u/2)f(u) for u>=0,
extended by zero to negative times. This makes the square-delay
operator a causal convolution with the positive discrete measure

  k_sigma=sum_(d>=1) d^(-1-sigma) delta_(2 log d).

Since its total mass is zeta(1+sigma), Young's inequality gives

  ||S_1 f||_(sigma)<=zeta(1+sigma)||f||_(sigma).

This norm bound is SHARP, as follows. Let h_L=1_[0,L]/sqrt L
and f_L(u)=exp(sigma*u/2) h_L(u). Then ||f_L||_(sigma)=1.
For shift amounts 2log d and 2log e, the normalized overlap is

  <h_L(.-2log d),h_L(.-2log e)>
    = max(1-2*abs(log d-log e)/L, 0).

Consequently

  ||S_1 f_L||_(sigma)^2
   =sum_(d,e>=1) d^(-1-sigma)e^(-1-sigma)
      max(1-2*abs(log d-log e)/L, 0).

Every summand tends to d^(-1-sigma)e^(-1-sigma) as L->infinity,
and the entire double sum is absolutely dominated by
zeta(1+sigma)^2. Dominated convergence yields

  lim_(L->infinity)||S_1 f_L||_(sigma)
    =zeta(1+sigma).

Therefore

  ||S_1||_(L²_sigma([0,infinity))) = zeta(1+sigma).

The constant diverges like 1/sigma as sigma->0+.
No damping-independent bound is available for arbitrary signals.
The inverse signed Möbius square-delay operator is separately
bounded for sigma>0 by sum_|mu(d)|/d^(1+sigma);
its exact sharp constant is NOT asserted here.

A finite truncated experiment using d<=120 at sigma=1/2
shows the normalized overlap test ratio increasing from
1.1571 (L=1) to 2.4174 (L=256), approaching the finite
multiplier mass 2.4302. This is diagnostic only.

## 6. Frequency multiplier and its exact applicability boundary

For sigma>0 and f in the half-line weighted L² space, the
ordinary full-line Fourier transform of h=U_sigma f gives

  Fourier[U_sigma S_1 f](xi)
    =zeta(1+sigma+2i*xi) Fourier[h](xi).

This is justified by absolute summability of k_sigma, which permits
termwise Fourier transformation in L² and uniform convergence of
the multiplier. Plancherel provides the exact energy identity

  ||S_1 f||_(sigma)^2
   =(1/(2pi))*integral_R
       |zeta(1+sigma+2i*xi)|^2
       |Fourier[h](xi)|^2 dxi.

Our Fourier convention is integral exp(-i*xi*u) h(u) du,
so the Plancherel factor is 1/(2pi).

For the signed inverse square-delay S_mu, the Euler-product
Dirichlet series on Re(s)>1 gives

  Fourier[U_sigma S_mu f](xi)
    =zeta(1+sigma+2i*xi)^(-1) Fourier[h](xi).

Its invertibility is a consequence of the **known** zero-free
half-plane Re(s)>1 and elementary Möbius inversion, not a
new zero-free-strip result.

For the ORIGINAL waveforms F_mu and F_lambda, pointwise
square-divisor reversal is exact mathematically, and their
spectral relation follows wherever the corresponding weighted
L² memberships hold. Elementary magnitude estimates give
|F_a(u)|<=4 exp(u/2) for u>=0 (a=mu or lambda), so sigma>1
is an unconditional region where both spectral identities
are legitimate. For 0<sigma<=1, finite-horizon equality and
bounded operator transport remain valid, but **global**
weighted L² membership is not known at every sigma: asserting
the global Fourier identity as an L² equality there without a
membership premise would silently assume the RH-facing energy
estimate. No such promotion is made.

## 7. Exact original causal Laplace transform on its initial half-plane

For positive integer n, physical time u, and complex z with
Re(z)>0, direct integration of the unchanged birth response gives

  integral_0^infinity exp(-z*u)r_n(u)du
   =n^(-z-1/2)/(z*(z+1/2)).

The proof integrates the two literal branches only on
u>=log n; it uses the exact zero at birth and no artificial
cutoff. The original waveform grows at most O(exp(u/2)),
so for Re(z)>1/2 the infinite coefficient sum and integral
are absolutely interchangeable. The classical Dirichlet series
then give

  Laplace[F_mu](z)
   =1/(z*(z+1/2)*zeta(z+1/2)),

  Laplace[F_lambda](z)
   =zeta(2*z+1)/(z*(z+1/2)*zeta(z+1/2)).

The scalar ratio is the square-divisor multiplier
zeta(2*z+1), with its original source indices intact.
Both identities are asserted only on Re(z)>1/2.
Extending them via analytic continuation is different from
establishing globally weighted L² energy at every sigma>0;
that additional Hardy-space/growth bridge remains open.

Source comparison: the multiplier is the well-known factorization
of Liouville's Dirichlet series into zeta(2s)/zeta(s), not a novel
zero-free region or a new cancellation result. The reverse-counting
representation and explicit sharpness witness clarify the limitation
of that route, but do not independently prove the RH-strength bound.

## 8. Search-space disposition and obstruction audit

The complete signed Liouville double-Abel average A_N is preserved:
  H_lambda(log N)=D_lambda(log N)+2*A_N.
Kernel positivity, zero boundary faces and finite Fubini do
not allow one to drop the off-diagonal signed pairs.
The original one-sided RH-facing obligation is an UPPER
subexponential estimate on A_N/H_lambda, not the easier
unconditional polynomial LOWER bound.

The reverse-counting saturation graph now has a quantified fork:

  exact Liouville/Moebius square-factor transport
    -> arbitrary-signal sharp norm loss (cannot remove by positivity);
    -> spectral Dirichlet multiplier (exact, but no new spectral-mass bound);
    -> genuinely arithmetic signed correlation/spectral distribution
       estimate (OPEN).

The long-time constant witness does NOT satisfy the actual Möbius
coefficients or prime-delay requirements; it only rules out
a proof that depends on a uniform sign-free operator contraction.
The full one-sided, all-positive-rate arithmetic estimate remains
OPEN, as do RH and the source-specific reverse-counting coefficient
Lean gates. No additional research axiom or unrestricted remainder
has been introduced.

## 9. Exact source evidence and formalization requirements

New source module:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleSquareDelaySharpness.lean`.

Source candidate theorems:
`cutoff_delay_nonneg`;
`cutoff_causal_constant_harmonic`;
`cutoff_causal_constant_ge_half_time`;
`cutoff_causal_constant_le_one_add_half_time`;
`cutoff_causal_exponential_multiplier`;
`finite_square_delay_pickup`.

The two Mathlib harmonic inequalities and
`harmonic_eq_sum_Icc` were inspected against pinned
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Formal compilation has not been performed; exact `Nat.le_floor_iff`,
cast normalization and real/Finset simplification must still
be checked by an authorized clean verifier.

Additional mathematical statements above NOT YET LEAN-FORMALIZED:
finite-horizon sharp L² bounds, exact weighted half-line operator
norm, Fourier multiplier/Plancherel identity, source-specific
Laplace transform, and the full original arithmetic coefficient
square inversion. Their documented proofs are mathematical
dispositions, not purported Lean receipts.

Toolchain: Lean v4.34.1, pinned Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
No native verification dispatch, scheduler, root import or dependency
migration is authorized by the static source.
