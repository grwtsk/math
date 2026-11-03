# Real critical-line reciprocal control and honest finite-height Perron contours for original Möbius

Research date: 2026-11-02. Local attribution: grwtsk contributors, source derivation/formalization assistance OpenAI ChatGPT.
Status: unconditional ORDINARY mathematics, using only elementary zeta/eta positivity, entire-function compactness, and the independently PUBLISHED finite-height Platt-Trudgian (2021) verification where stated. Lean source proof CANDIDATES, not compiled. NO RH theorem, all-positive-rate signed FAR upper, or unbounded-height zero-free assertion is proved or assumed.

## Sources and exact preserved arithmetic target

The continuing original source at grwtsk/math/main is unchanged:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusReciprocalZetaPerronBridge.lean, Git blob 69ae2587f1f6e30adec21b9d7dcf43eeffa2a499: actual pole-regularized reciprocal R(s)=(s-1)/Z1(s), Z1=ZetaAsymptotics.riemannZeta₁, and genuine perronKernel/perronVertical/perronHorizontalCorrection, H_N=(N+1/2)^2.
- MoebiusPerronRightLineExplicit.lean, blob b0566d7c00925f133cda5d53d081d8f79bc61a64: original genuine finiteMertensPrefix N with unconditional ORDINARY right-line Perron error <40, two unported elementary Lean propositions.
- MoebiusFarReducedStructuralFrontier.lean, blob 9f72096be0c6aa30ecb0099a747090a5e30e4c44: original RH-equivalent complete signed FAR source and exact noncircular reductions.

True original integer Möbius coefficients mu(n), zero at squareful n, birth-gated pickupResponseGram and time T_J=J log2 are NEVER replaced. Neither a new model coefficient nor a change of endpoint is proposed. Local Perron contours are analytic ADDRESS operations on the same original Mobius Dirichlet series, not alternate arithmetic observables.

Pinned Mathlib source:
- Mathlib/NumberTheory/Harmonic/ZetaAsymp.lean at Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, Git blob 7ff24a8a04888a98f63f34e0acca92e27e8843b4:
  ZetaAsymptotics.riemannZeta₁_one =1;
  ZetaAsymptotics.differentiable_riemannZeta₁ (entire);
  ZetaAsymptotics.riemannZeta_eq_inv_sub_mul away from s=1.
- Mathlib/NumberTheory/LSeries/Nonvanishing.lean, pinned Git blob 789e0aae6e9378c8f5c8a7a07a905830e20b5433:
  riemannZeta_ne_zero_of_one_le_re, genuine theorem for Re(s)>=1.
None of these asserts RH.

## Theorem A: Unconditional compact rectangle TOUCHING the real critical line

Let Z1(s)=(s-1) zeta(s) with the removable value Z1(1)=1.
For every real sigma in [1/2,2],
  Z1(sigma)>1/4.                                      (A1)
We give a full ordinary proof.

If 1/2<=sigma<1, define eta(sigma)=sum_{n>=1}(-1)^(n-1)n^(-sigma).
The actual alternating Dirichlet eta series converges for sigma>0, with
  eta(sigma)>=1-2^(-sigma)>=1-2^(-1/2)>1/4.
The exact continuation is
  zeta(sigma)=eta(sigma)/(1-2^(1-sigma)).
Since u=1-sigma in (0,1/2], convexity of 2^u on [0,1] gives
  2^u <= (1-u)*2^0+u*2^1 =1+u,
so 0<2^u-1<=u. Therefore
  Z1(sigma)=u*eta(sigma)/(2^u-1)>=eta(sigma)>1/4.
At sigma=1, pinned Z1(1)=1.
For 1<sigma<=2, the original positive Dirichlet series gives
  zeta(sigma)=sum_{n>=1}n^(-sigma)
    >=int_1^infinity x^(-sigma)dx=1/(sigma-1),
hence Z1(sigma)=(sigma-1)zeta(sigma)>=1.
This proves (A1) with no RH.

Because pinned Z1 is ENTIRE, its derivative is continuous. On the
compact box K=[1/2,2]x[-1,1], let
  A=max_{s in K}|Z1'(s)|, a finite nonnegative real.
Choose the actual strictly POSITIVE noncomputational height
  h=1/(8*(1+A)), 0<h<=1/8.
For sigma in [1/2,2] and |t|<=h, integrate the entire derivative
along v↦sigma+i v:
  |Z1(sigma+it)-Z1(sigma)|<=A|t|<=1/8.
The triangle inequality and (A1) yield
  |Z1(sigma+it)|>=1/8.                             (A2)
Since |(sigma+it)-1|<=|sigma-1|+|t|<=9/8,
the TRUE existing reciprocal satisfies
  |R(sigma+it)|=|(s-1)/Z1(s)|<=9.                  (A3)
This is genuine unconditional control touching Re(s)=1/2,
with one h and one numerical reciprocal constant for every
sigma across the box. The value of A and h need not be known
numerically to prove existence. Crucially h does NOT tend to
infinity, nor imply a global ZetaZeroFreeRightOf(1/2).

The new Lean source
  MoebiusReciprocalCriticalCompact.lean
has source proof candidate
  reciprocal_zeta_critical_corridor_of_elementary
which consumes exactly TWO explicit standard-math but
unported Lean Props, RealZetaOneQuarterLowerTarget and
ZetaOneUniformShortVerticalVariationTarget. They are
not axioms or RH-equivalent research input.

## Theorem B: Bound the GENUINE low-frequency original Perron vertical at sqrt scale

For x>=1, take exactly the existing source perronVertical
on the actual line sigma=1/2 at the SAME h:
  V_(1/2,h)(x)=1/(2*pi)int_{-h}^h
           x^(1/2+it)*R(1/2+it)/(1/2+it) dt.
Every integrand has absolute value <=18 sqrt(x),
because |x^(1/2+it)|=sqrt(x), |R|<=9 from (A3),
and |1/2+it|>=1/2.
Norm-of-integral inequality and the length 2h give
  |V_(1/2,h)(x)|<=(18h/pi)*sqrt(x).               (B1)
This directly pays the original analytic Möbius low-frequency
sector at the critical exponent, without RH. It is NOT a
bound on the original complete Mertens prefix or signed FAR
packet. The interval-integral-norm Lean port is the explicit
CriticaLowFrequencyPerronNormTarget (spelling in source:
CriticalLowFrequencyPerronNormTarget).

## Theorem C: Correct LOCAL contour shifting without global RH

Let 0<sigma<=c, H>=0, x>0. If the ACTUAL pole-removed
denominator satisfies
  Z1(s)!=0 for ALL sigma<=Re(s)<=c, |Im(s)|<=H,
then the true source perronKernel(x,s)=x^s R(s)/s is
holomorphic on that CLOSED rectangle. No s=0 is present
since Re(s)>=sigma>0. Complex Cauchy-Goursat on precisely
this rectangle yields the UNCHANGED original contour identity
  perronVertical(x,c,H)
    =perronVertical(x,sigma,H)
      +perronHorizontalCorrection(x,sigma,c,H). (C1)

The existing MoebiusReciprocalZetaPerronBridge.lean obtains
(C1) from a GLOBAL half-plane zero-free premise. The
new MoebiusPerronLocalCriticalWindow.lean implements
the local differentiability and finite rectangular boundary
integration as Lean source proof candidates, with its sole
analytical input nonzero of Z1 *inside that rectangle*.

Theorem A earns (C1) UNCONDITIONALLY for c=2,sigma=1/2,
H=h. This is a valid critical-line contour shift only
for a FIXED short height.

The earlier ORDINARY elementary right-line Perron theorem
still gives for x=N+1/2,H_N=x^2:
  M(N)=V_(2,H_N)(x)+E_N, |E_N|<40.
Apply (C1) on only the low-frequency subrectangle and keep
the other original frequency pieces:
  M(N)
    =V_(1/2,h)(x)
     +Horizontal_(1/2,2,h)(x)
     +[V_(2,H_N)(x)-V_(2,h)(x)]
     +E_N.                                         (C2)

No arithmetic sign has been removed. The first term is
O(sqrt x) by (B1), and the original |E_N|<40.
The two genuine other pieces are UNPAID:
 the horizontal contribution at FIXED h is at best O(x^2)
 from this compact bound; the right-line high-frequency
 piece has no RH-scale cancellation bound.
This identifies the exact obstacle. A visually appealing
local contour movement is NOT an RH proof.

## Theorem D: Much taller but strictly-right-of-half verified region

Published accepted finite theorem (not an all-height hypothesis):
 Dave Platt and Tim Trudgian, "The Riemann hypothesis is true
 up to 3·10^12", Bulletin of the London Mathematical Society
 53 (2021), 792–797, DOI 10.1112/blms.12460.
Rigorous interval arithmetic proves that ALL nontrivial
zeta zeros beta+i gamma with 0<|gamma|<=H0=3e12
have beta=1/2 and are simple.

Combine this with the elementary zero-free real interval,
pinned Mathlib riemannZeta_ne_zero_of_one_le_re (Re>=1),
and conjugate symmetry. For EACH FIXED delta in (0,1/2),
the CLOSED rectangle
  1/2+delta<=Re(s)<=2, |Im(s)|<=H0
contains no zeros of genuine Z1. By entire continuity and
compactness, there exists SOME finite C_delta>=0 such that
  |R(s)|<=C_delta throughout this entire rectangle. (D1)
This is actual unconditional finite-height verification,
NOT the global statement RH. No explicit numerical
C_delta is inferred from the published paper. No uniformity
as delta->0 or H0->infinity is asserted.

The source introduces PublishedFiniteHeightZetaZerosOnHalf
as a precise EXTERNAL, UNIMPORTED Lean Prop (finite height
only), and FiniteHeightCompactReciprocalBoundTarget as
the separate standard complex compactness gate. A Lean
source theorem zetaOne_ne_zero_on_verified_half_shift
uses the existing pinned closed-half-plane nonvanishing
and exact zeta factorization to derive the true rectangle
nonzero from this finite result; another proof candidate
packages the finite constant. Neither asserts RH.

The new local contour theorem (C1) therefore applies also
on sigma=1/2+delta, c=2, 0<=H<=H0 without ever importing
ZetaZeroFreeRightOf(1/2) or a global high-height strip.

## Concrete conditional finite-range Mertens corollary with every term preserved

For any fixed delta in (0,1/2), put sigma=1/2+delta.
Let C_delta be the finite genuine reciprocal bound (D1).
Take every integer N>=1 for which the ORIGINAL
half-integer Perron height
  H_N=(N+1/2)^2<=H0.
Apply the exact local rectangular shift to the ORIGINAL
Perron representation. For H_N>=1,
  |V_(sigma,H_N)(x)| <=
    (C_delta/pi)*x^sigma*(1/sigma+log H_N)
    <=(C_delta/pi)*x^sigma*(1/sigma+log H0).
This follows by splitting the t integral at |t|=1
and using |sigma+it|>=sigma for |t|<=1
and >=|t| for |t|>=1.
The two horizontal contour edges have integrands <=
C_delta*x^2/H_N (since |sigma'+iH_N|>=H_N);
their total length is 2*(2-sigma). Thus
  |Horizontal_(sigma,2,H_N)(x)|
    <=C_delta*(2-sigma)/pi*(x^2/H_N)
    =C_delta*(2-sigma)/pi.
Together with the original <40 Perron truncation error:
  |M(N)|<=40 + (C_delta/pi)*
      [x^(1/2+delta)*(1/(1/2+delta)+log H0)
        +(3/2-delta)],   x=N+1/2.               (D2)

This is a genuine finite-domain, sourced, near-critical
Perron estimate without global RH, although its unknown
C_delta makes it nonnumerical. N is bounded by
N+1/2<=sqrt(H0)≈1.732e6, and finite range by itself
cannot yield asymptotic RH-scale cancellation.

## Sharp no-go: critical-line zeros make ALL-height uniformity impossible

The finite verification includes the first critical-line
zero near gamma=14.134725, and classical Hardy's theorem
gives infinitely many such zeros. At such a zero
rho=1/2+i gamma, Z1(rho)=0 but rho-1!=0.
Consequently the TRUE R(s)=(s-1)/Z1(s) becomes unbounded
as s approaches rho through nonzeros. Thus there can be
NO finite bound uniform all along Re(s)=1/2.
Even under RH, the contour method must stay a positive
distance to the RIGHT of the critical line near its zeros,
or use explicit residue/indentation accounting.
The fixed-height C_delta from (D1) necessarily loses
uniformity as delta->0 whenever its height range
includes such a zero.

For the user's request the true missing analytic supplier
is not local control, but uniform quantitative control
for arbitrarily large Perron heights H_N=(N+1/2)^2
on lines sigma=1/2+delta for each fixed delta>0,
together with valid zero-free contour deformation.
A global zero-free Re(s)>1/2 is the exact RH
assertion. It is not imported or proved here.
No different Mobius argument giving the complete FAR
every-positive-rate upper was discovered. The full
FarOriginalEveryPositiveRateUpperTarget and canonical RH
remain OPEN.

## Verification and attribution

New strictly additive source files:
 - MoebiusReciprocalCriticalCompact.lean
 - MoebiusPerronLocalCriticalWindow.lean
plus this review and a passive source-bound verification target.
The local mathematical content is proved in the review
from independent accepted standard facts and a published
finite-height theorem; Lean versions are source candidates.
No authored sorry, admit, axiom, native_decide, unsafe
or opaque oracle. No existing Mobius coefficient, causal
response, original source masks, pinned Mathlib, root
import, CI or external repo is modified.

User explicitly deferred compilation. Parser, target
type/elaboration, fresh independent Lean kernel replay,
transitive axiom/native/opaque audit remain NOT_RUN.
No Noe automation, native runner or scheduler dispatched.

References:
 - DLMF §25.2: https://dlmf.nist.gov/25.2 for zeta pole and Dirichlet series.
 - Wolfram MathWorld Dirichlet Eta:
   https://mathworld.wolfram.com/DirichletEtaFunction.html
   for eta(s)=(1-2^(1-s))zeta(s), Re(s)>0.
 - Platt and Trudgian (2021), Bulletin LMS:
   https://doi.org/10.1112/blms.12460
 - Mathlib pinned source:
   https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/Harmonic/ZetaAsymp.lean
   https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean
 - Clay Mathematics Institute:
   https://www.claymath.org/millennium-problems/
